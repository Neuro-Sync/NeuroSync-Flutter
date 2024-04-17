import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  final double value;
  final double min;
  final double max;
  final Color activeColor;
  final ValueChanged<double> onChanged;

  const CustomSlider({
    Key? key,
    required this.value,
    required this.min,
    required this.max,
    required this.activeColor,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double _currentValue = 0.0; // Initialize with current value

  @override
  void initState() {
    super.initState();
    _currentValue = widget.value; // Update state on widget changes
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Slider(
            value: _currentValue,
            min: widget.min,
            max: widget.max,
            activeColor: widget.activeColor,
            inactiveColor: Colors.grey.shade400, // Inactive color
            thumbColor: widget.activeColor, // Match active color
            onChanged: (double value) {
              setState(() {
                _currentValue = value;
                widget.onChanged(value); // Pass updated value to callback
              });
            },
          ),
        ),
        // Text(
        //   _currentValue.toStringAsFixed(1), // Display value with 1 decimal
        //   style: const TextStyle(fontSize: 16.0), // Adjust font as needed
        // ),
      ],
    );
  }
}
