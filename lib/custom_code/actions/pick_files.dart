// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:file_picker/file_picker.dart';
import 'dart:convert'; // Base64 인코딩을 위해 필요

Future<List<FileStruct>> pickFiles(BuildContext context) async {
  try {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
      allowMultiple: true,
      withData: true, // 웹 플랫폼에서 bytes 속성을 사용
    );

    if (result != null) {
      List<PlatformFile> files = result.files;
      List<FileStruct> uploadedFiles = files.map((file) {
        String? base64String;
        if (file.bytes != null) {
          base64String = base64Encode(file.bytes!);
        }
        return FileStruct(
          fileName: file.name,
          fileBase64: base64String,
        );
      }).toList();
      print('파일 내용: $uploadedFiles');
      return uploadedFiles;
    } else {
      print('파일 선택 취소됨');
      return [];
    }
  } catch (e) {
    print('파일 선택 중 오류 발생: $e');
    return [];
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
