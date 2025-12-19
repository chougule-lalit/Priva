import 'package:isar_community/isar.dart';
import 'category.dart';

part 'category_rule.g.dart';

@collection
class CategoryRule {
  Id id = Isar.autoIncrement;

  late String expression;

  bool isStrictMatch = false;

  final category = IsarLink<Category>();

  CategoryRule();

  factory CategoryRule.fromJson(Map<String, dynamic> json) {
    return CategoryRule()
      ..id = json['id'] as int
      ..expression = json['expression'] as String
      ..isStrictMatch = json['isStrictMatch'] as bool? ?? false;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'expression': expression,
      'isStrictMatch': isStrictMatch,
      'categoryId': category.value?.id,
    };
  }
}
