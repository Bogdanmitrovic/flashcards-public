import 'package:flashcards/ui/theme/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef BlocStateBuilder<T> = Widget Function(BuildContext, T);

class BlocButtonSecondary<B extends BlocBase<S>, S> extends StatelessWidget {
  final String textString;
  final VoidCallback onPressed;
  final bool Function(S) isLoadingState;

  const BlocButtonSecondary({
    super.key,
    required this.textString,
    required this.onPressed,
    required this.isLoadingState,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<B, S>(
      builder: (context, state) {
        bool isLoading = isLoadingState(state);
        return ElevatedButton(
          onPressed: isLoading ? null : onPressed,
          child:
              isLoading
                  ? SizedBox(
                    height: 24,
                    width: 24,
                    child: CircularProgressIndicator(color: context.colors.primary),
                  )
                  : Text(textString),
        );
      },
    );
  }
}
