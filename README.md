# Generative AI UI Builder

A Flutter plugin that leverages Google Gemini generative AI to convert natural language prompts into Flutter UI code.

## Features

- Generate Flutter widget code from plain English prompts
- Integrates with Google Gemini (Gemini 1.5 Pro and others)
- Easy to use and extend

## Getting Started

Add the dependency to your `pubspec.yaml`:

dependencies:
generative_ai_ui_builder: ^1.0.0


## Usage

import 'package:generative_ai_ui_builder/generative_ai_ui_builder.dart';

final aiBuilder = GenerativeAIUIBuilder('YOUR_GEMINI_API_KEY');

void generateCode(String prompt) async {
String code = await aiBuilder.generateFlutterUICode(prompt);
print(code);
}

## Example

final prompt = "A login screen with email and password fields, and a login button.";
final code = await aiBuilder.generateFlutterUICode(prompt);
// Use or display the generated code as needed

## Screenshots

<!-- ![Prompt Input Screenshot](screenshots/prompt_input.png)
![Generated Code Screenshot](screenshots/generated_code.png) -->

## License

[MIT](LICENSE)

## Issues

<!-- Please file issues and feature requests at [GitHub Issues](https://github.com/your-username/generative_ai_ui_builder/issues). -->