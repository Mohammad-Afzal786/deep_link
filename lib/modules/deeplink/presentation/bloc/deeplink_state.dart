import 'package:equatable/equatable.dart';

/// ✅ STATES (Bloc output)
/// - states batate hai ki ab UI ko kya karna chahiye
abstract class DeepLinkState extends Equatable {
  @override
  List<Object?> get props => [];
}

/// initial state (kuch hua nahi abhi tak)
class DeepLinkInitial extends DeepLinkState {}

/// jab navigate karna hai
class DeepLinkNavigate extends DeepLinkState {
  final String route;
  DeepLinkNavigate(this.route);

  @override
  List<Object?> get props => [route];
}
