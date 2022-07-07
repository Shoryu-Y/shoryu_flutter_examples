import 'package:amplify_app/common/colors.dart';
import 'package:flutter/material.dart';

enum TodoStatus {
  waiting,
  inProgress,
  done,
  archived,
  ;

  @override
  String toString() {
    switch (this) {
      case TodoStatus.waiting:
        return 'Waiting';
      case TodoStatus.inProgress:
        return 'InProgress';
      case TodoStatus.done:
        return 'Done';
      case TodoStatus.archived:
        return 'Archived';
    }
  }

  static TodoStatus fromString(String text) {
    switch (text) {
      case 'Waiting':
        return TodoStatus.waiting;
      case 'InProgress':
        return TodoStatus.inProgress;
      case 'Done':
        return TodoStatus.done;
      case 'Archived':
        return TodoStatus.archived;
      default:
        throw Exception('WrongTextException');
    }
  }

  Color get color {
    switch (this) {
      case TodoStatus.waiting:
        return AppColors.waitingColor;
      case TodoStatus.inProgress:
        return AppColors.inProgressColor;
      case TodoStatus.done:
        return AppColors.doneColor;
      case TodoStatus.archived:
        return AppColors.archiveColor;
    }
  }
}
