import 'package:flashcards/ui/widgets/core/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocTextField<B extends StateStreamable<S>, S> extends StatelessWidget {
  final bool obscureText;
  final String? hintText;
  final String? labelText;
  final TextEditingController? textEditingController;
  final bool Function(S state)? isEnabledState;
  final String? Function(S state) errorSelector;
  final bool enabled;
  final int? maxLines;
  final int? minLines;
  final Widget Function(BuildContext, EditableTextState)? contextMenuBuilder;

  const BlocTextField({
    super.key,
    required this.errorSelector,
    this.isEnabledState,
    this.obscureText = false,
    this.hintText,
    this.labelText,
    this.textEditingController,
    this.enabled = true,
    this.maxLines,
    this.minLines,
    this.contextMenuBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<B, S>(
      builder: (context, state) {
        final errorText = errorSelector(state);
        bool formEnabled = enabled;
        if (enabled) {
          formEnabled = isEnabledState?.call(state) ?? true;
        }

        return MyTextField(
          enabled: formEnabled,
          obscureText: obscureText,
          hintText: hintText,
          labelText: labelText,
          textEditingController: textEditingController,
          errorText: errorText,
          minLines: minLines,
          maxLines: maxLines,
          contextMenuBuilder: contextMenuBuilder,
        );
      },
    );
  }
}
