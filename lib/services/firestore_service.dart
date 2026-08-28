import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/my_workout.dart';

class FirestoreService {
  FirebaseFirestore _fs=FirebaseFirestore.instance;

  Future<void> createMyWorkout(MyWorkout myWorkout) async{
    try{
      final myWorkoutsCollection=_fs.collection('myworkouts');
      Map<String,dynamic> createData={
        'name':myWorkout.name,
        'minutes':myWorkout.minutes,
        'imageURL':myWorkout.imageURL,
        'workoutDays':myWorkout.workoutDays,
      };
      await myWorkoutsCollection.add(createData);
    }catch(e){
      throw Exception('db error:$e');
    }
  }

  Future<MyWorkout?> readMyWorkout(String workoutId) async {
    try{

    }catch(e){
      throw Exception('db error:$e');
    }
    return null;
  }

  Future<void> updateMyWorkout(MyWorkout myWorkout) async{
    try{

    }catch(e){
      throw Exception('db error:$e');
    }
  }

  Future<void> deleteMyWorkout(String workoutId) async{
    try{

    }catch(e){
      throw Exception('db error:$e');
    }
  }

}