// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import "package:bento_design_system_mtd4px/backend/schema/structs/index.dart"
    as bento_design_system_mtd4px_data_schema;
import "package:bento_design_system_mtd4px/backend/schema/enums/enums.dart"
    as bento_design_system_mtd4px_enums;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// I want you to genereate an action which takes string as an argument and i am using flutter tts pubspec and it should speak the text
// Import the flutter_tts package
import 'package:flutter_tts/flutter_tts.dart';

// Create an instance of FlutterTts
FlutterTts flutterTts = FlutterTts();

/// Define the function
Future newCustomAction(String audiotext) async {
  // Set the language and other parameters if needed
  await flutterTts.setLanguage("en-US");
  await flutterTts.setSpeechRate(0.5);

  // Speak the provided text
  await flutterTts.speak(audiotext);
}
