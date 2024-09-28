import 'package:flutter/material.dart';

class QTextField extends StatefulWidget {
  final String label;
  final IconData? suffixIcon;
  final Function(String) onSubmitted;
  final bool? obsecureText;
  const QTextField(
      {Key? key,
      required this.label,
      required this.onSubmitted,
      this.suffixIcon,
      this.obsecureText = false})
      : super(key: key);

  @override
  State<QTextField> createState() => _QTextFieldState();
}

class _QTextFieldState extends State<QTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42.0,
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(
            11.0,
          ),
        ),
        border: Border.all(
          width: 1.5,
          color: Colors.grey[900]!,
        ),
      ),
      child: Center(
        child: TextField(
          obscureText: widget.obsecureText!,
          style: TextStyle(
            color: Colors.grey[800],
          ),
          decoration: InputDecoration(
            hintText: widget.label,
            suffixIcon: Icon(
              widget.suffixIcon ?? Icons.email,
              color: Colors.grey[600],
            ),
            border: InputBorder.none,
            hintStyle: TextStyle(
              color: Colors.grey[600],
            ),
          ),
          onSubmitted: (value) {
            widget.onSubmitted(value);
          },
        ),
      ),
    );
  }
}
