import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/my_workout.dart';

class FirestoreService {
  FirebaseFirestore _fs=FirebaseFirestore.instance;

  Future<void> createMyWorkout(MyWorkout myWorkout) async{
    try{
      final myWorkoutsCollection=_fs.collection('myworkouts');
      final docRef=await myWorkoutsCollection.add(myWorkout.toMap());
      await docRef.update({'id':docRef.id});
    }catch(e){
      throw Exception('db error:$e');
    }
  }

  Future<MyWorkout?> readMyWorkout(String workoutId) async {
    try{
      final myWorkoutsCollection=_fs.collection('myworkouts');
      final documentRef=myWorkoutsCollection.doc(workoutId);
      final documentSnapshot=await documentRef.get();
      if(!documentSnapshot.exists) throw Exception('no data');
      final mapData=documentSnapshot.data()!;
      return MyWorkout.fromMap(mapData);
    }catch(e){
      throw Exception('db error:$e');
    }
    return null;
  }
  Future<List<MyWorkout>> fetchAllMyWorkouts({required String uid, int limit=5, MyWorkout? lastWorkout}) async{
    try{
      final myWorkoutsCollection=_fs.collection('myworkouts');
      var query=myWorkoutsCollection
          .where('uid', isEqualTo: uid)
          .orderBy('createdAt')
          .orderBy('id')
          .limit(limit);
      if(lastWorkout != null){
        query=query.startAfter([Timestamp.fromDate(lastWorkout.createdAt),lastWorkout.id]);
      }

      final querySnapshot=await query.get();
      final qdSnapshotList=querySnapshot.docs;
      List<MyWorkout> returnData=[];
      for(final doc in qdSnapshotList){
        final mapData=doc.data();
        returnData.add(MyWorkout.fromMap(mapData));
      }
      return returnData;
    }catch(e){
      log('jh error index:\n${e.toString()}');
      throw Exception('db error:$e');
    }

  }

  Future<void> updateMyWorkout(MyWorkout myWorkout) async{
    try{
      final myWorkoutsCollection=_fs.collection('myworkouts');
      final documentRef=myWorkoutsCollection.doc(myWorkout.id);
      documentRef.update(myWorkout.toMap());
    }catch(e){
      throw Exception('db error:$e');
    }
  }

  Future<void> deleteMyWorkout(String workoutId) async{
    try{
      final myWorkoutsCollection=_fs.collection('myworkouts');
      final documentRef=myWorkoutsCollection.doc(workoutId);
      await documentRef.delete();
    }catch(e){
      throw Exception('db error:$e');
    }
  }

}