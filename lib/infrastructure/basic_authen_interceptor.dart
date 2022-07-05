import 'package:base_riverpod/dev_helper/domain/setting_model.dart';
import 'package:dio/dio.dart';

class BasicAuthenInterceptor extends Interceptor {
  final SettingModel _settingModel;
  BasicAuthenInterceptor(this._settingModel);

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final modifiedOptions = options
      ..headers.addAll({
        'Authorization':
            'basic ${_settingModel.username}:${_settingModel.password}',
      });
    handler.next(modifiedOptions);
  }
}
