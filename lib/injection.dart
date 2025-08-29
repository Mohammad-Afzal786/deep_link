import 'package:deep_link/modules/deeplink/data/deeplink_repository_impl.dart';
import 'package:deep_link/modules/deeplink/domain/repositories/deep_link_repository.dart';
import 'package:deep_link/modules/deeplink/presentation/bloc/deeplink_bloc.dart';
import 'package:get_it/get_it.dart';


/// ✅ GetIt instance (service locator)
final sl = GetIt.instance;

/// ✅ Dependency Injection setup
Future<void> initDependencies() async {
  // Repository register
  sl.registerLazySingleton<DeepLinkRepository>(() => DeepLinkRepositoryImpl());

  // Bloc register
  sl.registerFactory(() => DeepLinkBloc(sl<DeepLinkRepository>()));
}
