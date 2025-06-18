// You have generated a new plugin project without specifying the `--platforms`
// flag. A plugin project with no platform support was generated. To add a
// platform, run `flutter create -t plugin --platforms <platforms> .` under the
// same directory. You can also find a detailed instruction on how to add
// platforms in the `pubspec.yaml` at
// https://flutter.dev/docs/development/packages-and-plugins/developing-packages#plugin-platforms.

// import 'generative_ai_ui_builder_platform_interface.dart';

// class GenerativeAiUiBuilder {
//   Future<String?> getPlatformVersion() {
//     return GenerativeAiUiBuilderPlatform.instance.getPlatformVersion();
//   }
// }
// lib/generative_ai_ui_builder.dart
import 'package:google_generative_ai/google_generative_ai.dart';

class GenerativeAIUIBuilder {
  final String apiKey;
  late final GenerativeModel _model;

  GenerativeAIUIBuilder(this.apiKey) {
    _model = GenerativeModel(
      model: 'gemini-2.0-flash', // Or the latest available model
      apiKey: apiKey,
    );
  }

  Future<String> generateFlutterUICode(String prompt) async {
    final content = Content.text(
      "Generate Flutter UI code for: $prompt. "
      "Only return valid Dart code for a Flutter widget, no explanations."
    );
    final response = await _model.generateContent([content]);
    return response.text ?? 'No code generated.';
  }
}
