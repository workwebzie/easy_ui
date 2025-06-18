import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'generative_ai_ui_builder_platform_interface.dart';

/// An implementation of [GenerativeAiUiBuilderPlatform] that uses method channels.
class MethodChannelGenerativeAiUiBuilder extends GenerativeAiUiBuilderPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('generative_ai_ui_builder');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
