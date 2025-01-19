import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/dynamic_entity.dart';

abstract class DynamicsRepository {
  Future<Either<Failure, DynamicsResponseEntity>> getDynamics();
}
