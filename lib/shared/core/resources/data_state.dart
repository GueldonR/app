import 'package:dio/dio.dart';

abstract class DataState<state> {
  final state? data;
  final DioException? error;

  const DataState({this.data, this.error});
}

// datastate which returns data from a call
class DataSuccessState<state> extends DataState<state> {
  const DataSuccessState(state data) : super(data: data);
}

// errorstate which returns error from a call
class DataErrorState<state> extends DataState<state> {
  const DataErrorState(DioException error) : super(error: error);
}
