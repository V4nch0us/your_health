import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/network/endpoints.dart';
import '../../models/dynamic_model.dart';

part 'dynamics_api_service.g.dart';

@LazySingleton()
@RestApi(baseUrl: Endpoints.baseUrl)
abstract class DynamicsApiService {
  @factoryMethod
  factory DynamicsApiService(Dio dio) = _DynamicsApiService;

  @GET('/health_mock')
  Future<DynamicsResponseModel> getDynamics();
}
