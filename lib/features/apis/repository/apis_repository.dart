import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:devhub/core/providers/firebase_providers.dart';
import 'package:devhub/model/api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';

import '../../../core/constants/firebase_constants.dart';
import '../../../core/failure.dart';
import '../../../core/typedefs.dart';

final apiRepositoryProvider = Provider((ref) {
  return ApiRepository(
    firestore: ref.watch(firestoreProvider),
  );
});

class ApiRepository {
  final FirebaseFirestore _firestore;

  ApiRepository({
    required FirebaseFirestore firestore,
  }) : _firestore = firestore;

  CollectionReference get _apis =>
      _firestore.collection(FirebaseConstants.apisCollection);

  FutureVoid addApi({
    required ApiModel apiModel,
  }) async {
    try {
      return right(
        _apis.doc().set(
              apiModel.toMap(),
            ),
      );
    } on FirebaseException catch (e) {
      throw e.toString();
    } catch (e) {
      return left(Failure(error: e.toString()));
    }
  }

  Stream<List<ApiModel>> getAllApis() {
    return _firestore
        .collection(FirebaseConstants.apisCollection)
        .snapshots()
        .map(
      (event) {
        List<ApiModel> communities = [];
        for (var doc in event.docs) {
          communities.add(ApiModel.fromMap(doc.data()));
        }

        return communities;
      },
    );
  }

  Stream<List<ApiModel>> getTopPicks() {
    return _firestore
        .collection(FirebaseConstants.apisCollection)
        .snapshots()
        .map(
      (event) {
        List<ApiModel> communities = [];
        for (var doc in event.docs) {
          communities.add(ApiModel.fromMap(doc.data()));
        }

        return communities;
      },
    );
  }

  Stream<List<ApiModel>> searchCommunity(String query) {
    return _apis //   Search Algorithm
        .where(
          'API',
          isGreaterThanOrEqualTo:
              query.isEmpty ? 0 : query, // no suggetions if query is 0
          isLessThan: query.isEmpty
              ? null
              : query.substring(0, query.length - 1) +
                  String.fromCharCode(
                    query.codeUnitAt(query.length - 1) + 1,
                  ),
        )
        .snapshots()
        .distinct()
        .map((event) {
      List<ApiModel> communities = [];
      for (var community in event.docs) {
        communities
            .add(ApiModel.fromMap(community.data() as Map<String, dynamic>));
      }
      return communities;
    });
  }
}
