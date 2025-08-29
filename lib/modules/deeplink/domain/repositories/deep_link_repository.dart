import '../entities/deep_link_entity.dart';

/// ✅ REPOSITORY CONTRACT
/// - yeh define karta hai ki DeepLink repository ko kya functions dene chahiye
/// - implementation data layer me hoga
abstract class DeepLinkRepository {
  /// agar app deep link se start hua hai toh initial link return karega
  Future<DeepLinkEntity?> getInitialLink();

  /// jab app chal raha ho aur naya link aaye toh stream emit karega
  Stream<DeepLinkEntity> get linkStream;
}
