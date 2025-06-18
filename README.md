# 🎨 Generative AI UI Builder

A Flutter plugin that leverages Google Gemini generative AI (now supporting `gemini-2.0-flash` 🚀) to convert your natural language prompts into Flutter UI code — perfect for rapid prototyping, learning, and AI-assisted app development!

---

## ✨ Features

- 🗣️ Generate Flutter widget code from plain English prompts  
- ⚡ Integrates with Google Gemini (`gemini-2.0-flash`)  
- 🛠️ Easy to use, extend, and integrate into any Flutter project  
- 💡 Great for beginners, educators, and professionals alike

---

## 🚀 Getting Started

Add the dependency to your `pubspec.yaml`:

dependencies:
generative_ai_ui_builder: ^1.0.0

text

---

## 📝 Usage

// 1️⃣ Import the package
import 'package:generative_ai_ui_builder/generative_ai_ui_builder.dart';

// 2️⃣ Initialize the builder with your Gemini API key
final aiBuilder = GenerativeAIUIBuilder('YOUR_GEMINI_API_KEY');

// 3️⃣ Call the generator with your UI prompt
void generateCode(String prompt) async {
// The AI will return Flutter widget code as a String!
String code = await aiBuilder.generateFlutterUICode(prompt);
print(code); // You can display or use this code in your app
}

text

---

## 💡 Example

final prompt = "A login screen with email and password fields, and a login button.";
final code = await aiBuilder.generateFlutterUICode(prompt);

// Now 'code' contains a ready-to-use Flutter widget!
// Try pasting it into your project and see the magic! ✨

text

---

## 🖼️ Screenshots

<!--
![Prompt Input Screenshot](screenshots/prompt_input.png)
![Generated Code Screenshot](screenshots/generated_code.png)
-->

---

## 📚 Tips & Comments

- 🔑 **Never share your API key publicly!** Store it securely in environment variables or secure storage.
- 🧑‍💻 The plugin is designed for easy extension—feel free to add more AI models or tweak prompts for your needs.
- 🏗️ Generated code is plain Dart — review and test before shipping to production.
- 🛟 If you hit API limits, check your Google Gemini quota and billing.

---

## 📄 License

[MIT](LICENSE)

---

## 🐞 Issues & Feedback

Found a bug or have a feature request?  
Please file issues and feature requests at [GitHub Issues](https://github.com/workwebzie/easy_ui/issues).  
Your feedback helps make this plugin better! 😊

---

Happy coding! 🚀