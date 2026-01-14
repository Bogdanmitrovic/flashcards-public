import 'package:equatable/equatable.dart';

class PackProgress extends Equatable {
  final String packId;
  final String packName;
  final DateTime firstOpenedAt;
  final DateTime lastOpenedAt;

  const PackProgress({
    required this.packId,
    required this.packName,
    required this.firstOpenedAt,
    required this.lastOpenedAt,
  });

  @override
  List<Object?> get props => [packId, packName, firstOpenedAt, lastOpenedAt];
}
