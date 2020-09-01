import 'package:quiz/app/data/provider/api.dart';
import 'package:meta/meta.dart';

class QuestionRepository {
  final MyApiClient apiClient;

  QuestionRepository({@required this.apiClient}) : assert(apiClient != null);

  getAll() {
    return apiClient.getAll();
  }

  getId(id) {
    return apiClient.getId(id);
  }



}
