import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:generative_ai_ui_builder/generative_ai_ui_builder_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelGenerativeAiUiBuilder platform = MethodChannelGenerativeAiUiBuilder();
  const MethodChannel channel = MethodChannel('generative_ai_ui_builder');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
