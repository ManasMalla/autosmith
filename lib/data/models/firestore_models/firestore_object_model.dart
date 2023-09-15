import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:autosmith/data/failure.dart';

abstract class FirestoreObjectModel<P, Q> {
  Either<Failure, P> getModelFromDocumentSnapshot(
      DocumentSnapshot<Map<String, dynamic>> documentSnapshot);
  Map<String, dynamic> toJson(P data);
  P fromEntity(Q entity);
  Q toEntity(P model);
}
