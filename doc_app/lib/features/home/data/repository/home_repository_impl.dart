import 'package:doc_app/core/networking/api_error_handler.dart';
import 'package:doc_app/core/networking/api_result.dart';
import 'package:doc_app/features/home/data/api/home_api_service.dart';
import 'package:doc_app/features/home/data/models/specialization_model.dart';
import 'package:doc_app/features/home/logic/repository/home_repository.dart';

class HomeRepositoryImplmentation extends HomeRepository {
  final HomeApiService _homeApiService;
  HomeRepositoryImplmentation(this._homeApiService);

  @override
  Future<ApiResult<SpecializationModel>> getAllSpecialization() async {
    try {
      final result = await _homeApiService.getAllSpecialization();
      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
