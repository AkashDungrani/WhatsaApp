import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:whatsapp/views/component/calls.dart';
import 'package:whatsapp/views/component/chats.dart';
import 'package:whatsapp/views/component/community.dart';
import 'package:whatsapp/views/component/setting.dart';
import 'package:whatsapp/views/component/status.dart';

import 'models/globls.dart';

void main() {
  runApp(
    Whatssapp(),
  );
}

class Whatssapp extends StatefulWidget {
  const Whatssapp({super.key});

  @override
  State<Whatssapp> createState() => _WhatssappState();
}

class _WhatssappState extends State<Whatssapp>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  PageController pagecontroller = PageController();
  int currentpage = 0;
  int cupertinoindex = 0;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  int initialpage = 0;
  @override
  Widget build(BuildContext context) {
    return (Globals.isios == false)
        ? MaterialApp(
            theme: ThemeData(
                buttonTheme: ButtonThemeData(),
                primarySwatch: Colors.blueGrey,
                // elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(backgroundColor: MaterialStateProperty<Color>Colors.bluegrey)),
                appBarTheme: AppBarTheme(
                    backgroundColor: Color(0xff075e55),
                    foregroundColor: Colors.white)),
            home: Scaffold(
              drawer: Drawer(
                  child: Container(
                    color: Colors.blue,
                    child: Switch(
                value: Globals.isios,
                onChanged: (val) {
                    setState(() {
                      Globals.isios = val;
                    });
                },
                inactiveTrackColor: Colors.white,
              ),
                  )),
              appBar: AppBar(
                title: Text("Whatsapp"),
                centerTitle: false,
                actions: [
                  Icon(Icons.camera_alt_outlined),
                  SizedBox(width: 14,),
                  Icon(Icons.search),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.more_vert_outlined),
                  SizedBox(width: 14,),
                ],
                bottom: TabBar(
                  indicatorWeight: 3,
                  indicatorColor: Colors.white,
                  onTap: (val) {
                    setState(() {
                      currentpage = val;
                    });
                    pagecontroller.animateToPage(val,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut);
                  },
                  controller: tabController,
                  tabs: [
                    Tab(
                      child: Text("Chat"),
                      // icon: Icon(Icons.chat),
                    ),
                    Tab(
                      child: Text("Status"),
                      // icon: Icon(Icons.call),
                    ),
                    Tab(
                      child: Text("Calls"),
                      // icon: Icon(Icons.settings),
                    ),
                    // Tab(
                    //   child: Text("Stepper"),
                    //   icon: Icon(Icons.settings),
                    // )
                  ],
                ),
              ),
              body: PageView(
                controller: pagecontroller,
                onPageChanged: (val) {
                  setState(() {
                    currentpage = val;
                  });
                  tabController.animateTo(val);
                },
                children: [
                  Chats(),
                  Status(),
                  Calls(),
                  // MyStepper()
                ],
              ),
             
              floatingActionButton: Builder(builder: (context) {
                return FloatingActionButton(
                  backgroundColor: Color(0xff075e55),
                  onPressed: (){},
                  child: Icon(Icons.chat),
                );
              }),
            ),
          )
        : CupertinoApp(
            home: CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                leading: Icon(Icons.menu),
                middle: Text("WhatsApp"),
                trailing: CupertinoSwitch(
                    value: Globals.isios,
                    onChanged: (val) {
                      setState(() {
                        Globals.isios = val;
                      });
                    }),
              ),
              child: Container(
                alignment: Alignment.center,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    IndexedStack(
                      index: cupertinoindex,
                      children: [
                        Community(),
                        Chats(),
                        Status(),
                        Calls(),
                        Settings(),
                      ],
                    ),
                    CupertinoTabBar(
                      currentIndex: cupertinoindex,
                      onTap: (val) {
                        setState(() {
                          cupertinoindex = val;
                        });
                        // tabController.animateTo(val);
                        // pagecontroller.animateToPage(val,
                        //     duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
                      },
                      items: [
                        BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.phone), label: "Community"),
                        BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.chat_bubble),
                            label: "Chat"),
                        BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.circle), label: "Status"),
                        BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.phone),
                            label: "Calls"),
                            BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.settings), label: "Settings"),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
  }
}
