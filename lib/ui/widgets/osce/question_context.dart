import 'package:flashcards/bloc/osces/osce/osce_bloc.dart';
import 'package:flashcards/bloc/osces/osce/osce_event.dart';
import 'package:flashcards/bloc/osces/osce/osce_state.dart';
import 'package:flashcards/domain/models/osce/question/question.dart';
import 'package:flashcards/ui/widgets/core/images/image_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuestionContext extends StatelessWidget {
  const QuestionContext({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<OsceBloc, OsceState, (Question, bool)>(
      selector: (state) {
        if (state is! OsceLoaded) {
          throw Exception("Osce is not in loaded state");
        }

        final currentQuestion = state.currentQuestion;
        final isShown = state.revealedQuestions[currentQuestion.id] == true;

        return (currentQuestion, isShown);
      },
      builder: (context, tuple) {
        final question = tuple.$1;
        final isShown = tuple.$2;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question.text,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            Center(
              child: ImagePreview(
                downloadUrl: question.imageDownloadUrl,
                height: 250,
                onTap: () => onUrlTap(context, question.imageDownloadUrl!),
                showTextWhenEmpty: false,
              ),
            ),
            if (isShown) const SizedBox(height: 16),
            if (isShown)
              Column(
                children:
                    question.checks.asMap().entries.map((entry) {
                      final index = entry.key;
                      final check = entry.value;
                      return Row(
                        children: [
                          if (check.isTitle) ...[
                            Text(
                              check.text,
                              style: TextTheme.of(context).titleMedium
                                  ?.copyWith(fontWeight: FontWeight.w800),
                            ),
                            SizedBox(height: 30),
                          ] else
                            Expanded(
                              child: CheckboxListTile(
                                title: Text(check.text),
                                value: check.isChecked,
                                onChanged: (_) {
                                  context.read<OsceBloc>().add(
                                    ToggleCheck(checkIndex: index),
                                  );
                                },
                              ),
                            ),
                        ],
                      );
                    }).toList(),
              ),
          ],
        );
      },
    );
  }
}
