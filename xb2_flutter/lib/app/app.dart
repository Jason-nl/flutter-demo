import 'package:flutter/material.dart';
import 'package:xb2_flutter/app/components/app_page_aside.dart';
import 'package:xb2_flutter/app/theme/app_theme.dart';

import 'components/app_floating_action_button.dart';
import 'components/app_page_bottom.dart';
import 'components/app_page_header.dart';
import 'components/app_page_main.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // 底部导航栏当前项目
  int currentAppBottomNavigationBarItem = 0;

  // 是否显示应用栏
  bool showAppBar = true;

  // 点击底部导航栏事件处理
  void onTapAppBottomNavigationBarItem(int index) {
    setState(() {
      currentAppBottomNavigationBarItem = index;
      showAppBar = index == 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        debugShowCheckedModeBanner: false,
        // 构建Material风格的页面Scaffold
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            // 设置页面顶部的应用栏AppBar
            appBar: showAppBar ? const AppPageHeader() : null,
            backgroundColor: Colors.amber,
            // 标签视图TabBarView配合上方标签栏AppBar的TabBar使用
            body: AppPageMain(currentIndex: currentAppBottomNavigationBarItem),
            bottomNavigationBar: AppPageBottom(
              onTap: onTapAppBottomNavigationBarItem,
              currentIndex: currentAppBottomNavigationBarItem,
            ),
            floatingActionButton: const AppFloatingActionButton(),
            drawer: const AppPageAside(),
          ),
        ));
  }

  void printName() {
    print('Leif');
  }
}

Widget elevatedButton(printName) {
  return ElevatedButton(onPressed: printName, child: const Text('Leif'));
}

class Decoration extends StatelessWidget {
  const Decoration({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(60),
        alignment: Alignment.topCenter,
        // color: Colors.deepPurpleAccent,
        width: 350,
        height: 350,
        // transform: Matrix4.rotationZ(0.5),
        // transformAlignment: Alignment.topRight,
        // Container的装饰器组件
        decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
            gradient: const LinearGradient(
                colors: [Colors.yellow, Colors.pink, Colors.blue, Colors.cyan]),
            image: const DecorationImage(
                image: NetworkImage(
                    "https://ninghao.net/files/showcase/nid-02-showcase.jpg"),
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(Colors.deepOrange, BlendMode.softLight)),
            borderRadius: const BorderRadius.all(Radius.circular(25)),
            border: Border.all(
                color: Colors.deepOrangeAccent,
                width: 5,
                style: BorderStyle.solid),
            boxShadow: const [
              BoxShadow(
                  color: Colors.deepOrangeAccent,
                  offset: Offset(5, 20),
                  blurRadius: 30)
            ]),
        child: Image.asset(
          "assets/images/logo.png",
          width: 96,
          color: Colors.white,
        ),
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://ninghao.net/files/showcase/nid-02-showcase.jpg",
      width: 350,
      height: 350,
      // 在保持原有图像比例的情况下，覆盖这块空间
      fit: BoxFit.cover,
      // 配置图像在这块空间的对齐方式
      alignment: Alignment.bottomRight,
      // 设置颜色
      color: Colors.brown,
      // 颜色的混合模式: 柔光
      colorBlendMode: BlendMode.softLight,
    );
  }
}

class PoemWidget extends StatelessWidget {
  const PoemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        textDirection: TextDirection.ltr,
        text: const TextSpan(
            style: TextStyle(fontSize: 22.0),
            text: "犬吠水声中,",
            children: [
              TextSpan(
                  text: "桃花",
                  style: TextStyle(
                      color: Colors.pinkAccent, fontWeight: FontWeight.bold)),
              TextSpan(
                text: "带露浓.",
              )
            ]));
  }
}
