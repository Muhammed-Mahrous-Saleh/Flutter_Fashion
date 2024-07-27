import 'package:hive/hive.dart';

part 'home_data_model.g.dart';

@HiveType(typeId: 1)
class HomeData extends HiveObject {
  @HiveField(0)
  Map<String, dynamic> data;

  HomeData({required this.data});
}
