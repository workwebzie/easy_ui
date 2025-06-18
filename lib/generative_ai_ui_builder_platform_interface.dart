import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'generative_ai_ui_builder_method_channel.dart';

abstract class GenerativeAiUiBuilderPlatform extends PlatformInterface {
  /// Constructs a GenerativeAiUiBuilderPlatform.
  GenerativeAiUiBuilderPlatform() : super(token: _token);

  static final Object _token = Object();

  static GenerativeAiUiBuilderPlatform _instance = MethodChannelGenerativeAiUiBuilder();

  /// The default instance of [GenerativeAiUiBuilderPlatform] to use.
  ///
  /// Defaults to [MethodChannelGenerativeAiUiBuilder].
  static GenerativeAiUiBuilderPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [GenerativeAiUiBuilderPlatform] when
  /// they register themselves.
  static set instance(GenerativeAiUiBuilderPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
