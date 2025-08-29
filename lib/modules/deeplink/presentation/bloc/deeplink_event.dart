

import 'package:equatable/equatable.dart';

/// ✅ EVENTS (Bloc input)
/// - events batate hai ki kya hua app me
abstract class DeepLinkEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// jab app start hota hai
class AppStarted extends DeepLinkEvent {}

/// jab naya deep link milta hai
class DeepLinkReceived extends DeepLinkEvent {
  final String route;
  DeepLinkReceived(this.route);

  @override
  List<Object?> get props => [route];
}
