import 'package:deep_link/modules/deeplink/presentation/bloc/deeplink_bloc.dart';
import 'package:deep_link/modules/deeplink/presentation/bloc/deeplink_event.dart';
import 'package:deep_link/modules/deeplink/presentation/bloc/deeplink_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/app_routes.dart';

import 'injection.dart';

/// ✅ MAIN ENTRY
/// - yaha pe dependencies initialize hoti hai (get_it)
/// - aur fir app run hota hai
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies(); // get_it setup call karo
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // get_it ke through bloc create karte hai
      create: (_) => sl<DeepLinkBloc>()..add(AppStarted()),
      child: BlocListener<DeepLinkBloc, DeepLinkState>(
        listener: (context, state) {
          if (state is DeepLinkNavigate) {
            if (Get.currentRoute != state.route) {
              Get.offAllNamed(state.route);
            }
          }
        },
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.home,
          getPages: AppRoutes.pages,
        ),
      ),
    );
  }
}
