import 'package:flashcards/ui/theme/theme_extensions.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final bool obscureText;
  final String? hintText;
  final String? labelText;
  final TextEditingController? textEditingController;
  final String? errorText;
  final bool enabled;
  final int? maxLines;
  final int? minLines;
  final Widget Function(BuildContext, EditableTextState)? contextMenuBuilder;

  const MyTextField({
    super.key,
    this.enabled = true,
    this.obscureText = false,
    this.hintText,
    this.labelText,
    this.textEditingController,
    this.errorText,
    this.minLines,
    this.maxLines,
    this.contextMenuBuilder,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  late bool _obscure;

  @override
  void initState() {
    super.initState();
    _obscure = widget.obscureText;
  }

  void _toggleObscure() {
    setState(() {
      _obscure = !_obscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Widget eyeSuffixIcon = IconButton(
      icon: Icon(
        _obscure ? Icons.visibility_off : Icons.visibility,
        color: context.colors.onSurfaceVariant,
        size: 20,
      ),
      onPressed: _toggleObscure,
    );
    final Widget errorSuffixIcon = Icon(
      Icons.error,
      color: context.colors.error,
    );

    return TextField(
      enabled: widget.enabled,
      obscureText: _obscure,
      controller: widget.textEditingController,
      maxLines: widget.obscureText ? 1 : widget.maxLines ?? 1,
      minLines: widget.obscureText ? 1 : widget.minLines,
      contextMenuBuilder: widget.contextMenuBuilder,
      keyboardType:
          widget.obscureText ? TextInputType.text : TextInputType.multiline,
      decoration: InputDecoration(
        errorText: widget.errorText,
        labelText: widget.labelText,
        hintText: widget.hintText,
        suffixIcon:
            widget.obscureText
                ? eyeSuffixIcon
                : widget.errorText != null
                ? errorSuffixIcon
                : null,
      ),
    );
  }
}
