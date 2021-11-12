import 'package:flutter_goffer/domain/find_location/find_location.dart';

abstract class IFindLocationRepository {
  Future<List<FindLocation>> getLocalFindLocation({
    required String keyWord,
  });
  Future<List<FindLocation>> getApiFindLocation({
    required String keyWord,
  });
}
