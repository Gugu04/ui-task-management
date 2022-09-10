import 'package:ui_task_management/src/core/constants/app_assets.dart';

const menu = ['All Boards', 'Teams', 'Personal'];

final List<MemberModel> lisMembers = [
  MemberModel(
      name: 'Carlos', lastnames: 'Lagos Medina', urlPhoto: AppAssets.perfil1),
  MemberModel(
      name: 'Oscar', lastnames: 'Ramirez Tapia', urlPhoto: AppAssets.perfil2),
  MemberModel(
      name: 'Karen', lastnames: 'Lopez Lopez', urlPhoto: AppAssets.perfil3),
  MemberModel(
      name: 'Samanta',
      lastnames: 'Gonzales Torres',
      urlPhoto: AppAssets.perfil4),
  MemberModel(
      name: 'Olga',
      lastnames: 'Alcantara Caudillo',
      urlPhoto: AppAssets.perfil5),
];

final List<ClusterModel> listData = [
  ClusterModel(icon: AppAssets.google, title: 'Google', boards: [
    BoardModel(
        title: 'Back End Development',
        members: lisMembers,
        taskCategories: [
          TaskCategoryModel(name: 'OPEN', color: 0xFFE837B3, tasks: [
            TaskModel(title: 'User Journey', comments: [
              CommentModel(
                  description: 'I need to know more user data',
                  member: lisMembers[0]),
              CommentModel(
                  description: 'let\'s have a meeting to review it',
                  member: lisMembers[1]),
              CommentModel(
                  description: 'It seems perfect to me I schedule the session',
                  member: lisMembers[2])
            ]),
            TaskModel(title: 'Create User Flow', description: ''),
            TaskModel(title: 'Interviews', comments: [
              CommentModel(
                  description:
                      'We need more developers and scientists for neural network modules',
                  member: lisMembers[1]),
              CommentModel(
                  description: 'Do we have vacancies for scientists?',
                  member: lisMembers[3]),
              CommentModel(
                  description: 'If we already have the exams',
                  member: lisMembers[0]),
              CommentModel(
                  description:
                      'They send me the invitation for that session I want to be present at that session',
                  member: lisMembers[2]),
              CommentModel(
                  description: 'Ok I wait for the invitation email',
                  member: lisMembers[4]),
              CommentModel(
                  description:
                      'Check your email, the invitation has already been sent',
                  member: lisMembers[2])
            ]),
            TaskModel(title: 'Usability Tests', comments: [
              CommentModel(
                  description: 'I\'m in charge of doing the tests',
                  member: lisMembers[3]),
              CommentModel(
                  description: 'Ok i need help tell me', member: lisMembers[0])
            ]),
            TaskModel(title: 'Tests on different devices', comments: [
              CommentModel(
                  description:
                      'I need the requested devices otherwise I can\'t move forward',
                  member: lisMembers[0])
            ]),
          ]),
          TaskCategoryModel(name: 'IN PROGRESS', color: 0xFF3DCDFF, tasks: [
            TaskModel(title: 'Configure servers'),
            TaskModel(title: 'Object recognition'),
          ]),
          TaskCategoryModel(name: 'BUGS', color: 0xFFD50E45, tasks: [
            TaskModel(title: 'Date format', comments: [
              CommentModel(
                  description:
                      'On the main screen sometimes it shows the date format well',
                  member: lisMembers[4]),
              CommentModel(description: 'Ok i check it', member: lisMembers[3])
            ]),
          ]),
          TaskCategoryModel(name: 'SUCCESSFUL', color: 0xFF3DB045, tasks: [
            TaskModel(
                title: 'Natural Language Processing',
                description: 'English and Spanish languages',
                comments: [
                  CommentModel(
                      description:
                          '90% to 95% emotion recognition was obtained',
                      member: lisMembers[2]),
                  CommentModel(
                      description: 'Great.. good job', member: lisMembers[1])
                ]),
            TaskModel(
                title: 'Facial recognition',
                description: 'English and Spanish languages',
                comments: [
                  CommentModel(
                      description:
                          'the tests are over everything perfect already recognizes different people from 5 countries',
                      member: lisMembers[3]),
                  CommentModel(
                      description: 'Great.. good job', member: lisMembers[4])
                ]),
          ]),
        ]),
    BoardModel(title: 'Design Tasks', members: lisMembers, taskCategories: [
      TaskCategoryModel(name: 'OPEN', color: 0xFFE837B3, tasks: [
        TaskModel(title: 'User Journey', comments: [
          CommentModel(
              description: 'I need to know more user data',
              member: lisMembers[0]),
          CommentModel(
              description: 'let\'s have a meeting to review it',
              member: lisMembers[1]),
          CommentModel(
              description: 'It seems perfect to me I schedule the session',
              member: lisMembers[2])
        ]),
        TaskModel(title: 'Create User Flow', description: ''),
        TaskModel(title: 'Interviews', comments: [
          CommentModel(
              description:
                  'We need more developers and scientists for neural network modules',
              member: lisMembers[1]),
          CommentModel(
              description: 'Do we have vacancies for scientists?',
              member: lisMembers[3]),
          CommentModel(
              description: 'If we already have the exams',
              member: lisMembers[0]),
          CommentModel(
              description:
                  'They send me the invitation for that session I want to be present at that session',
              member: lisMembers[2]),
          CommentModel(
              description: 'Ok I wait for the invitation email',
              member: lisMembers[4]),
          CommentModel(
              description:
                  'Check your email, the invitation has already been sent',
              member: lisMembers[2])
        ]),
        TaskModel(title: 'Usability Tests', comments: [
          CommentModel(
              description: 'I\'m in charge of doing the tests',
              member: lisMembers[0]),
          CommentModel(
              description: 'Ok i need help tell me', member: lisMembers[0])
        ]),
        TaskModel(title: 'Tests on different devices', comments: [
          CommentModel(
              description:
                  'I need the requested devices otherwise I can\'t move forward',
              member: lisMembers[0])
        ]),
      ]),
      TaskCategoryModel(name: 'IN PROGRESS', color: 0xFF3DCDFF, tasks: [
        TaskModel(title: 'Configure servers'),
        TaskModel(title: 'Object recognition'),
      ]),
      TaskCategoryModel(name: 'BUGS', color: 0xFFD50E45, tasks: [
        TaskModel(title: 'Date format', comments: [
          CommentModel(
              description:
                  'On the main screen sometimes it shows the date format well',
              member: lisMembers[4]),
          CommentModel(description: 'Ok i check it', member: lisMembers[3])
        ]),
      ]),
      TaskCategoryModel(name: 'SUCCESSFUL', color: 0xFF3DB045, tasks: [
        TaskModel(
            title: 'Natural Language Processing',
            description: 'English and Spanish languages',
            comments: [
              CommentModel(
                  description: '90% to 95% emotion recognition was obtained',
                  member: lisMembers[2]),
              CommentModel(
                  description: 'Great.. good job', member: lisMembers[1])
            ]),
        TaskModel(
            title: 'Facial recognition',
            description: 'English and Spanish languages',
            comments: [
              CommentModel(
                  description:
                      'the tests are over everything perfect already recognizes different people from 5 countries',
                  member: lisMembers[3]),
              CommentModel(
                  description: 'Great.. good job', member: lisMembers[4])
            ]),
      ]),
    ])
  ]),
  ClusterModel(icon: AppAssets.facebook, title: 'Facebook, Inc', boards: [
    BoardModel(
        title: 'Front End Development',
        members: lisMembers,
        taskCategories: [
          TaskCategoryModel(name: 'OPEN', color: 0xFFE837B3, tasks: [
            TaskModel(title: 'User Journey', comments: [
              CommentModel(
                  description: 'I need to know more user data',
                  member: lisMembers[0]),
              CommentModel(
                  description: 'let\'s have a meeting to review it',
                  member: lisMembers[1]),
              CommentModel(
                  description: 'It seems perfect to me I schedule the session',
                  member: lisMembers[2])
            ]),
            TaskModel(title: 'Create User Flow', description: ''),
            TaskModel(title: 'Interviews', comments: [
              CommentModel(
                  description:
                      'We need more developers and scientists for neural network modules',
                  member: lisMembers[1]),
              CommentModel(
                  description: 'Do we have vacancies for scientists?',
                  member: lisMembers[3]),
              CommentModel(
                  description: 'If we already have the exams',
                  member: lisMembers[0]),
              CommentModel(
                  description:
                      'They send me the invitation for that session I want to be present at that session',
                  member: lisMembers[2]),
              CommentModel(
                  description: 'Ok I wait for the invitation email',
                  member: lisMembers[4]),
              CommentModel(
                  description:
                      'Check your email, the invitation has already been sent',
                  member: lisMembers[2])
            ]),
            TaskModel(title: 'Usability Tests', comments: [
              CommentModel(
                  description: 'I\'m in charge of doing the tests',
                  member: lisMembers[1]),
              CommentModel(
                  description: 'Ok i need help tell me', member: lisMembers[0])
            ]),
            TaskModel(title: 'Tests on different devices', comments: [
              CommentModel(
                  description:
                      'I need the requested devices otherwise I can\'t move forward',
                  member: lisMembers[0])
            ]),
          ]),
          TaskCategoryModel(name: 'IN PROGRESS', color: 0xFF3DCDFF, tasks: [
            TaskModel(title: 'Configure servers'),
            TaskModel(title: 'Object recognition'),
          ]),
          TaskCategoryModel(name: 'BUGS', color: 0xFFD50E45, tasks: [
            TaskModel(title: 'Date format', comments: [
              CommentModel(
                  description:
                      'On the main screen sometimes it shows the date format well',
                  member: lisMembers[4]),
              CommentModel(description: 'Ok i check it', member: lisMembers[3])
            ]),
          ]),
          TaskCategoryModel(name: 'SUCCESSFUL', color: 0xFF3DB045, tasks: [
            TaskModel(
                title: 'Natural Language Processing',
                description: 'English and Spanish languages',
                comments: [
                  CommentModel(
                      description:
                          '90% to 95% emotion recognition was obtained',
                      member: lisMembers[2]),
                  CommentModel(
                      description: 'Great.. good job', member: lisMembers[1])
                ]),
            TaskModel(
                title: 'Facial recognition',
                description: 'English and Spanish languages',
                comments: [
                  CommentModel(
                      description:
                          'the tests are over everything perfect already recognizes different people from 5 countries',
                      member: lisMembers[3]),
                  CommentModel(
                      description: 'Great.. good job', member: lisMembers[4])
                ]),
          ]),
        ])
  ])
];

class ClusterModel {
  String icon;
  String title;
  List<BoardModel> boards;
  ClusterModel({
    required this.icon,
    required this.title,
    required this.boards,
  });
}

class BoardModel {
  String title;
  List<MemberModel> members;
  List<TaskCategoryModel> taskCategories;
  BoardModel(
      {required this.title,
      required this.members,
      required this.taskCategories});
}

class TaskCategoryModel {
  String name;
  int color;
  List<TaskModel> tasks;
  TaskCategoryModel({
    required this.name,
    required this.color,
    required this.tasks,
  });
}

class TaskModel {
  String title;
  String? description;
  List<CommentModel>? comments;
  TaskModel({
    required this.title,
    this.description,
    this.comments,
  });
}

class CommentModel {
  String description;
  MemberModel member;
  List<String>? links;
  CommentModel({
    required this.description,
    required this.member,
    this.links,
  });
}

class MemberModel {
  String name;
  String lastnames;
  String urlPhoto;
  MemberModel({
    required this.name,
    required this.lastnames,
    required this.urlPhoto,
  });
}
