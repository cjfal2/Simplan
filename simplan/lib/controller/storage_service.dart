import 'package:get_storage/get_storage.dart';

class StorageService {
  final box = GetStorage();

  void saveData(List<dynamic> data) {
    box.write('tasks', data);
  }

  List<dynamic> loadData() {
    return box.read('tasks') ?? [];
  }
}
