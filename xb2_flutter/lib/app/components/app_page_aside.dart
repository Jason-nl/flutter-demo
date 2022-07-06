import 'package:flutter/material.dart';

class AppPageAside extends StatelessWidget {
  const AppPageAside({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Leif'),
            accountEmail: Text('15311418932@163.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/37042037?s=40&v=4'),
            ),
          ),
          ListTile(
            title: const Text(
              '作品',
              textAlign: TextAlign.right,
            ),
            trailing: const Icon(
              Icons.image_outlined,
              color: Colors.black12,
              size: 22,
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              '评论',
              textAlign: TextAlign.right,
            ),
            trailing: const Icon(
              Icons.comment_outlined,
              color: Colors.black12,
              size: 22,
            ),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text(
              '账户',
              textAlign: TextAlign.right,
            ),
            trailing: const Icon(
              Icons.manage_accounts_outlined,
              color: Colors.black12,
              size: 22,
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              '管理',
              textAlign: TextAlign.right,
            ),
            trailing: const Icon(
              Icons.collections_outlined,
              color: Colors.black12,
              size: 22,
            ),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text(
              '退出',
              textAlign: TextAlign.right,
            ),
            trailing: const Icon(
              Icons.logout_outlined,
              color: Colors.black12,
              size: 22,
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
