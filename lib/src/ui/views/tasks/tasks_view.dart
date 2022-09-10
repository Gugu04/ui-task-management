import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_task_management/src/api/data/data.dart';
import 'package:ui_task_management/src/ui/components/navigation_bar_options.dart';
import 'package:ui_task_management/src/ui/views/tasks/widgets/cluster_details_w.dart';
import 'package:ui_task_management/src/ui/views/tasks/widgets/sliver_appbar_taks_w.dart';
import 'package:ui_task_management/src/ui/views/tasks/widgets/taks_w.dart';

class TasksView extends StatefulWidget {
  final String icon;
  final String title;
  final BoardModel board;
  const TasksView({
    Key? key,
    required this.icon,
    required this.title,
    required this.board,
  }) : super(key: key);

  @override
  State<TasksView> createState() => _TasksViewState();
}

class _TasksViewState extends State<TasksView> {
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
    final scrollController = ScrollController();
    return Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClusterDetailsW(
                  icon: widget.icon, title: widget.title, board: widget.board),
              Expanded(
                child: NestedScrollView(
                    controller: scrollController,
                    physics: const BouncingScrollPhysics(),
                    headerSliverBuilder:
                        (BuildContext context, bool innerBoxIsScrolled) {
                      return [const SliverAppbarTaksW()];
                    },
                    body: TaksW(board: widget.board)),
              )
            ],
          ),
        ),
        bottomNavigationBar: const NavigationBarOptions());
  }
}
