import 'package:flutter/material.dart';

class TelegramMainPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _keyScaffold = GlobalKey();
  Size? _size;

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Scaffold(
      key: _keyScaffold,
      appBar: _setAppBar(),
      drawer: _getDrawer(),
      body: _getBody(),
    );
  }

  AppBar _setAppBar() => AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Plus Messenger"),
        actions: [
          _setIconButton(Icons.lock_open_outlined),
          _setIconButton(Icons.search),
          _setIconButton(Icons.folder_open_outlined),
        ],
      );

  IconButton _setIconButton(IconData icon) =>
      IconButton(onPressed: () {}, icon: Icon(icon));

  Drawer _getDrawer() => Drawer(
        child: ListView(
          children: [
            _drawerHeader(),
            _setCategory("New Group", Icons.group_outlined),
            _setCategory("New Secret Chat", Icons.lock_outline),
            _setCategory("New Channel", Icons.campaign_outlined),
            _setDivider(),
            _setCategory("Contacts", Icons.person_outline_outlined),
            _setCategory("Folders", Icons.folder_outlined),
            _setCategory("People Neraby", Icons.location_on_outlined),
            _setCategory("Saved Messages", Icons.bookmark_border),
            _setCategory("Calls Messages", Icons.local_phone_outlined),
            _setCategory("Settings", Icons.settings_suggest_outlined),
            _setDivider(),
            _setCategory("Plus Settings", Icons.add_circle_outline_rounded),
            _setCategory("Categories", Icons.folder_open_outlined),
            _setCategory("Invite friends", Icons.person_add_alt),
          ],
        ),
      );

  Divider _setDivider() => const Divider();

  UserAccountsDrawerHeader _drawerHeader() => const UserAccountsDrawerHeader(
        accountName: Text("Shohruh"),
        accountEmail: Text("+998931234567"),
        currentAccountPicture: CircleAvatar(
          backgroundImage: AssetImage("assets/images/telegram_avatar.png"),
        ),
        decoration: BoxDecoration(color: Colors.teal),
        otherAccountsPictures: [
          CircleAvatar(
            child: Icon(
              Icons.dark_mode,
              color: Colors.white,
            ),
            backgroundColor: Colors.transparent,
          )
        ],
      );

  ListTile _setCategory(String title, IconData icon) => ListTile(
        leading: Icon(
          icon,
          color: Colors.teal,
        ),
        title: Text(title),
        onTap: () {},
      );

  ListView _getBody() => ListView(
        children: const [
          ListTile(),
          ListTile(),
        ],
      );
}
