import 'package:flutter/material.dart';

class GlobalTextField extends StatefulWidget {
  final String? initialValue;
  final TextInputType? inputType;
  final double? height;
  final TextEditingController controller;
  final bool isObscure;
  final String hintText;
  final void Function(String)? onChanged;

  const GlobalTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.initialValue,
    this.inputType,
    this.height,
    this.isObscure = false,
    this.onChanged,
  }) : super(key: key);

  @override
  State<GlobalTextField> createState() => _GlobalTextFieldState();
}

class _GlobalTextFieldState extends State<GlobalTextField> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // initialValue: widget.initialValue,
      controller: widget.controller,
      // style: const TextStyle(color: Colors.black, fontSize: 14),
      maxLines: 1,
      textAlign: TextAlign.start,
      obscureText: _passwordVisible,
      keyboardType: widget.inputType,
      decoration: InputDecoration(
        // errorBorder: ,
        // errorText: "hahahah",
        hintText: widget.hintText,

        // hintStyle: const TextStyle(color: Colors.black),
        suffixIcon: IconButton(
          padding: EdgeInsets.zero,
          icon: NewWidget(widget: widget, passwordVisible: _passwordVisible),
          onPressed: () {
            if (widget.isObscure == true) {
              setState(() => _passwordVisible = !_passwordVisible);
            }
          },
        ),

        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onChanged: widget.onChanged,
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
    required this.widget,
    required bool passwordVisible,
  })  : _passwordVisible = passwordVisible,
        super(key: key);

  final GlobalTextField widget;
  final bool _passwordVisible;

  @override
  Widget build(BuildContext context) {
    return Icon(
      widget.isObscure
          ? _passwordVisible
              ? Icons.visibility_off
              : Icons.visibility
          : null,
      // color: Theme.of(context).primaryColorDark,
    );
  }
}
