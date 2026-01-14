import 'package:flashcards/ui/theme/theme_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonalInfoFlexibleSpace extends StatelessWidget {
  const PersonalInfoFlexibleSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      background: Container(
        margin: EdgeInsets.only(top: 105),
        child: Column(
          children: [
            Stack(
              children: [
                Icon(
                  CupertinoIcons.profile_circled,
                  size: 100,
                  color: context.colors.onPrimary,
                ),
                // Positioned(
                //   bottom: bottomSpacingOnFloatingButtons,
                //   right: 0,
                //   child: Container(
                //     width: 35,
                //     height: 35,
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(100),
                //       color: Colors.indigo[400],
                //     ),
                //     child: const Icon(
                //       Icons.edit,
                //       color: Colors.white,
                //       size: 20,
                //     ),
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
