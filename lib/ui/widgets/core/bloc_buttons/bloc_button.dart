import 'package:flashcards/ui/theme/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef BlocStateBuilder<T> = Widget Function(BuildContext, T);

class BlocButton<B extends BlocBase<S>, S> extends StatelessWidget {
  final String textString;
  final void Function(BuildContext context)? onPressed;
  final bool Function(S state) isLoadingState;
  final bool Function(S state)? isDisabledState;
  final double? fontSize;
  final double? width;
  final double progressSize;
  final double? height;
  final FontWeight fontWeight;
  final bool showSpinner;
  final Color? backgroundColor;

  const BlocButton({
    super.key,
    required this.textString,
    required this.onPressed,
    required this.isLoadingState,
    this.backgroundColor,
    this.isDisabledState,
    this.fontSize = 16,
    this.width = double.infinity,
    this.height = 60,
    this.fontWeight = FontWeight.bold,
    this.progressSize = 30,
    this.showSpinner = true,
  });

  factory BlocButton.small({
    required String textString,
    required void Function(BuildContext context)? onPressed,
    required bool Function(S state) isLoadingState,
    final bool Function(S state)? isDisabledState,
    double? width,
    Color? backgroundColor,
  }) {
    return BlocButton(
      textString: textString,
      onPressed: onPressed,
      isLoadingState: isLoadingState,
      fontSize: null,
      width: width,
      height: null,
      isDisabledState: isDisabledState,
      fontWeight: FontWeight.normal,
      progressSize: 24,
      backgroundColor: backgroundColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<B, S>(
      builder: (context, state) {
        bool isLoading = isLoadingState(state);
        bool isDisabled = isDisabledState?.call(state) ?? false;
        return SizedBox(
          width: width,
          height: height,
          child: FilledButton(
            style: FilledButton.styleFrom(backgroundColor: backgroundColor),
            onPressed:
                isLoading || isDisabled ? null : () => onPressed?.call(context),
            child:
                isLoading && showSpinner
                    ? SizedBox(
                      width: progressSize,
                      height: progressSize,
                      child: CircularProgressIndicator(color: context.colors.primary),
                    )
                    : Text(
                      textString,
                      style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: fontWeight,
                      ),
                    ),
          ),
        );
      },
    );
  }
}
