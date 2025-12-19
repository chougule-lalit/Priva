// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_rule.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCategoryRuleCollection on Isar {
  IsarCollection<CategoryRule> get categoryRules => this.collection();
}

const CategoryRuleSchema = CollectionSchema(
  name: r'CategoryRule',
  id: 4255622899410938401,
  properties: {
    r'expression': PropertySchema(
      id: 0,
      name: r'expression',
      type: IsarType.string,
    ),
    r'isStrictMatch': PropertySchema(
      id: 1,
      name: r'isStrictMatch',
      type: IsarType.bool,
    )
  },
  estimateSize: _categoryRuleEstimateSize,
  serialize: _categoryRuleSerialize,
  deserialize: _categoryRuleDeserialize,
  deserializeProp: _categoryRuleDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'category': LinkSchema(
      id: -8671518642277653438,
      name: r'category',
      target: r'Category',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _categoryRuleGetId,
  getLinks: _categoryRuleGetLinks,
  attach: _categoryRuleAttach,
  version: '3.3.0',
);

int _categoryRuleEstimateSize(
  CategoryRule object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.expression.length * 3;
  return bytesCount;
}

void _categoryRuleSerialize(
  CategoryRule object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.expression);
  writer.writeBool(offsets[1], object.isStrictMatch);
}

CategoryRule _categoryRuleDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CategoryRule();
  object.expression = reader.readString(offsets[0]);
  object.id = id;
  object.isStrictMatch = reader.readBool(offsets[1]);
  return object;
}

P _categoryRuleDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _categoryRuleGetId(CategoryRule object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _categoryRuleGetLinks(CategoryRule object) {
  return [object.category];
}

void _categoryRuleAttach(
    IsarCollection<dynamic> col, Id id, CategoryRule object) {
  object.id = id;
  object.category.attach(col, col.isar.collection<Category>(), r'category', id);
}

extension CategoryRuleQueryWhereSort
    on QueryBuilder<CategoryRule, CategoryRule, QWhere> {
  QueryBuilder<CategoryRule, CategoryRule, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CategoryRuleQueryWhere
    on QueryBuilder<CategoryRule, CategoryRule, QWhereClause> {
  QueryBuilder<CategoryRule, CategoryRule, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CategoryRule, CategoryRule, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<CategoryRule, CategoryRule, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CategoryRule, CategoryRule, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CategoryRule, CategoryRule, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CategoryRuleQueryFilter
    on QueryBuilder<CategoryRule, CategoryRule, QFilterCondition> {
  QueryBuilder<CategoryRule, CategoryRule, QAfterFilterCondition>
      expressionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expression',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryRule, CategoryRule, QAfterFilterCondition>
      expressionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'expression',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryRule, CategoryRule, QAfterFilterCondition>
      expressionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'expression',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryRule, CategoryRule, QAfterFilterCondition>
      expressionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'expression',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryRule, CategoryRule, QAfterFilterCondition>
      expressionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'expression',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryRule, CategoryRule, QAfterFilterCondition>
      expressionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'expression',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryRule, CategoryRule, QAfterFilterCondition>
      expressionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'expression',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryRule, CategoryRule, QAfterFilterCondition>
      expressionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'expression',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CategoryRule, CategoryRule, QAfterFilterCondition>
      expressionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expression',
        value: '',
      ));
    });
  }

  QueryBuilder<CategoryRule, CategoryRule, QAfterFilterCondition>
      expressionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'expression',
        value: '',
      ));
    });
  }

  QueryBuilder<CategoryRule, CategoryRule, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CategoryRule, CategoryRule, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CategoryRule, CategoryRule, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CategoryRule, CategoryRule, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CategoryRule, CategoryRule, QAfterFilterCondition>
      isStrictMatchEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isStrictMatch',
        value: value,
      ));
    });
  }
}

extension CategoryRuleQueryObject
    on QueryBuilder<CategoryRule, CategoryRule, QFilterCondition> {}

extension CategoryRuleQueryLinks
    on QueryBuilder<CategoryRule, CategoryRule, QFilterCondition> {
  QueryBuilder<CategoryRule, CategoryRule, QAfterFilterCondition> category(
      FilterQuery<Category> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'category');
    });
  }

  QueryBuilder<CategoryRule, CategoryRule, QAfterFilterCondition>
      categoryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'category', 0, true, 0, true);
    });
  }
}

extension CategoryRuleQuerySortBy
    on QueryBuilder<CategoryRule, CategoryRule, QSortBy> {
  QueryBuilder<CategoryRule, CategoryRule, QAfterSortBy> sortByExpression() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expression', Sort.asc);
    });
  }

  QueryBuilder<CategoryRule, CategoryRule, QAfterSortBy>
      sortByExpressionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expression', Sort.desc);
    });
  }

  QueryBuilder<CategoryRule, CategoryRule, QAfterSortBy> sortByIsStrictMatch() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isStrictMatch', Sort.asc);
    });
  }

  QueryBuilder<CategoryRule, CategoryRule, QAfterSortBy>
      sortByIsStrictMatchDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isStrictMatch', Sort.desc);
    });
  }
}

extension CategoryRuleQuerySortThenBy
    on QueryBuilder<CategoryRule, CategoryRule, QSortThenBy> {
  QueryBuilder<CategoryRule, CategoryRule, QAfterSortBy> thenByExpression() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expression', Sort.asc);
    });
  }

  QueryBuilder<CategoryRule, CategoryRule, QAfterSortBy>
      thenByExpressionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expression', Sort.desc);
    });
  }

  QueryBuilder<CategoryRule, CategoryRule, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CategoryRule, CategoryRule, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CategoryRule, CategoryRule, QAfterSortBy> thenByIsStrictMatch() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isStrictMatch', Sort.asc);
    });
  }

  QueryBuilder<CategoryRule, CategoryRule, QAfterSortBy>
      thenByIsStrictMatchDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isStrictMatch', Sort.desc);
    });
  }
}

extension CategoryRuleQueryWhereDistinct
    on QueryBuilder<CategoryRule, CategoryRule, QDistinct> {
  QueryBuilder<CategoryRule, CategoryRule, QDistinct> distinctByExpression(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'expression', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CategoryRule, CategoryRule, QDistinct>
      distinctByIsStrictMatch() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isStrictMatch');
    });
  }
}

extension CategoryRuleQueryProperty
    on QueryBuilder<CategoryRule, CategoryRule, QQueryProperty> {
  QueryBuilder<CategoryRule, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CategoryRule, String, QQueryOperations> expressionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'expression');
    });
  }

  QueryBuilder<CategoryRule, bool, QQueryOperations> isStrictMatchProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isStrictMatch');
    });
  }
}
