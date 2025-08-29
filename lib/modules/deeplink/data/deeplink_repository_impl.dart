import 'package:app_links/app_links.dart';
import '../domain/entities/deep_link_entity.dart';
import '../domain/repositories/deep_link_repository.dart';

/// ✅ DATA LAYER
/// - yeh `DeepLinkRepository` ka real implementation hai
/// - `app_links` package use karke deeplinks ko handle karta hai
class DeepLinkRepositoryImpl implements DeepLinkRepository {
  final AppLinks _appLinks = AppLinks();

  @override
  Future<DeepLinkEntity?> getInitialLink() async {
    try {
      // Cold start (jab app deep link se open hota hai)
      final uri = await _appLinks.getInitialLink();
      if (uri == null) return null;
      return DeepLinkEntity(_mapUriToRoute(uri));
    } catch (e) {
      return null;
    }
  }

  @override
  Stream<DeepLinkEntity> get linkStream =>
      // Foreground me jab naya deeplink aata hai
      _appLinks.uriLinkStream.map((uri) => DeepLinkEntity(_mapUriToRoute(uri)));

  /// Helper: URI ko route me map karna
  String _mapUriToRoute(Uri uri) {
    switch (uri.host) {
      case "profile":
        return "/profile";
      case "notification":
        return "/notification";
      default:
        return "/home";
    }
  }
}
