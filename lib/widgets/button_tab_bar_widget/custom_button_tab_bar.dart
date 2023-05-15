import 'package:flutter/material.dart';
import '/constants/colors_constant.dart';
import '/utils/button_tab_bar_utils/button_tab_bar_container.dart';
import '/utils/dimension/math_utils.dart';
import '/utils/scroll_behavior_utils/my_behavior.dart';
import '/utils/sliver_app_bar_utils/custom_sliver_app_bar.dart';
import '/utils/text_utils.dart/text_style.dart';

class CustomButtonTabBarScreen extends StatefulWidget {
  CustomButtonTabBarScreen(
      {required this.tabList,
      required this.children,
      this.appBarTitle,
      this.appBarLeadingIcon,
      this.tabBarHeight,
      this.actions,
      required this.columnChildren,
      this.appBarTextStyle,
      this.topPadding,
      Key? key})
      : super(key: key);

  final List<String> tabList;
  final List<Widget> children;
  String? appBarTitle;
  Widget? appBarLeadingIcon;
  double? tabBarHeight;
  List<Widget>? actions;
  List<Widget> columnChildren;
  TextStyle? appBarTextStyle;
  double? topPadding;

  @override
  State<CustomButtonTabBarScreen> createState() =>
      _CustomButtonTabBarScreenState();
}

class _CustomButtonTabBarScreenState extends State<CustomButtonTabBarScreen>
    with SingleTickerProviderStateMixin {
  // late List<String> tabList;

  late TabController _tabController;
  late List<Tab> tabs;

  @override
  void initState() {
    _tabController = TabController(
      length: widget.tabList.length,
      vsync: this,
      initialIndex: 0,
    );
    _tabController.animateTo(0);

    tabs = widget.tabList
        .map((e) => Tab(
              text: e,
            ))
        .toList();
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  updatePage(int index) {
    _tabController.animateTo(
      index,
      duration: const Duration(microseconds: 250),
      curve: Curves.easeOut,
    );

    // print('I am index: ${_tabController.index}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConstant.lightGrey,
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: CustomScrollView(
          physics: NeverScrollableScrollPhysics(),
          slivers: [
            CustomSliverAppBar(
              leading: widget.appBarLeadingIcon ?? const SizedBox.shrink(),
              actions: widget.actions,
              // appBarTitle: 'Property Details',
              appBarTitle: widget.appBarTitle ?? '',
              appBarTextStyle:
                  widget.appBarTextStyle ?? appBarTextStyle16(context),
              bottom: PreferredSize(
                preferredSize: Size(
                  double.maxFinite,
                  widget.tabBarHeight ?? getVerticalSize(60),
                ),
                child: Padding(
                  padding: getPadding(
                    left: getHorizontalSize(15),
                    bottom: getVerticalSize(16),
                    right: getHorizontalSize(15),
                  ),
                  child: Column(
                    children: [
                      ButtonTabBarContainer(
                        tabs: tabs,
                        controller: _tabController,
                        onTap: (index) => updatePage(index),
                      ),
                      Column(children: widget.columnChildren),
                    ],
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: getPadding(
                top: widget.topPadding ?? getVerticalSize(8),
              ),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Container(
                      color: ColorsConstant.white,
                      height: (MediaQuery.of(context).size.height -
                          MediaQuery.of(context).padding.top -
                          MediaQuery.of(context).padding.bottom -
                          AppBar().preferredSize.height -
                          (widget.topPadding ?? getVerticalSize(8)) -
                          (widget.tabBarHeight ?? getVerticalSize(60))),
                      child: TabBarView(
                          controller: _tabController,
                          children: widget.children),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
