import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flashcards/config/router/router.dart';
import 'package:flashcards/ui/widgets/success_template_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flashcards/l10n/app_localizations.dart';

@RoutePage()
class UpdateEmailSuccessfulPage extends StatelessWidget {
  const UpdateEmailSuccessfulPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SuccessTemplatePage(
      topAsset: Lottie.asset(
        'assets/lottie/email_plane_animation.json',
        width: 250,
        height: 250,
        repeat: false,
      ),
      textString: AppLocalizations.of(context)!.updateEmailSuccessfulPage_text,
      buttonText:
          AppLocalizations.of(context)!.updateEmailSuccessfulPage_button,
      redirectTo: () => context.router.replaceAll([LoginRoute()]),
    );
  }
}
