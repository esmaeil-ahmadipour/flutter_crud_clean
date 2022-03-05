import 'package:flutter/material.dart';

class SelectDoBWidget extends StatefulWidget {
  const SelectDoBWidget({
    Key? key,
    required this.selectedDoBCallback,
    required this.title,
  }) : super(key: key);
  final ValueChanged<int?> selectedDoBCallback;
  final String? title;

  @override
  State<SelectDoBWidget> createState() => _SelectDoBWidgetState();
}

class _SelectDoBWidgetState extends State<SelectDoBWidget> {
  String? dateOnUi;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: const EdgeInsetsDirectional.only(end: 8.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).primaryColor,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: GestureDetector(
        onTap: () async {
          DateTime init = DateTime.now();
          DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: init,
              firstDate: DateTime(DateTime.now().year - 200),
              lastDate: DateTime(DateTime.now().year + 1));

          if (pickedDate != null) {
            dateOnUi =
                "  ${pickedDate.year} - ${pickedDate.month} - ${pickedDate.day}";
            widget.selectedDoBCallback(
                DateTime.tryParse(pickedDate.toIso8601String())!
                    .millisecondsSinceEpoch);
          } else {
            widget.selectedDoBCallback(null);
            dateOnUi = null;
          }

          setState(() {});
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              dateOnUi ?? "  ${widget.title}",
              style: const TextStyle(fontSize: 16.0),
            ),
            const Icon(Icons.calendar_today)
          ],
        ),
      ),
    );
  }
}
