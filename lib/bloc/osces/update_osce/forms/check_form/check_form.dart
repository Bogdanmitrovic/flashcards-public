import 'package:flashcards/domain/models/osce/question/check/check.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_form.freezed.dart';

@freezed
abstract class CheckForm with _$CheckForm {
  const factory CheckForm({
    required TextEditingController controller,
    required TextEditingController scoreController,
    @Default(false) bool isTitle,
  }) = _CheckForm;

  factory CheckForm.fromCheck(Check check) {
    return CheckForm(
      controller: TextEditingController(text: check.text),
      scoreController: TextEditingController(text: check.score.toString()),
      isTitle: check.isTitle,
    );
  }

  factory CheckForm.initial() {
    return CheckForm(
      controller: TextEditingController(),
      scoreController: TextEditingController(text: "1"),
    );
  }
}

extension CheckFormX on CheckForm {
  Check toCheck(int index) => Check(
    text: controller.text,
    isTitle: isTitle,
    isChecked: false,
    index: index,
    score: isTitle ? 0 : int.parse(scoreController.text),
  );
}
