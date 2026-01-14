import 'package:auto_route/auto_route.dart';
import 'package:flashcards/config/router/router.dart';
import 'package:flashcards/ui/widgets/success_template_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flashcards/l10n/app_localizations.dart';

@RoutePage()
class DeleteAccountSuccessfulPage extends StatelessWidget {
  const DeleteAccountSuccessfulPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SuccessTemplatePage(
      topAsset: Lottie.asset(
        'assets/lottie/plane_animation.json',
        width: 250,
        height: 250,
      ),
      textString:
          AppLocalizations.of(context)!.deleteAccountSuccessfulPage_message,
      buttonText: AppLocalizations.of(context)!.basicText_goToLogin,
      redirectTo: () => context.router.replaceAll([LoginRoute()]),
    );
  }
}
