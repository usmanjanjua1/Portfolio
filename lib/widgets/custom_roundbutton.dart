import 'package:flutter/material.dart';

class CustomTextButton extends StatefulWidget {
  final EdgeInsetsGeometry padding;
  final String text;
  final VoidCallback onTab;
  final Color color;
  final Color? backgroundColor;
  final double fontSize;
  const CustomTextButton(
      {super.key,
      required this.padding,
      required this.text,
      required this.onTab,
      required this.color,
      required this.fontSize,
      this.backgroundColor});
  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  Color textColor = Colors.white;
  Color hoverColor = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      color: widget.backgroundColor ?? Colors.transparent,
      child: InkWell(
        hoverColor: Colors.grey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(20),
        onTap: widget.onTab,
        child: Padding(
          padding: widget.padding,
          child: Text(
            widget.text,
            style: TextStyle(fontSize: widget.fontSize, color: widget.color),
          ),
        ),
      ),
    );
  }
}
