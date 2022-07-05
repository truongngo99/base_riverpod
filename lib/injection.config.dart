// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/infrastructure/share_pref_ultils.dart' as _i5;
import 'core/presentation/router/navigation_service.dart' as _i4;
import 'core/services/app_configuration.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.AppConfiguration>(_i3.AppConfiguration());
  gh.lazySingleton<_i4.NavigationService>(() => _i4.NavigationService());
  gh.singleton<_i5.SharePrefUtils>(_i5.SharePrefUtils());
  return get;
}
