import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'category.g.dart';

@HiveType(typeId: 1)
class Category extends HiveObject with EquatableMixin {
  @HiveField(0)
  String name;

  @HiveField(1)
  String description;

  @HiveField(2)
  int icon;

  @HiveField(3)
  final bool isPredefined;

  @HiveField(4, defaultValue: 0)
  int? superId;

  @HiveField(5, defaultValue: 0)
  int? budget;

  Category({
    required this.description,
    required this.name,
    this.icon = -1,
    this.isPredefined = false,
    this.budget = -1,
  });

  @override
  List<Object?> get props => [name, icon, description];
}
