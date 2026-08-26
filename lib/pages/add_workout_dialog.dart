//filename:add_workout_dialog.dart
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../services/firebase_storage_service.dart';

class AddWorkoutDialog extends StatefulWidget {
  AddWorkoutDialog({super.key});

  @override
  State<AddWorkoutDialog> createState() => _AddWorkoutDialogState();
}

class _AddWorkoutDialogState extends State<AddWorkoutDialog> {
  
  Future<void> _pickImage() async {
    //이미지 선택 코드
  }
  Future<String?> uploadWorkout(XFile? pickedFile) async {
    //이미지 upload 코드
  }
  String? newWorkoutTitle;
  int? newWorkoutMinutes;

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    TextTheme textTheme=Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: colorScheme.onPrimary
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 18,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Center(
              child: Text(
                  '나만의 운동 추가하기',
                  style:textTheme.titleLarge?.copyWith(
                      color: colorScheme.shadow,
                      fontWeight: FontWeight.bold
                  )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              onChanged: (value){
                newWorkoutTitle=value;
              },
              decoration: InputDecoration(
                labelText: '운동명',
                labelStyle: Theme.of(context).textTheme.headlineSmall,
                border: UnderlineInputBorder(),
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
              autofocus: true,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '이미지',
                style: textTheme.titleSmall?.copyWith(
                  color: colorScheme.shadow,
                ),
              ),
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  image:null,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey.shade300, width: 1),
                ),
              ),
              GestureDetector(
                onTap: _pickImage,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.grey.shade300, width: 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '이미지 변경',
                      style: textTheme.bodySmall?.copyWith(
                        color: colorScheme.outline,
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              onChanged: (value){
                newWorkoutMinutes=int.parse(value);
              },
              decoration: InputDecoration(
                labelText: '운동 시간',
                labelStyle: textTheme.headlineSmall,
                border: UnderlineInputBorder(),
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),

            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
              ),
              color: colorScheme.primary,
            ),
            height: 50,
            width: double.infinity,
            child: TextButton(
              onPressed: () {
              },
              child: Text(
                '운동 추가',
                style: textTheme.titleLarge?.copyWith(
                  color: colorScheme.onPrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}