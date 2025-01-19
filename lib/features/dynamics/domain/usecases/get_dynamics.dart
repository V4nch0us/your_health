import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/dynamic_entity.dart';
import '../repository/dynamics_repository.dart';

@LazySingleton()
class GetDynamicsUseCase extends UseCase<Either<Failure, DynamicsResponseEntity>, void> {
  final DynamicsRepository _dynamicsRepository;

  GetDynamicsUseCase(this._dynamicsRepository);

  @override
  Future<Either<Failure, DynamicsResponseEntity>> call({void params}) {
    return _dynamicsRepository.getDynamics();
  }
}
