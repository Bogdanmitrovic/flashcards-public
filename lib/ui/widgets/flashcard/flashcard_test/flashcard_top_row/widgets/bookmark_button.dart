import 'package:flashcards/ui/theme/theme_extensions.dart';
import 'package:flutter/material.dart';

class BookmarkButton extends StatelessWidget {
  final bool isBookmarked;
  final VoidCallback? onToggleBookmark;

  const BookmarkButton({
    super.key,
    required this.isBookmarked,
    required this.onToggleBookmark,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onToggleBookmark,
      icon: Icon(
        isBookmarked ? Icons.bookmark : Icons.bookmark_border,
        color: context.colors.primaryContainer,
      ),
    );
  }
}
