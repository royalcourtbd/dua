// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_service.dart';

// ignore_for_file: type=lint
class $CategoryTable extends Category
    with TableInfo<$CategoryTable, CategoryData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoryTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _catIdMeta = const VerificationMeta('catId');
  @override
  late final GeneratedColumn<int> catId = GeneratedColumn<int>(
      'cat_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _catNameBnMeta =
      const VerificationMeta('catNameBn');
  @override
  late final GeneratedColumn<String> catNameBn = GeneratedColumn<String>(
      'cat_name_bn', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _catNameEnMeta =
      const VerificationMeta('catNameEn');
  @override
  late final GeneratedColumn<String> catNameEn = GeneratedColumn<String>(
      'cat_name_en', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _noOfSubcatMeta =
      const VerificationMeta('noOfSubcat');
  @override
  late final GeneratedColumn<int> noOfSubcat = GeneratedColumn<int>(
      'no_of_subcat', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _noOfDuaMeta =
      const VerificationMeta('noOfDua');
  @override
  late final GeneratedColumn<int> noOfDua = GeneratedColumn<int>(
      'no_of_dua', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _catIconMeta =
      const VerificationMeta('catIcon');
  @override
  late final GeneratedColumn<String> catIcon = GeneratedColumn<String>(
      'cat_icon', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, catId, catNameBn, catNameEn, noOfSubcat, noOfDua, catIcon];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'category';
  @override
  VerificationContext validateIntegrity(Insertable<CategoryData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('cat_id')) {
      context.handle(
          _catIdMeta, catId.isAcceptableOrUnknown(data['cat_id']!, _catIdMeta));
    } else if (isInserting) {
      context.missing(_catIdMeta);
    }
    if (data.containsKey('cat_name_bn')) {
      context.handle(
          _catNameBnMeta,
          catNameBn.isAcceptableOrUnknown(
              data['cat_name_bn']!, _catNameBnMeta));
    } else if (isInserting) {
      context.missing(_catNameBnMeta);
    }
    if (data.containsKey('cat_name_en')) {
      context.handle(
          _catNameEnMeta,
          catNameEn.isAcceptableOrUnknown(
              data['cat_name_en']!, _catNameEnMeta));
    } else if (isInserting) {
      context.missing(_catNameEnMeta);
    }
    if (data.containsKey('no_of_subcat')) {
      context.handle(
          _noOfSubcatMeta,
          noOfSubcat.isAcceptableOrUnknown(
              data['no_of_subcat']!, _noOfSubcatMeta));
    } else if (isInserting) {
      context.missing(_noOfSubcatMeta);
    }
    if (data.containsKey('no_of_dua')) {
      context.handle(_noOfDuaMeta,
          noOfDua.isAcceptableOrUnknown(data['no_of_dua']!, _noOfDuaMeta));
    } else if (isInserting) {
      context.missing(_noOfDuaMeta);
    }
    if (data.containsKey('cat_icon')) {
      context.handle(_catIconMeta,
          catIcon.isAcceptableOrUnknown(data['cat_icon']!, _catIconMeta));
    } else if (isInserting) {
      context.missing(_catIconMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CategoryData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CategoryData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      catId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}cat_id'])!,
      catNameBn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cat_name_bn'])!,
      catNameEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cat_name_en'])!,
      noOfSubcat: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}no_of_subcat'])!,
      noOfDua: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}no_of_dua'])!,
      catIcon: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cat_icon'])!,
    );
  }

  @override
  $CategoryTable createAlias(String alias) {
    return $CategoryTable(attachedDatabase, alias);
  }
}

class CategoryData extends DataClass implements Insertable<CategoryData> {
  final int id;
  final int catId;
  final String catNameBn;
  final String catNameEn;
  final int noOfSubcat;
  final int noOfDua;
  final String catIcon;
  const CategoryData(
      {required this.id,
      required this.catId,
      required this.catNameBn,
      required this.catNameEn,
      required this.noOfSubcat,
      required this.noOfDua,
      required this.catIcon});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['cat_id'] = Variable<int>(catId);
    map['cat_name_bn'] = Variable<String>(catNameBn);
    map['cat_name_en'] = Variable<String>(catNameEn);
    map['no_of_subcat'] = Variable<int>(noOfSubcat);
    map['no_of_dua'] = Variable<int>(noOfDua);
    map['cat_icon'] = Variable<String>(catIcon);
    return map;
  }

  CategoryCompanion toCompanion(bool nullToAbsent) {
    return CategoryCompanion(
      id: Value(id),
      catId: Value(catId),
      catNameBn: Value(catNameBn),
      catNameEn: Value(catNameEn),
      noOfSubcat: Value(noOfSubcat),
      noOfDua: Value(noOfDua),
      catIcon: Value(catIcon),
    );
  }

  factory CategoryData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CategoryData(
      id: serializer.fromJson<int>(json['id']),
      catId: serializer.fromJson<int>(json['catId']),
      catNameBn: serializer.fromJson<String>(json['catNameBn']),
      catNameEn: serializer.fromJson<String>(json['catNameEn']),
      noOfSubcat: serializer.fromJson<int>(json['noOfSubcat']),
      noOfDua: serializer.fromJson<int>(json['noOfDua']),
      catIcon: serializer.fromJson<String>(json['catIcon']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'catId': serializer.toJson<int>(catId),
      'catNameBn': serializer.toJson<String>(catNameBn),
      'catNameEn': serializer.toJson<String>(catNameEn),
      'noOfSubcat': serializer.toJson<int>(noOfSubcat),
      'noOfDua': serializer.toJson<int>(noOfDua),
      'catIcon': serializer.toJson<String>(catIcon),
    };
  }

  CategoryData copyWith(
          {int? id,
          int? catId,
          String? catNameBn,
          String? catNameEn,
          int? noOfSubcat,
          int? noOfDua,
          String? catIcon}) =>
      CategoryData(
        id: id ?? this.id,
        catId: catId ?? this.catId,
        catNameBn: catNameBn ?? this.catNameBn,
        catNameEn: catNameEn ?? this.catNameEn,
        noOfSubcat: noOfSubcat ?? this.noOfSubcat,
        noOfDua: noOfDua ?? this.noOfDua,
        catIcon: catIcon ?? this.catIcon,
      );
  CategoryData copyWithCompanion(CategoryCompanion data) {
    return CategoryData(
      id: data.id.present ? data.id.value : this.id,
      catId: data.catId.present ? data.catId.value : this.catId,
      catNameBn: data.catNameBn.present ? data.catNameBn.value : this.catNameBn,
      catNameEn: data.catNameEn.present ? data.catNameEn.value : this.catNameEn,
      noOfSubcat:
          data.noOfSubcat.present ? data.noOfSubcat.value : this.noOfSubcat,
      noOfDua: data.noOfDua.present ? data.noOfDua.value : this.noOfDua,
      catIcon: data.catIcon.present ? data.catIcon.value : this.catIcon,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CategoryData(')
          ..write('id: $id, ')
          ..write('catId: $catId, ')
          ..write('catNameBn: $catNameBn, ')
          ..write('catNameEn: $catNameEn, ')
          ..write('noOfSubcat: $noOfSubcat, ')
          ..write('noOfDua: $noOfDua, ')
          ..write('catIcon: $catIcon')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, catId, catNameBn, catNameEn, noOfSubcat, noOfDua, catIcon);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CategoryData &&
          other.id == this.id &&
          other.catId == this.catId &&
          other.catNameBn == this.catNameBn &&
          other.catNameEn == this.catNameEn &&
          other.noOfSubcat == this.noOfSubcat &&
          other.noOfDua == this.noOfDua &&
          other.catIcon == this.catIcon);
}

class CategoryCompanion extends UpdateCompanion<CategoryData> {
  final Value<int> id;
  final Value<int> catId;
  final Value<String> catNameBn;
  final Value<String> catNameEn;
  final Value<int> noOfSubcat;
  final Value<int> noOfDua;
  final Value<String> catIcon;
  const CategoryCompanion({
    this.id = const Value.absent(),
    this.catId = const Value.absent(),
    this.catNameBn = const Value.absent(),
    this.catNameEn = const Value.absent(),
    this.noOfSubcat = const Value.absent(),
    this.noOfDua = const Value.absent(),
    this.catIcon = const Value.absent(),
  });
  CategoryCompanion.insert({
    this.id = const Value.absent(),
    required int catId,
    required String catNameBn,
    required String catNameEn,
    required int noOfSubcat,
    required int noOfDua,
    required String catIcon,
  })  : catId = Value(catId),
        catNameBn = Value(catNameBn),
        catNameEn = Value(catNameEn),
        noOfSubcat = Value(noOfSubcat),
        noOfDua = Value(noOfDua),
        catIcon = Value(catIcon);
  static Insertable<CategoryData> custom({
    Expression<int>? id,
    Expression<int>? catId,
    Expression<String>? catNameBn,
    Expression<String>? catNameEn,
    Expression<int>? noOfSubcat,
    Expression<int>? noOfDua,
    Expression<String>? catIcon,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (catId != null) 'cat_id': catId,
      if (catNameBn != null) 'cat_name_bn': catNameBn,
      if (catNameEn != null) 'cat_name_en': catNameEn,
      if (noOfSubcat != null) 'no_of_subcat': noOfSubcat,
      if (noOfDua != null) 'no_of_dua': noOfDua,
      if (catIcon != null) 'cat_icon': catIcon,
    });
  }

  CategoryCompanion copyWith(
      {Value<int>? id,
      Value<int>? catId,
      Value<String>? catNameBn,
      Value<String>? catNameEn,
      Value<int>? noOfSubcat,
      Value<int>? noOfDua,
      Value<String>? catIcon}) {
    return CategoryCompanion(
      id: id ?? this.id,
      catId: catId ?? this.catId,
      catNameBn: catNameBn ?? this.catNameBn,
      catNameEn: catNameEn ?? this.catNameEn,
      noOfSubcat: noOfSubcat ?? this.noOfSubcat,
      noOfDua: noOfDua ?? this.noOfDua,
      catIcon: catIcon ?? this.catIcon,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (catId.present) {
      map['cat_id'] = Variable<int>(catId.value);
    }
    if (catNameBn.present) {
      map['cat_name_bn'] = Variable<String>(catNameBn.value);
    }
    if (catNameEn.present) {
      map['cat_name_en'] = Variable<String>(catNameEn.value);
    }
    if (noOfSubcat.present) {
      map['no_of_subcat'] = Variable<int>(noOfSubcat.value);
    }
    if (noOfDua.present) {
      map['no_of_dua'] = Variable<int>(noOfDua.value);
    }
    if (catIcon.present) {
      map['cat_icon'] = Variable<String>(catIcon.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoryCompanion(')
          ..write('id: $id, ')
          ..write('catId: $catId, ')
          ..write('catNameBn: $catNameBn, ')
          ..write('catNameEn: $catNameEn, ')
          ..write('noOfSubcat: $noOfSubcat, ')
          ..write('noOfDua: $noOfDua, ')
          ..write('catIcon: $catIcon')
          ..write(')'))
        .toString();
  }
}

class $SubCategoryTable extends SubCategory
    with TableInfo<$SubCategoryTable, SubCategoryData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SubCategoryTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _catIdMeta = const VerificationMeta('catId');
  @override
  late final GeneratedColumn<int> catId = GeneratedColumn<int>(
      'cat_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _subcatIdMeta =
      const VerificationMeta('subcatId');
  @override
  late final GeneratedColumn<int> subcatId = GeneratedColumn<int>(
      'subcat_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _subcatNameBnMeta =
      const VerificationMeta('subcatNameBn');
  @override
  late final GeneratedColumn<String> subcatNameBn = GeneratedColumn<String>(
      'subcat_name_bn', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _subcatNameEnMeta =
      const VerificationMeta('subcatNameEn');
  @override
  late final GeneratedColumn<String> subcatNameEn = GeneratedColumn<String>(
      'subcat_name_en', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _noOfDuaMeta =
      const VerificationMeta('noOfDua');
  @override
  late final GeneratedColumn<int> noOfDua = GeneratedColumn<int>(
      'no_of_dua', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, catId, subcatId, subcatNameBn, subcatNameEn, noOfDua];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sub_category';
  @override
  VerificationContext validateIntegrity(Insertable<SubCategoryData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('cat_id')) {
      context.handle(
          _catIdMeta, catId.isAcceptableOrUnknown(data['cat_id']!, _catIdMeta));
    } else if (isInserting) {
      context.missing(_catIdMeta);
    }
    if (data.containsKey('subcat_id')) {
      context.handle(_subcatIdMeta,
          subcatId.isAcceptableOrUnknown(data['subcat_id']!, _subcatIdMeta));
    } else if (isInserting) {
      context.missing(_subcatIdMeta);
    }
    if (data.containsKey('subcat_name_bn')) {
      context.handle(
          _subcatNameBnMeta,
          subcatNameBn.isAcceptableOrUnknown(
              data['subcat_name_bn']!, _subcatNameBnMeta));
    } else if (isInserting) {
      context.missing(_subcatNameBnMeta);
    }
    if (data.containsKey('subcat_name_en')) {
      context.handle(
          _subcatNameEnMeta,
          subcatNameEn.isAcceptableOrUnknown(
              data['subcat_name_en']!, _subcatNameEnMeta));
    } else if (isInserting) {
      context.missing(_subcatNameEnMeta);
    }
    if (data.containsKey('no_of_dua')) {
      context.handle(_noOfDuaMeta,
          noOfDua.isAcceptableOrUnknown(data['no_of_dua']!, _noOfDuaMeta));
    } else if (isInserting) {
      context.missing(_noOfDuaMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SubCategoryData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SubCategoryData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      catId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}cat_id'])!,
      subcatId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}subcat_id'])!,
      subcatNameBn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}subcat_name_bn'])!,
      subcatNameEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}subcat_name_en'])!,
      noOfDua: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}no_of_dua'])!,
    );
  }

  @override
  $SubCategoryTable createAlias(String alias) {
    return $SubCategoryTable(attachedDatabase, alias);
  }
}

class SubCategoryData extends DataClass implements Insertable<SubCategoryData> {
  final int id;
  final int catId;
  final int subcatId;
  final String subcatNameBn;
  final String subcatNameEn;
  final int noOfDua;
  const SubCategoryData(
      {required this.id,
      required this.catId,
      required this.subcatId,
      required this.subcatNameBn,
      required this.subcatNameEn,
      required this.noOfDua});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['cat_id'] = Variable<int>(catId);
    map['subcat_id'] = Variable<int>(subcatId);
    map['subcat_name_bn'] = Variable<String>(subcatNameBn);
    map['subcat_name_en'] = Variable<String>(subcatNameEn);
    map['no_of_dua'] = Variable<int>(noOfDua);
    return map;
  }

  SubCategoryCompanion toCompanion(bool nullToAbsent) {
    return SubCategoryCompanion(
      id: Value(id),
      catId: Value(catId),
      subcatId: Value(subcatId),
      subcatNameBn: Value(subcatNameBn),
      subcatNameEn: Value(subcatNameEn),
      noOfDua: Value(noOfDua),
    );
  }

  factory SubCategoryData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SubCategoryData(
      id: serializer.fromJson<int>(json['id']),
      catId: serializer.fromJson<int>(json['catId']),
      subcatId: serializer.fromJson<int>(json['subcatId']),
      subcatNameBn: serializer.fromJson<String>(json['subcatNameBn']),
      subcatNameEn: serializer.fromJson<String>(json['subcatNameEn']),
      noOfDua: serializer.fromJson<int>(json['noOfDua']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'catId': serializer.toJson<int>(catId),
      'subcatId': serializer.toJson<int>(subcatId),
      'subcatNameBn': serializer.toJson<String>(subcatNameBn),
      'subcatNameEn': serializer.toJson<String>(subcatNameEn),
      'noOfDua': serializer.toJson<int>(noOfDua),
    };
  }

  SubCategoryData copyWith(
          {int? id,
          int? catId,
          int? subcatId,
          String? subcatNameBn,
          String? subcatNameEn,
          int? noOfDua}) =>
      SubCategoryData(
        id: id ?? this.id,
        catId: catId ?? this.catId,
        subcatId: subcatId ?? this.subcatId,
        subcatNameBn: subcatNameBn ?? this.subcatNameBn,
        subcatNameEn: subcatNameEn ?? this.subcatNameEn,
        noOfDua: noOfDua ?? this.noOfDua,
      );
  SubCategoryData copyWithCompanion(SubCategoryCompanion data) {
    return SubCategoryData(
      id: data.id.present ? data.id.value : this.id,
      catId: data.catId.present ? data.catId.value : this.catId,
      subcatId: data.subcatId.present ? data.subcatId.value : this.subcatId,
      subcatNameBn: data.subcatNameBn.present
          ? data.subcatNameBn.value
          : this.subcatNameBn,
      subcatNameEn: data.subcatNameEn.present
          ? data.subcatNameEn.value
          : this.subcatNameEn,
      noOfDua: data.noOfDua.present ? data.noOfDua.value : this.noOfDua,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SubCategoryData(')
          ..write('id: $id, ')
          ..write('catId: $catId, ')
          ..write('subcatId: $subcatId, ')
          ..write('subcatNameBn: $subcatNameBn, ')
          ..write('subcatNameEn: $subcatNameEn, ')
          ..write('noOfDua: $noOfDua')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, catId, subcatId, subcatNameBn, subcatNameEn, noOfDua);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SubCategoryData &&
          other.id == this.id &&
          other.catId == this.catId &&
          other.subcatId == this.subcatId &&
          other.subcatNameBn == this.subcatNameBn &&
          other.subcatNameEn == this.subcatNameEn &&
          other.noOfDua == this.noOfDua);
}

class SubCategoryCompanion extends UpdateCompanion<SubCategoryData> {
  final Value<int> id;
  final Value<int> catId;
  final Value<int> subcatId;
  final Value<String> subcatNameBn;
  final Value<String> subcatNameEn;
  final Value<int> noOfDua;
  const SubCategoryCompanion({
    this.id = const Value.absent(),
    this.catId = const Value.absent(),
    this.subcatId = const Value.absent(),
    this.subcatNameBn = const Value.absent(),
    this.subcatNameEn = const Value.absent(),
    this.noOfDua = const Value.absent(),
  });
  SubCategoryCompanion.insert({
    this.id = const Value.absent(),
    required int catId,
    required int subcatId,
    required String subcatNameBn,
    required String subcatNameEn,
    required int noOfDua,
  })  : catId = Value(catId),
        subcatId = Value(subcatId),
        subcatNameBn = Value(subcatNameBn),
        subcatNameEn = Value(subcatNameEn),
        noOfDua = Value(noOfDua);
  static Insertable<SubCategoryData> custom({
    Expression<int>? id,
    Expression<int>? catId,
    Expression<int>? subcatId,
    Expression<String>? subcatNameBn,
    Expression<String>? subcatNameEn,
    Expression<int>? noOfDua,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (catId != null) 'cat_id': catId,
      if (subcatId != null) 'subcat_id': subcatId,
      if (subcatNameBn != null) 'subcat_name_bn': subcatNameBn,
      if (subcatNameEn != null) 'subcat_name_en': subcatNameEn,
      if (noOfDua != null) 'no_of_dua': noOfDua,
    });
  }

  SubCategoryCompanion copyWith(
      {Value<int>? id,
      Value<int>? catId,
      Value<int>? subcatId,
      Value<String>? subcatNameBn,
      Value<String>? subcatNameEn,
      Value<int>? noOfDua}) {
    return SubCategoryCompanion(
      id: id ?? this.id,
      catId: catId ?? this.catId,
      subcatId: subcatId ?? this.subcatId,
      subcatNameBn: subcatNameBn ?? this.subcatNameBn,
      subcatNameEn: subcatNameEn ?? this.subcatNameEn,
      noOfDua: noOfDua ?? this.noOfDua,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (catId.present) {
      map['cat_id'] = Variable<int>(catId.value);
    }
    if (subcatId.present) {
      map['subcat_id'] = Variable<int>(subcatId.value);
    }
    if (subcatNameBn.present) {
      map['subcat_name_bn'] = Variable<String>(subcatNameBn.value);
    }
    if (subcatNameEn.present) {
      map['subcat_name_en'] = Variable<String>(subcatNameEn.value);
    }
    if (noOfDua.present) {
      map['no_of_dua'] = Variable<int>(noOfDua.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SubCategoryCompanion(')
          ..write('id: $id, ')
          ..write('catId: $catId, ')
          ..write('subcatId: $subcatId, ')
          ..write('subcatNameBn: $subcatNameBn, ')
          ..write('subcatNameEn: $subcatNameEn, ')
          ..write('noOfDua: $noOfDua')
          ..write(')'))
        .toString();
  }
}

abstract class _$DuasDatabase extends GeneratedDatabase {
  _$DuasDatabase(QueryExecutor e) : super(e);
  $DuasDatabaseManager get managers => $DuasDatabaseManager(this);
  late final $CategoryTable category = $CategoryTable(this);
  late final $SubCategoryTable subCategory = $SubCategoryTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [category, subCategory];
}

typedef $$CategoryTableCreateCompanionBuilder = CategoryCompanion Function({
  Value<int> id,
  required int catId,
  required String catNameBn,
  required String catNameEn,
  required int noOfSubcat,
  required int noOfDua,
  required String catIcon,
});
typedef $$CategoryTableUpdateCompanionBuilder = CategoryCompanion Function({
  Value<int> id,
  Value<int> catId,
  Value<String> catNameBn,
  Value<String> catNameEn,
  Value<int> noOfSubcat,
  Value<int> noOfDua,
  Value<String> catIcon,
});

class $$CategoryTableFilterComposer
    extends Composer<_$DuasDatabase, $CategoryTable> {
  $$CategoryTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get catId => $composableBuilder(
      column: $table.catId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get catNameBn => $composableBuilder(
      column: $table.catNameBn, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get catNameEn => $composableBuilder(
      column: $table.catNameEn, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get noOfSubcat => $composableBuilder(
      column: $table.noOfSubcat, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get noOfDua => $composableBuilder(
      column: $table.noOfDua, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get catIcon => $composableBuilder(
      column: $table.catIcon, builder: (column) => ColumnFilters(column));
}

class $$CategoryTableOrderingComposer
    extends Composer<_$DuasDatabase, $CategoryTable> {
  $$CategoryTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get catId => $composableBuilder(
      column: $table.catId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get catNameBn => $composableBuilder(
      column: $table.catNameBn, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get catNameEn => $composableBuilder(
      column: $table.catNameEn, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get noOfSubcat => $composableBuilder(
      column: $table.noOfSubcat, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get noOfDua => $composableBuilder(
      column: $table.noOfDua, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get catIcon => $composableBuilder(
      column: $table.catIcon, builder: (column) => ColumnOrderings(column));
}

class $$CategoryTableAnnotationComposer
    extends Composer<_$DuasDatabase, $CategoryTable> {
  $$CategoryTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get catId =>
      $composableBuilder(column: $table.catId, builder: (column) => column);

  GeneratedColumn<String> get catNameBn =>
      $composableBuilder(column: $table.catNameBn, builder: (column) => column);

  GeneratedColumn<String> get catNameEn =>
      $composableBuilder(column: $table.catNameEn, builder: (column) => column);

  GeneratedColumn<int> get noOfSubcat => $composableBuilder(
      column: $table.noOfSubcat, builder: (column) => column);

  GeneratedColumn<int> get noOfDua =>
      $composableBuilder(column: $table.noOfDua, builder: (column) => column);

  GeneratedColumn<String> get catIcon =>
      $composableBuilder(column: $table.catIcon, builder: (column) => column);
}

class $$CategoryTableTableManager extends RootTableManager<
    _$DuasDatabase,
    $CategoryTable,
    CategoryData,
    $$CategoryTableFilterComposer,
    $$CategoryTableOrderingComposer,
    $$CategoryTableAnnotationComposer,
    $$CategoryTableCreateCompanionBuilder,
    $$CategoryTableUpdateCompanionBuilder,
    (
      CategoryData,
      BaseReferences<_$DuasDatabase, $CategoryTable, CategoryData>
    ),
    CategoryData,
    PrefetchHooks Function()> {
  $$CategoryTableTableManager(_$DuasDatabase db, $CategoryTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CategoryTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CategoryTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CategoryTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> catId = const Value.absent(),
            Value<String> catNameBn = const Value.absent(),
            Value<String> catNameEn = const Value.absent(),
            Value<int> noOfSubcat = const Value.absent(),
            Value<int> noOfDua = const Value.absent(),
            Value<String> catIcon = const Value.absent(),
          }) =>
              CategoryCompanion(
            id: id,
            catId: catId,
            catNameBn: catNameBn,
            catNameEn: catNameEn,
            noOfSubcat: noOfSubcat,
            noOfDua: noOfDua,
            catIcon: catIcon,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int catId,
            required String catNameBn,
            required String catNameEn,
            required int noOfSubcat,
            required int noOfDua,
            required String catIcon,
          }) =>
              CategoryCompanion.insert(
            id: id,
            catId: catId,
            catNameBn: catNameBn,
            catNameEn: catNameEn,
            noOfSubcat: noOfSubcat,
            noOfDua: noOfDua,
            catIcon: catIcon,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CategoryTableProcessedTableManager = ProcessedTableManager<
    _$DuasDatabase,
    $CategoryTable,
    CategoryData,
    $$CategoryTableFilterComposer,
    $$CategoryTableOrderingComposer,
    $$CategoryTableAnnotationComposer,
    $$CategoryTableCreateCompanionBuilder,
    $$CategoryTableUpdateCompanionBuilder,
    (
      CategoryData,
      BaseReferences<_$DuasDatabase, $CategoryTable, CategoryData>
    ),
    CategoryData,
    PrefetchHooks Function()>;
typedef $$SubCategoryTableCreateCompanionBuilder = SubCategoryCompanion
    Function({
  Value<int> id,
  required int catId,
  required int subcatId,
  required String subcatNameBn,
  required String subcatNameEn,
  required int noOfDua,
});
typedef $$SubCategoryTableUpdateCompanionBuilder = SubCategoryCompanion
    Function({
  Value<int> id,
  Value<int> catId,
  Value<int> subcatId,
  Value<String> subcatNameBn,
  Value<String> subcatNameEn,
  Value<int> noOfDua,
});

class $$SubCategoryTableFilterComposer
    extends Composer<_$DuasDatabase, $SubCategoryTable> {
  $$SubCategoryTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get catId => $composableBuilder(
      column: $table.catId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get subcatId => $composableBuilder(
      column: $table.subcatId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get subcatNameBn => $composableBuilder(
      column: $table.subcatNameBn, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get subcatNameEn => $composableBuilder(
      column: $table.subcatNameEn, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get noOfDua => $composableBuilder(
      column: $table.noOfDua, builder: (column) => ColumnFilters(column));
}

class $$SubCategoryTableOrderingComposer
    extends Composer<_$DuasDatabase, $SubCategoryTable> {
  $$SubCategoryTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get catId => $composableBuilder(
      column: $table.catId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get subcatId => $composableBuilder(
      column: $table.subcatId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get subcatNameBn => $composableBuilder(
      column: $table.subcatNameBn,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get subcatNameEn => $composableBuilder(
      column: $table.subcatNameEn,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get noOfDua => $composableBuilder(
      column: $table.noOfDua, builder: (column) => ColumnOrderings(column));
}

class $$SubCategoryTableAnnotationComposer
    extends Composer<_$DuasDatabase, $SubCategoryTable> {
  $$SubCategoryTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get catId =>
      $composableBuilder(column: $table.catId, builder: (column) => column);

  GeneratedColumn<int> get subcatId =>
      $composableBuilder(column: $table.subcatId, builder: (column) => column);

  GeneratedColumn<String> get subcatNameBn => $composableBuilder(
      column: $table.subcatNameBn, builder: (column) => column);

  GeneratedColumn<String> get subcatNameEn => $composableBuilder(
      column: $table.subcatNameEn, builder: (column) => column);

  GeneratedColumn<int> get noOfDua =>
      $composableBuilder(column: $table.noOfDua, builder: (column) => column);
}

class $$SubCategoryTableTableManager extends RootTableManager<
    _$DuasDatabase,
    $SubCategoryTable,
    SubCategoryData,
    $$SubCategoryTableFilterComposer,
    $$SubCategoryTableOrderingComposer,
    $$SubCategoryTableAnnotationComposer,
    $$SubCategoryTableCreateCompanionBuilder,
    $$SubCategoryTableUpdateCompanionBuilder,
    (
      SubCategoryData,
      BaseReferences<_$DuasDatabase, $SubCategoryTable, SubCategoryData>
    ),
    SubCategoryData,
    PrefetchHooks Function()> {
  $$SubCategoryTableTableManager(_$DuasDatabase db, $SubCategoryTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SubCategoryTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SubCategoryTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SubCategoryTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> catId = const Value.absent(),
            Value<int> subcatId = const Value.absent(),
            Value<String> subcatNameBn = const Value.absent(),
            Value<String> subcatNameEn = const Value.absent(),
            Value<int> noOfDua = const Value.absent(),
          }) =>
              SubCategoryCompanion(
            id: id,
            catId: catId,
            subcatId: subcatId,
            subcatNameBn: subcatNameBn,
            subcatNameEn: subcatNameEn,
            noOfDua: noOfDua,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int catId,
            required int subcatId,
            required String subcatNameBn,
            required String subcatNameEn,
            required int noOfDua,
          }) =>
              SubCategoryCompanion.insert(
            id: id,
            catId: catId,
            subcatId: subcatId,
            subcatNameBn: subcatNameBn,
            subcatNameEn: subcatNameEn,
            noOfDua: noOfDua,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SubCategoryTableProcessedTableManager = ProcessedTableManager<
    _$DuasDatabase,
    $SubCategoryTable,
    SubCategoryData,
    $$SubCategoryTableFilterComposer,
    $$SubCategoryTableOrderingComposer,
    $$SubCategoryTableAnnotationComposer,
    $$SubCategoryTableCreateCompanionBuilder,
    $$SubCategoryTableUpdateCompanionBuilder,
    (
      SubCategoryData,
      BaseReferences<_$DuasDatabase, $SubCategoryTable, SubCategoryData>
    ),
    SubCategoryData,
    PrefetchHooks Function()>;

class $DuasDatabaseManager {
  final _$DuasDatabase _db;
  $DuasDatabaseManager(this._db);
  $$CategoryTableTableManager get category =>
      $$CategoryTableTableManager(_db, _db.category);
  $$SubCategoryTableTableManager get subCategory =>
      $$SubCategoryTableTableManager(_db, _db.subCategory);
}
