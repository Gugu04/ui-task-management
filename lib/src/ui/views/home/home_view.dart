import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_task_management/src/api/data/data.dart';
import 'package:ui_task_management/src/ui/components/app_icon.dart';
import 'package:ui_task_management/src/ui/components/navigation_bar_options.dart';
import 'package:ui_task_management/src/ui/views/home/widgets/boards_w.dart';
import 'package:ui_task_management/src/ui/views/home/widgets/button_add_w.dart';
import 'package:ui_task_management/src/ui/views/home/widgets/cluster_w.dart';
import 'package:ui_task_management/src/ui/views/home/widgets/sliver_appbar_home_w.dart';
import 'package:ui_task_management/src/ui/views/home/widgets/title_options_w.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
    return Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [AppIcon(), ButtonAddW()],
                  ),
                  const TitleOptionsW(),
                ],
              ),
            ),
            Expanded(
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  const SliverAppbarHomeW(),
                  SliverList(
                      delegate: SliverChildListDelegate([
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28),
                      child: Column(
                          children: listData
                              .map((cluster) => Column(
                                    children: [
                                      ClusterW(data: cluster),
                                      ...cluster.boards
                                          .map((board) => BoardsW(
                                              icon: cluster.icon,
                                              title: cluster.title,
                                              board: board))
                                          .toList()
                                    ],
                                  ))
                              .toList()),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ]))
                ],
              ),
            ),
          ],
        )),
        bottomNavigationBar: const NavigationBarOptions());
  }
}
