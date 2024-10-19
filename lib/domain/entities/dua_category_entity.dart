import 'package:equatable/equatable.dart';

class DuaCategoryEntity extends Equatable {
  final int id;
  final int catId;
  final String catNameBn;
  final String catNameEn;
  final int numberOfSubcat;
  final int numberOfDua;
  final String catIcon;

  const DuaCategoryEntity({
    required this.id,
    required this.catId,
    required this.catNameBn,
    required this.catNameEn,
    required this.numberOfSubcat,
    required this.numberOfDua,
    required this.catIcon,
  });

  factory DuaCategoryEntity.empty() {
    return DuaCategoryEntity(
      id: 0,
      catId: 0,
      catNameBn: '',
      catNameEn: '',
      numberOfSubcat: 0,
      numberOfDua: 0,
      catIcon: '',
    );
  }

  @override
  List<Object?> get props => [
        id,
        catId,
        catNameBn,
        catNameEn,
        numberOfSubcat,
        numberOfDua,
        catIcon,
      ];

  DuaCategoryEntity copyWith({
    int? id,
    int? catId,
    String? catNameBn,
    String? catNameEn,
    int? numberOfSubcat,
    int? numberOfDua,
    String? catIcon,
  }) {
    return DuaCategoryEntity(
      id: id ?? this.id,
      catId: catId ?? this.catId,
      catNameBn: catNameBn ?? this.catNameBn,
      catNameEn: catNameEn ?? this.catNameEn,
      numberOfSubcat: numberOfSubcat ?? this.numberOfSubcat,
      numberOfDua: numberOfDua ?? this.numberOfDua,
      catIcon: catIcon ?? this.catIcon,
    );
  }
}
