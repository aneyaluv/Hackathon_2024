import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Text2Speech extends StatefulWidget {
  const Text2Speech({super.key});

  @override
  State<Text2Speech> createState() => _Text2SpeechState();
}

class _Text2SpeechState extends State<Text2Speech> {
  FlutterTts flutterTts = FlutterTts();
  final TextEditingController textController = TextEditingController();
  double volume = 1.0;
  double pitch = 1.0;
  double speechRate = 0.5;
  List<String>? languages;
  String langCode = 'en-US';

  @override
  void initState() {
    super.initState();
  }

  void init() async {
    languages = List<String>.from(await flutterTts.getLanguages);
    setState(() {});
  }

  void initSetting() async {}

  void _speakNow() async {
    await flutterTts.setVolume(volume);
    await flutterTts.setPitch(pitch);
    await flutterTts.setSpeechRate(speechRate);
    await flutterTts.setLanguage(langCode);
    await flutterTts.speak(textController.text);
  }

  // Future<void> speak(String text) async {
  //   await flutterTts.getLanguages;
  //   await flutterTts.setLanguage("en-US");
  //   await flutterTts.setVoice({"name": "Karen", "locale": "en-AU"});
  //   await flutterTts.setPitch(1);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak(text);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              TextField(
                controller: textController,
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    _speakNow();
                  },
                  child: const Text('Play me'))
            ],
          ),
        ),
      ),
    );
  }
}
