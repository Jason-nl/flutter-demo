import 'package:flutter/material.dart';

class AppBottomSheet extends StatelessWidget {
  const AppBottomSheet({Key? key}) : super(key: key);

  // 显示操作提示
  void showAppSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('提交成功'),
        action: SnackBarAction(
          textColor: Colors.amber,
          label: '关闭',
          onPressed: () {},
        ),
        duration: const Duration(seconds: 3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, -20),
            blurRadius: 30,
          ),
        ],
      ),
      child: Center(
        child: TextButton(
          child: const Text('提交'),
          onPressed: () async {
            // 显示对话框
            final result = await showAppAlertDialog(context);
            print('showAppAlertDialog: $result');

            if (result != null && result) {
              showAppSnackBar(context);
            }
          },
        ),
      ),
    );
  }

  Future<bool?> showAppAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('确定提交'),
              content: const Text('提交以后无法恢复, 确定要提交吗？'),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context, false),
                    child: const Text('取消')),
                TextButton(
                    onPressed: () => Navigator.pop(context, true),
                    child: const Text('确定')),
              ],
            ));
  }
}
