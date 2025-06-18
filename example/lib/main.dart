import 'package:flutter/material.dart';
import 'package:generative_ai_ui_builder/generative_ai_ui_builder.dart';
 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _controller = TextEditingController();
  String _generatedCode = '';
  late final GenerativeAIUIBuilder _aiBuilder;

  @override
  void initState() {
    super.initState();
    _aiBuilder = GenerativeAIUIBuilder('#your_api_key_here'); // Replace with your actual API key
  }

  Future<void> _generateCode() async {
    final prompt = _controller.text.trim();
    if (prompt.isEmpty) return;

    setState(() {
      _generatedCode = 'Generating...';
    });

    final code = await _aiBuilder.generateFlutterUICode(prompt);
    setState(() {
      _generatedCode = code;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Generative AI UI Builder')),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  labelText: 'Enter UI description',
                  border: OutlineInputBorder(),
                ),
                minLines: 1,
                maxLines: 3,
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: _generateCode,
                child: const Text('Generate Flutter UI Code'),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: SingleChildScrollView(
                  child: SelectableText(
                    _generatedCode,
                    style: const TextStyle(fontFamily: 'monospace'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
