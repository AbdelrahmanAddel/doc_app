import 'package:doc_app/core/networking/api_result.dart';
import 'package:doc_app/features/home/data/models/specialization_model.dart';

abstract class HomeRepository {
  Future<ApiResult<SpecializationModel>> getAllSpecialization();
}
