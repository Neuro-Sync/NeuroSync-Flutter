import 'package:flutter/material.dart';

import '../theming/app_colors.dart';

class CustomSwitch extends StatefulWidget {
  final void Function(bool isToggled) onToggled;
  final bool? initialToggle;
  const CustomSwitch(
      {Key? key, required this.onToggled, this.initialToggle = false})
      : super(key: key);

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  late bool isToggled;
  double size = 25;
  double innerPadding = 0;

  @override
  void initState() {
    isToggled = widget.initialToggle!;
    innerPadding = size / 10;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() => isToggled = !isToggled);
        widget.onToggled(isToggled);
      },
      onPanEnd: (b) {
        setState(() => isToggled = !isToggled);
        widget.onToggled(isToggled);
      },
      child: AnimatedContainer(
        height: size,
        width: size * 2,
        padding: EdgeInsets.all(innerPadding),
        alignment: isToggled
            ? AlignmentDirectional.centerStart
            : AlignmentDirectional.centerEnd,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: isToggled ? AppColors.switchColor : Colors.grey.shade100,
        ),
        child: Container(
          width: size - innerPadding * 2,
          height: size - innerPadding * 2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: isToggled ? Colors.white : Colors.grey.shade500,
          ),
        ),
      ),
    );
  }
}
