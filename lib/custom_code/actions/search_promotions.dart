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

Future<List<PromotionsRecord>> searchPromotions(
    DateTime? startDate, DateTime? endDate, String? searchText) async {
  Query baseQuery = FirebaseFirestore.instance.collection('promotions');

  print('startDate: $startDate, endDate: $endDate, searchText: $searchText');

  if (startDate != null && endDate != null) {
    // 시작일과 종료일이 모두 지정된 경우
    baseQuery = baseQuery
        .where('start_date', isLessThanOrEqualTo: endDate)
        .where('end_date', isGreaterThanOrEqualTo: startDate);
  } else if (startDate != null) {
    // 시작일만 지정된 경우
    baseQuery = baseQuery.where('end_date', isGreaterThanOrEqualTo: startDate);
  } else if (endDate != null) {
    // 종료일만 지정된 경우
    baseQuery = baseQuery.where('start_date', isLessThanOrEqualTo: endDate);
  }

  if (searchText != null && searchText.isNotEmpty) {
    // promotion_name 필드에 대해 부분 문자열 검색을 수행
    baseQuery = baseQuery
        .where('promotion_name', isGreaterThanOrEqualTo: searchText)
        .where('promotion_name', isLessThanOrEqualTo: searchText + '\uf8ff');
  }

  print('Final Query: $baseQuery');

  QuerySnapshot querySnapshot = await baseQuery.get();

  print('Query Snapshot: ${querySnapshot.docs.length} documents found');

  List<PromotionsRecord> promotions = querySnapshot.docs.map((doc) {
    print('Document found: ${doc.data()}');
    return PromotionsRecord.fromSnapshot(doc);
  }).toList();

  // Print the promotions list to debug
  promotions.forEach((promo) {
    print(
        'Promotion: ${promo.promotionName}, Start Date: ${promo.startDate}, End Date: ${promo.endDate}');
  });
  print(promotions);
  return promotions;
}
