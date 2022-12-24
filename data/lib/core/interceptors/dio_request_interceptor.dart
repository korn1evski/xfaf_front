import 'package:dio/dio.dart';
import 'package:domain/core/errors/failure.dart';

class RequestInterceptor extends Interceptor {
  RequestInterceptor({this.onErrorRequest});

  final Function(Failure error)? onErrorRequest;
  bool handleErrors = true;

  void setHandleErrors(bool handleErrors){
    this.handleErrors = handleErrors;
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // options.headers['app-id'] = '62227dcc75f47d902a9f0f34';
    handler.next(options);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if(handleErrors) {
      onErrorRequest?.call(ServerFailure(errorObject: err.response?.data));
    }
    handler.reject(err);
  }
}
