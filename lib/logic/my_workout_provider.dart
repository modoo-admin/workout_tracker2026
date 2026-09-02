import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:workout_tracker_2026/services/firebase_auth_service.dart';

import '../models/my_workout.dart';
import '../services/firestore_service.dart';

class MyWorkoutProvider extends ChangeNotifier {
  final _firestoreService = FirestoreService();
  final _auth = FirebaseAuthService();
  final List<MyWorkout> _workouts = [];
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<MyWorkout> get workouts {
    return UnmodifiableListView(_workouts);
  }

  Future<void> fetchAllMyWorkouts() async {
    if (_auth.user == null || _isLoading) return;
    
    _isLoading = true;
    notifyListeners();

    try {
      final fetchedMyWorkouts = await _firestoreService.fetchAllMyWorkouts(
        uid: _auth.user!.uid,
        limit: 5,
        lastWorkout: _workouts.lastOrNull,
      );
      _workouts.addAll(fetchedMyWorkouts);
    } catch (e) {
      debugPrint('Error fetching workouts: $e');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> addMyWorkout(MyWorkout myWorkout) async {
    myWorkout.uid = _auth.user?.uid;
    await _firestoreService.createMyWorkout(myWorkout);
    _workouts.add(myWorkout);
    //db에 추가 기능
    notifyListeners();
  }

  Future<void> deleteMyWorkout(int deleteIndex) async {
    _firestoreService.deleteMyWorkout(_workouts[deleteIndex].id!);
    _workouts.removeAt(deleteIndex);
    notifyListeners();
  }

  Future<void> updateMyWorkout({
    required List<bool> isSelected,
    required int workoutIndex,
  }) async {
    _workouts[workoutIndex].workoutDays = isSelected;
    _firestoreService.updateMyWorkout(_workouts[workoutIndex]);
    notifyListeners();
  }
}
