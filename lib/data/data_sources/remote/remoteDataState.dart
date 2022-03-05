import 'package:dio/dio.dart';

abstract class RemoteDataState<T> {
  final T? remoteData;
  final DioError? error;

  const RemoteDataState(this.remoteData, this.error);
}

class RemoteDataSuccess<T> extends RemoteDataState<T> {
  const RemoteDataSuccess({T? remoteData, DioError? error})
      : super(remoteData, error);
}

class RemoteDataFailed<T> extends RemoteDataState<T> {
  const RemoteDataFailed({T? remoteData, DioError? error})
      : super(remoteData, error);
}
