import 'package:flashcards/bloc/osces/update_osce/forms/check_form/check_form.dart';
import 'package:flashcards/ui/theme/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CheckInputWidget extends StatelessWidget {
  final int cIndex;
  final CheckForm cForm;
  final void Function(bool?) onChanged;
  final VoidCallback onRemoveCheck;

  const CheckInputWidget({
    super.key,
    required this.cForm,
    required this.cIndex,
    required this.onChanged,
    required this.onRemoveCheck,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      color: context.colors.surfaceContainerHigh,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Tekst check-a
            TextFormField(
              minLines: 1,
              maxLines: 4,
              controller: cForm.controller,
              decoration: const InputDecoration(labelText: 'Check Text'),
            ),
            const SizedBox(height: 12),

            // Drugi red: title + score + delete
            Row(
              children: [
                // Title toggle
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Checkbox(value: cForm.isTitle, onChanged: onChanged),
                    const Text('Title'),
                  ],
                ),

                const Spacer(),

                // Score input
                if (!cForm.isTitle)
                  SizedBox(
                    width: 100,
                    child: TextFormField(
                      controller: cForm.scoreController,
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: const InputDecoration(
                        labelText: 'Score',
                        isDense: true,
                      ),
                    ),
                  ),

                IconButton(
                  icon: Icon(Icons.delete, color: context.colors.error),
                  tooltip: 'Remove Check',
                  onPressed: onRemoveCheck,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
