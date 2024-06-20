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

import 'dart:convert';
import 'package:file_picker/file_picker.dart';
import 'package:csv/csv.dart';
import 'dart:html' as html;

Future<List<ParticipantStruct>> uploadCsv() async {
  FilePickerResult? result = await FilePicker.platform
      .pickFiles(type: FileType.custom, allowedExtensions: ['csv']);

  if (result != null) {
    PlatformFile file = result.files.first;

    // 웹 환경에서 파일 내용을 읽어오기 위해 Blob을 사용
    final blob = html.Blob([file.bytes!]);
    final reader = html.FileReader();
    reader.readAsText(blob);
    await reader.onLoad.first;

    final content = reader.result as String;
    print('CSV 파일 내용:');
    print(content); // CSV 파일 내용 출력

    final fields = CsvToListConverter(eol: "\n").convert(content);
    print('파싱된 필드:');
    print(fields); // 파싱된 필드 출력

    if (fields.isNotEmpty) {
      List<String> headers = List<String>.from(fields[0]);
      print('헤더:');
      print(headers); // 헤더 출력

      List<ParticipantStruct> participants = fields.sublist(1).map((row) {
        var data =
            Map<String, String>.fromIterables(headers, row.cast<String>());
        return ParticipantStruct(
          name: data['name'] ?? '',
          phoneNumber: data['phone_number'] ?? '',
          email: data['email'] ?? '',
          company: data['company'] ?? '',
          rank: data['rank'] ?? '',
          department: data['department'] ?? '',
          responsibility: data['responsibility'] ?? '',
          useYn: data['use_yn'] ?? '',
          expirationDate: data['expiration_date'] ?? '',
        );
      }).toList();
      print('Participants:');
      print(participants); // 변환된 데이터 출력

      return participants;
    } else {
      print('파싱된 필드가 비어 있습니다.');
      return [];
    }
  } else {
    // 사용자가 파일 선택을 취소한 경우 빈 리스트 반환
    print('없음');
    return [];
  }
}
