import 'package:flashcards/ui/widgets/core/loading_overlay_with_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';

class LoadingOverlayListener<B extends StateStreamable<S>, S>
    extends StatelessWidget {
  final bool Function(S state) isLoading;
  final String loadingText;
  final Widget child;

  const LoadingOverlayListener({
    super.key,
    required this.isLoading,
    required this.child,
    this.loadingText = "",
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<B, S>(
      listenWhen:
          (previous, current) => isLoading(previous) != isLoading(current),
      listener: (context, state) {
        if (isLoading(state)) {
          context.loaderOverlay.show(
            widgetBuilder:
                (_) => LoadingOverlayWithText(textString: loadingText),
          );
        } else {
          context.loaderOverlay.hide();
        }
      },
      child: child,
    );
  }
}
