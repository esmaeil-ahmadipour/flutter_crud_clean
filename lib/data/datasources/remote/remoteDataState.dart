import 'package:dio/dio.dart';

abstract class RemoteDataState<T>{
final T remoteData;
final DioError error ;

RemoteDataState({required this.remoteData, required this.error});
}

class RemoteDataSuccess<T> extends  RemoteDataState <T>{
  RemoteDataSuccess({required T remoteData, required DioError error}) : super(remoteData: remoteData, error: error);
}