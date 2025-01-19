import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/dynamic_entity.dart';
import '../../domain/repository/dynamics_repository.dart';
import '../data_sources/remote/dynamics_api_service.dart';

@LazySingleton(as: DynamicsRepository)
class DynamicsRepositoryImpl implements DynamicsRepository {
  final DynamicsApiService _dynamicsApiService;

  DynamicsRepositoryImpl(this._dynamicsApiService);

  @override
  Future<Either<Failure, DynamicsResponseEntity>> getDynamics() async {
    try {
      final data = await _dynamicsApiService.getDynamics();
      return right(data);
    } on ServerException {
      return left(ServerFailure());
    }
  }
}
