import 'package:flutter/material.dart';
import 'package:whatsapp/screens/call_screen.dart';
import 'package:whatsapp/screens/camera_screens.dart';
import 'package:whatsapp/screens/chat_screen.dart';
import 'package:whatsapp/screens/status_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TabBar tabBar = TabBar(
      indicatorColor: Colors.white,
      indicatorWeight: 4.0,
      controller: _tabController,
      tabs: const [
        Tab(
          icon: Icon(Icons.camera_alt),
        ),
        Tab(
          text: 'CHATS',
        ),
        Tab(
          text: 'ESTADOS',
        ),
        Tab(
          text: 'LLAMADAS',
        ),
      ],
    );

    AppBar appBar = AppBar(
      title: Text(
        'WhatsApp',
        style: Theme.of(context).textTheme.headline1,
      ),
      bottom: tabBar,
      actions: [
        const Icon(Icons.search, size: 36.0),
        const Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
        IconButton(
          icon: const Icon(
            Icons.more_vert,
            size: 36.0,
          ),
          onPressed: () {},
        ),
      ],
      elevation: 10.0,
      toolbarTextStyle: Theme.of(context).textTheme.headline3,
    );

    TabBarView tabBarView = TabBarView(
      controller: _tabController,
      children: const [
        CameraScreen(),
        ChatScreen(),
        StatusScreen(),
        CallScreen(),
      ],
    );

    floatingActionButton(Icon icon) {
      return FloatingActionButton(
        onPressed: () {},
        foregroundColor: Colors.white,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        child: icon,
      );
    }

    Widget floatingActionButtonStatus(Icon edit, Icon camera) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        //crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            foregroundColor: const Color(0xff49646c),
            backgroundColor: const Color(0xffebf4fc),
            child: edit,
          ),
          const SizedBox(
            height: 10,
          ),
          floatingActionButton(camera)
        ],
      );
    }

    return Scaffold(
        appBar: appBar,
        body: tabBarView,
        floatingActionButton: _tabController.index == 1
            ? floatingActionButton(
                const Icon(Icons.message),
              )
            : _tabController.index == 2
                ? floatingActionButtonStatus(
                    const Icon(Icons.edit),
                    const Icon(Icons.camera_alt),
                  )
                : _tabController.index == 3
                    ? floatingActionButton(const Icon(Icons.add_call))
                    : null);
  }
}
