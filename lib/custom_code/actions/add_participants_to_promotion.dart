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
import 'package:cloud_firestore/cloud_firestore.dart'; // Firestore에 액세스하기 위한 패키지 임포트

// PromotionsRecord 확장하여 toMap 메서드 추가
extension PromotionsRecordExtension on PromotionsRecord {
  Map<String, dynamic> toMap() {
    return {
      'start_date': startDate,
      'end_date': endDate,
      'promotion_name': promotionName,
      'host': host,
      'organizer': organizer,
      'description': description,
      'field': field,
      'last_modified_user': lastModifiedUser,
      'last_modified_date': lastModifiedDate,
      'created_user': createdUser,
      'created_date': createdDate,
      'participation_method': participationMethod,
    };
  }
}

// 주어진 프로모션 데이터와 참가자 리스트를 Firestore에 저장하는 함수
Future<void> addParticipantsToPromotion(
    PromotionsRecord promotionData, // 프로모션 데이터를 PromotionsRecord 형식으로 전달받음
    List<ParticipantStruct> participants // 참가자 리스트
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

    // 생성된 프로모션 문서의 'participants' 서브컬렉션 참조를 가져옴
    final participantsCollection = promotionDocRef.collection('participants');

    // 각 참가자를 'participants' 서브컬렉션에 추가
    for (var participant in participants) {
      // 참가자 데이터를 맵 형태로 변환
      final participantData = {
        'name': participant.name, // 참가자의 이름
        'phone_number': participant.phoneNumber, // 참가자의 전화번호
        'email': participant.email, // 참가자의 이메일
        'company': participant.company, // 참가자의 회사
        'rank': participant.rank, // 참가자의 직급
        'department': participant.department, // 참가자의 부서
        'responsibility': participant.responsibility, // 참가자의 담당 업무
        'use_yn': participant.useYn, // 참가자의 사용 여부 (Y/N)
        'expiration_date': participant.expirationDate, // 참가자의 만료일
      };

      // 참가자 데이터를 'participants' 서브컬렉션에 추가
      await participantsCollection.add(participantData);
    }
  } else {
    print('프로모션 문서를 찾을 수 없습니다.');
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
