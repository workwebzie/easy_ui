// import 'package:flutter_test/flutter_test.dart';
// import 'package:generative_ai_ui_builder/generative_ai_ui_builder.dart';
// import 'package:generative_ai_ui_builder/generative_ai_ui_builder_platform_interface.dart';
// import 'package:generative_ai_ui_builder/generative_ai_ui_builder_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';

// class MockGenerativeAiUiBuilderPlatform
//     with MockPlatformInterfaceMixin
//     implements GenerativeAiUiBuilderPlatform {

//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }

// void main() {
//   final GenerativeAiUiBuilderPlatform initialPlatform = GenerativeAiUiBuilderPlatform.instance;

//   test('$MethodChannelGenerativeAiUiBuilder is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelGenerativeAiUiBuilder>());
//   });

//   test('getPlatformVersion', () async {
//     // GenerativeAiUiBuilder generativeAiUiBuilderPlugin = GenerativeAiUiBuilder();
//     MockGenerativeAiUiBuilderPlatform fakePlatform = MockGenerativeAiUiBuilderPlatform();
//     GenerativeAiUiBuilderPlatform.instance = fakePlatform;

//     expect(await generativeAiUiBuilderPlugin.getPlatformVersion(), '42');
//   });
// }
