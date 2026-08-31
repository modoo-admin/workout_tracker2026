import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:workout_tracker_2026/services/firebase_auth_service.dart';

import '../models/my_workout.dart';
import '../services/firestore_service.dart';

class MyWorkoutProvider extends ChangeNotifier{
  final _firestoreService=FirestoreService();
  final _auth=FirebaseAuthService();
  final List<MyWorkout> _workouts = [

  ];
  List<MyWorkout> get workouts{
    return UnmodifiableListView(_workouts);
  }
  Future<void> fetchAllMyWorkouts()async{
    if(_auth.user == null) return;
    final fetchedMyWorkouts=await _firestoreService.fetchAllMyWorkouts(_auth.user!.uid);
    _workouts.addAll(fetchedMyWorkouts);
    notifyListeners();
  }
  Future<void> addMyWorkout(MyWorkout myWorkout)async{
    myWorkout.uid=_auth.user?.uid;
    await _firestoreService.createMyWorkout(myWorkout);
    _workouts.add(myWorkout);
    //db에 추가 기능
    notifyListeners();
  }

  Future<void> deleteMyWorkout(int deleteIndex) async{
    _workouts.removeAt(deleteIndex);
    notifyListeners();
  }

  Future<void> updateMyWorkout({required List<bool> isSelected, required int workoutIndex,}) async{
    _workouts[workoutIndex].workoutDays=isSelected;
    notifyListeners();
  }

}