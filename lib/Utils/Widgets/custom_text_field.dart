import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  final String? hintText, text;
  final bool? obscureText, enabled, isDense;
  final Function? onChanged;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final int? maxLength;
  final int? maxlines;
  final TextInputAction? textInputAction;
  final Color? textColor;
  final Color? fillColor;
  final String? error;
  final Function? onEditComplete;
  final List<TextInputFormatter>? textInputFormatter;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  const CustomTextField({
    Key? key,
    this.textInputFormatter,
    this.maxLength,
    this.onEditComplete,
    this.error,
    this.textColor,
    this.textInputAction,
    this.maxlines,
    this.text,
    this.hintText,
    this.obscureText = false,
    this.onChanged,
    this.enabled,
    this.keyboardType,
    this.suffixIcon,
    this.controller,
    this.prefixIcon,
    this.fillColor,
    this.isDense = false,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  OutlineInputBorder outlineInputBorder = const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black12),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 6, 0, 6),
      child: TextFormField(
        //onEditingComplete: onEditComplete!,
        maxLines: widget.maxlines,
        style: TextStyle(color: widget.textColor),
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText!,
        maxLength: widget.maxLength,
        //onChanged: onChanged,
        enabled: widget.enabled ?? true,
        inputFormatters: widget.textInputFormatter,
        controller: widget.controller,
        textInputAction: widget.textInputAction ?? TextInputAction.done,
        decoration: InputDecoration(
          fillColor: widget.fillColor,
          filled: true,
          counterText: '',
          isDense: widget.isDense,
          errorText: widget.error,
          labelStyle: const TextStyle(color: Colors.grey),
          enabledBorder: outlineInputBorder,
          labelText: widget.hintText,
          hintStyle: const TextStyle(color: Colors.white),
          border: outlineInputBorder,
          suffixIcon: widget.suffixIcon,
          prefixIcon: widget.prefixIcon,
        ),
      ),
    );
  }
}
