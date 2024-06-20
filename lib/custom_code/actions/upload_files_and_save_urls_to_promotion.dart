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

// JSON 인코딩 및 디코딩을 위한 패키지 임포트
import 'dart:convert';
import 'package:firebase_storage/firebase_storage.dart'; // Firebase Storage import

// 주어진 프로모션 데이터와 PDF 파일 리스트를 Firestore에 저장하는 함수
Future<void> uploadFilesAndSaveUrlsToPromotion(
    PromotionsRecord promotionData, // 프로모션 데이터를 PromotionsRecord 형식으로 전달받음
    List<FileStruct> files // PDF 파일 리스트
    ) async {
  // 'promotions' 컬렉션의 참조를 가져옴
  final promotionsCollection =
      FirebaseFirestore.instance.collection('promotions');

  // 해당 프로모션 문서를 쿼리하여 참조를 가져옴
  final querySnapshot = await promotionsCollection
      .where('promotion_name', isEqualTo: promotionData.promotionName)
      .where('start_date', isEqualTo: promotionData.startDate)
      .where('end_date', isEqualTo: promotionData.endDate)
      .get();

  if (querySnapshot.docs.isNotEmpty) {
    final promotionDocRef = querySnapshot.docs.first.reference;

    // 생성된 프로모션 문서의 'pdfFiles' 서브컬렉션 참조를 가져옴
    final pdfFilesCollection = promotionDocRef.collection('pdfFiles');

    // 각 파일을 Firebase Storage에 업로드하고 Firestore에 URL을 저장
    for (var file in files) {
      String filePath = 'uploads/${file.fileName}';
      // Base64 문자열을 바이트 데이터로 변환
      Uint8List fileBytes = base64Decode(file.fileBase64!);
      try {
        // 파일 업로드
        TaskSnapshot snapshot =
            await FirebaseStorage.instance.ref(filePath).putData(fileBytes);
        // 다운로드 URL 가져오기
        String downloadUrl = await snapshot.ref.getDownloadURL();

        // 파일 크기 가져오기
        int fileSize = fileBytes.length;

        // Firestore의 promotions 컬렉션 내의 pdfFiles 서브컬렉션에 파일 정보 저장
        await pdfFilesCollection.add({
          'file_name': file.fileName,
          'file_url': downloadUrl,
          'file_size': fileSize, // 파일 크기 정보 추가
          'created_at': Timestamp.now(),
        });
        print('파일 업로드 및 URL 저장 성공: $downloadUrl');
      } catch (e) {
        print('파일 업로드 중 오류 발생: $e');
      }
    }
  } else {
    print('프로모션 문서를 찾을 수 없습니다.');
  }
}
