import 'package:flutter/material.dart';

class DrawerItemWidget extends StatelessWidget {
  const DrawerItemWidget(
      {required this.itemText, required this.iconData, this.onTap});

  final String itemText;
  final IconData iconData;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      child: SizedBox(
        height: 64,
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 16),
          child: Align(
            alignment: AlignmentDirectional.centerStart,
            child: Row(children: [
              Icon(iconData, color: Theme.of(context).colorScheme.onSurface),
              const SizedBox(width: 32),
              Text(
                itemText,
                style: Theme.of(context).primaryTextTheme.bodyText2,
              )
            ]),
          ),
        ),
      ),
    );
  }
}
