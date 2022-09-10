import 'package:flutter/material.dart';
import 'package:ui_task_management/src/api/data/data.dart';
import 'package:ui_task_management/src/core/constants/constants.dart';
import 'package:ui_task_management/src/ui/views/tasks/tasks_view.dart';

class BoardsW extends StatelessWidget {
  final String icon;
  final String title;
  final BoardModel board;

  const BoardsW({
    Key? key,
    required this.icon,
    required this.title,
    required this.board,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: AspectRatio(
          aspectRatio: 2.2,
          child: Container(
            margin: const EdgeInsets.only(top: 18, bottom: 3),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.white),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    board.title,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    '${board.members.length} members',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .copyWith(color: AppColors.grey3),
                  ),
                ],
              ),
            ),
          ),
        ),
        onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      TasksView(icon: icon, title: title, board: board)),
            ));
  }
}
