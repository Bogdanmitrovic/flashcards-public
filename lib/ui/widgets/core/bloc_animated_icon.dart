import 'package:flashcards/bloc/authorization/auth/auth_bloc.dart';
import 'package:flashcards/bloc/authorization/auth/auth_state.dart';
import 'package:flashcards/config/router/router.dart';
import 'package:flashcards/ui/theme/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocAnimatedIcon<B extends StateStreamable<S>, S> extends StatefulWidget {
  final IconData icon;
  final bool Function(S state) isSuccessState;
  final bool Function(S state) isErrorState;

  const BlocAnimatedIcon({
    super.key,
    required this.icon,
    required this.isErrorState,
    required this.isSuccessState,
  });

  @override
  State<BlocAnimatedIcon> createState() => _BlocAnimatedIconState<B, S>();
}

enum IconState { normal, success, error }

class _BlocAnimatedIconState<B extends StateStreamable<S>, S>
    extends State<BlocAnimatedIcon<B, S>>
    with TickerProviderStateMixin {
  late AnimationController _shakeController;
  late AnimationController _bounceController;
  late Animation<double> _shakeAnimation;
  late Animation<double> _bounceAnimation;
  IconState _iconState = IconState.normal;

  @override
  void initState() {
    super.initState();

    _shakeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _bounceController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    // Shake animation (small left-right movement)
    _shakeAnimation = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: 0, end: -10), weight: 1),
      TweenSequenceItem(tween: Tween(begin: -10, end: 10), weight: 2),
      TweenSequenceItem(tween: Tween(begin: 10, end: -5), weight: 2),
      TweenSequenceItem(tween: Tween(begin: -5, end: 5), weight: 2),
      TweenSequenceItem(tween: Tween(begin: 5, end: 0), weight: 1),
    ]).animate(
      CurvedAnimation(parent: _shakeController, curve: Curves.easeInOut),
    );

    // Bounce animation (slight jump)
    _bounceAnimation = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: 1, end: 0.7), weight: 1),
      TweenSequenceItem(tween: Tween(begin: 0.7, end: 1.2), weight: 1),
      TweenSequenceItem(tween: Tween(begin: 1.2, end: 0.9), weight: 1),
      TweenSequenceItem(tween: Tween(begin: 0.9, end: 1), weight: 1),
    ]).animate(
      CurvedAnimation(parent: _bounceController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _shakeController.dispose();
    _bounceController.dispose();
    super.dispose();
  }

  void _triggerShakeAnimation({bool withColor = true}) {
    if (withColor) {
      //_iconColor = context.colors.error;
      _iconState = IconState.error;
    }
    _shakeController.reset();
    _shakeController.forward();
  }

  void _triggerBounceAnimation({bool withColor = true}) {
    if (withColor) {
      //_iconColor = context.customColors.success;
      _iconState = IconState.success;
    }
    _bounceController.reset();
    _bounceController.forward();
  }

  Color _getIconColor(BuildContext context) {
    if (_iconState == IconState.error) return context.colors.error;
    if (_iconState == IconState.success) return context.customColors.success;
    return context.colors.primary;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<B, S>(
      listener: (context, state) {
        if (widget.isErrorState(state)) {
          _triggerShakeAnimation();
        } else if (widget.isSuccessState(state)) {
          _triggerBounceAnimation();
        } else {
          //_iconColor = context.colors.primary;
          _iconState = IconState.normal;
        }
      },
      child: GestureDetector(
        onTap: () => _triggerBounceAnimation(withColor: false),
        onDoubleTap: () => _triggerShakeAnimation(withColor: false),
        child: AnimatedBuilder(
          animation: Listenable.merge([_shakeController, _bounceController]),
          builder: (context, child) {
            final iconColor = _getIconColor(context);

            return Transform.translate(
              offset: Offset(_shakeAnimation.value, 0), // Shake effect
              child: Transform.scale(
                scale: _bounceAnimation.value, // Bounce effect
                child: Icon(widget.icon, size: 100, color: iconColor),
              ),
            );
          },
        ),
      ),
    );
  }
}
