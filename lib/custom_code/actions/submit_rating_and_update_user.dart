// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

Future submitRatingAndUpdateUser(
  String toUserId,
  String fromUserId,
  int ratingScore,
) async {
  try {
    final firestore = FirebaseFirestore.instance;

    final userDataRef = firestore.collection('userData').doc(toUserId);
    final userDataDoc = await userDataRef.get();

    if (!userDataDoc.exists) {
      print('Document not found for id: $toUserId');
      return;
    }

    final currentAvg = (userDataDoc.data()?['avgRating'] ?? 0.0).toDouble();
    final currentCount = (userDataDoc.data()?['numRatings'] ?? 0) as int;

    final newCount = currentCount + 1;
    final newAvg = double.parse(
      (((currentAvg * currentCount) + ratingScore) / newCount)
          .toStringAsFixed(2),
    );

    await userDataRef.update({
      'avgRating': newAvg,
      'numRatings': newCount,
    });

    print('Successfully updated: avgRating=$newAvg numRatings=$newCount');
  } catch (e) {
    print('Error: $e');
  }
}
