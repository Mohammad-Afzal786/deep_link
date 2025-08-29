
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/repositories/deep_link_repository.dart';
import 'deeplink_event.dart';
import 'deeplink_state.dart';

/// ✅ BLOC
/// - events leta hai aur states emit karta hai
/// - repository ke through deep links listen karta hai
class DeepLinkBloc extends Bloc<DeepLinkEvent, DeepLinkState> {
  final DeepLinkRepository repository;

  DeepLinkBloc(this.repository) : super(DeepLinkInitial()) {
    // App start hote hi initial link check karo
    on<AppStarted>((event, emit) async {
      final link = await repository.getInitialLink();
      if (link != null) {
        emit(DeepLinkNavigate(link.route));
      }
    });

    // Foreground links ke liye listen karo
    repository.linkStream.listen((link) {
      add(DeepLinkReceived(link.route));
    });

    // Naya link aaya toh navigate state emit karo
    on<DeepLinkReceived>((event, emit) {
      emit(DeepLinkNavigate(event.route));
    });
  }
}
