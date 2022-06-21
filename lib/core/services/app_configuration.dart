import 'package:global_configuration/global_configuration.dart';
import 'package:injectable/injectable.dart';

@singleton
class AppConfiguration {
  Future init(String? env) async {
    var file = 'app_config';
    if (env != null) {
      file = '${file}_$env';
    }
    await GlobalConfiguration().loadFromAsset(file);
  }

  String get apiUrl => GlobalConfiguration().getValue<String>('apiUrl');
}
