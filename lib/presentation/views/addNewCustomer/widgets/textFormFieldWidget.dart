import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    Key? key,
    required this.snapshot,
    required this.onChanged,
    this.suffixIcon,
    required this.hintText,
    required this.labelText,
    this.enabled,
    this.prefixText,
  }) : super(key: key);
  final AsyncSnapshot snapshot;
  final ValueChanged<String> onChanged;
  final Widget? suffixIcon;
  final String? hintText;
  final String? labelText;
  final bool? enabled;
  final String? prefixText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled ?? true,
      onChanged: onChanged,
      maxLength: 255,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixText: prefixText,
        errorText: snapshot.hasError ? "${snapshot.error}" : null,
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: snapshot.hasError
                ? Theme.of(context).errorColor
                : Theme.of(context).primaryColor,
          ),
        ),
        hintText: hintText,
        counterText: '',
        labelText: labelText,
        errorStyle:
            TextStyle(color: Theme.of(context).errorColor, fontSize: 10.0),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
        alignLabelWithHint: true,
        contentPadding: const EdgeInsetsDirectional.only(
            top: 0, start: 8, bottom: 0, end: 0),
      ),
      autovalidateMode: AutovalidateMode.disabled,
      validator: (value) {
        return null; // Return null to handle error manually.
      },
      keyboardType: TextInputType
          .text, // inputFormatters: <TextInputFormatter>[ FilteringTextInputFormatter.allow( RegExp(r'^[0-9]+$')), ],
    );
  }
}
