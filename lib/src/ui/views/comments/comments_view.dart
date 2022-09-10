import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_task_management/src/api/data/data.dart';
import 'package:ui_task_management/src/ui/views/comments/widgets/app_bar_w.dart';
import 'package:ui_task_management/src/ui/views/comments/widgets/send_comment_w.dart';
import 'package:ui_task_management/src/ui/views/comments/widgets/sliver_appbar_comments_w.dart';
import 'package:ui_task_management/src/ui/views/comments/widgets/user_feedback_w.dart';

class CommentsView extends StatefulWidget {
  final String title;
  final String tag;
  final int color;
  final List<CommentModel>? data;
  const CommentsView(
      {Key? key,
      required this.title,
      required this.tag,
      required this.color,
      required this.data})
      : super(key: key);

  @override
  State<CommentsView> createState() => _CommentsViewState();
}

class _CommentsViewState extends State<CommentsView> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const AppBarW(),
            Expanded(
                child: CustomScrollView(
              controller: scrollController,
              slivers: [
                SliverAppbarCommentsW(
                    title: widget.title, color: widget.color, tag: widget.tag),
                SliverPadding(
                  padding: const EdgeInsets.all(8.0),
                  sliver: SliverList(
                      delegate: SliverChildListDelegate([
                    UserFeedbackW(
                      data: widget.data,
                    )
                  ])),
                )
              ],
            )),
            const SendCommentW()
          ],
        ),
      ),
    );
  }
}
