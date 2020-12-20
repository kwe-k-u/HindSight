


import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'package:path_provider/path_provider.dart';


class DataManager {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/gameData.txt');
  }

  Future<String> readFile() async {
    try {
      final file = await _localFile;

      // Read the file
      String contents = await file.readAsString();

      return contents;
    } catch (e) {

      print ("read failed");
      return null;
    }
  }

  Future<File> writeFile(String map) async {
    final file = await _localFile;

    // Write the file
    try {
      return file.writeAsString(map.toString());
    } catch(e){

      return null;
    }

  }
}