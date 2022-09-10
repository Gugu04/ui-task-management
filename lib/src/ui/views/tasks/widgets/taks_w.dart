import 'package:flutter/material.dart';
import 'package:ui_task_management/src/api/data/data.dart';
import 'package:ui_task_management/src/ui/views/comments/comments_view.dart';
import 'package:ui_task_management/src/ui/views/tasks/widgets/task_category_options_w.dart';
import 'package:ui_task_management/src/ui/views/tasks/widgets/task_item_w.dart';

class TaksW extends StatelessWidget {
  final BoardModel board;

  const TaksW({Key? key, required this.board}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController horizontal = ScrollController();
    // final ScrollController vertical = ScrollController();

    return ListView(children: [
      SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          controller: horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: board.taskCategories.map((item) {
                var color = item.color;
                var tag = item.name;
                return SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 12, right: 12, bottom: 12),
                    child: Column(
                      children: [
                        TaskCategoryOptionsW(title: tag, color: color),
                        const SizedBox(
                          height: 23,
                        ),
                        if (item.tasks.isNotEmpty) ...[
                          ...item.tasks
                              .map((item) => GestureDetector(
                                  child: TaskItemW(color: color, item: item),
                                  onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => CommentsView(
                                                title: item.title,
                                                tag: tag,
                                                color: color,
                                                data: item.comments,
                                              )))))
                              .toList()
                        ]
                      ],
                    ),
                  ),
                );
              }).toList())),
    ]);
  }
}
