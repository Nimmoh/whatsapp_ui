import 'package:flutter/material.dart';
import 'package:whatsapp_ui/pages/settings_page.dart';
import 'package:whatsapp_ui/widgets/Callswidget.dart';
import 'package:whatsapp_ui/widgets/ChatsWidget.dart';
import 'package:whatsapp_ui/widgets/StatusWidget.dart';

class WhatsappUi extends StatelessWidget {
  const WhatsappUi({
    super.key,
  });

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var height = screenSize.height;
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            elevation: 0,
            title: const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "whatsapp",
                style: TextStyle(fontSize: 21),
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(top: 10, right: 15),
                child: Icon(
                  Icons.search,
                  size: 28,
                ),
              ),
              PopupMenuButton(
                onSelected: (SelectedContent) {
                  print(SelectedContent.toString());
                  if (SelectedContent == 5) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SettingsPage(),
                      ),
                    );
                    // Navigator.pushNamed(context, "SettingsPage");
                  } else if (SelectedContent == 4) {
                    print("===============> we are at starred");
                  }
                },
                padding: EdgeInsets.symmetric(vertical: 20),
                iconSize: 28,
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 1,
                    child: Text(
                      "New Group",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text(
                      "New Broadcast",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 3,
                    child: Text(
                      "Linked Devices",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 4,
                    child: Text(
                      "Starred messages",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 5,
                    child: Text(
                      "Settings",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              height: height / 11,
              width: screenSize.width,
              color: Color(0xFF075E55),
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight: 4,
                labelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                tabs: [
                  //tab 1
                  Container(
                    width: 25,
                    child: const Tab(
                      icon: Icon(Icons.camera_alt),
                    ),
                  ),
                  //tab 2
                  Container(
                    width: 80,
                    child: Tab(
                      child: Row(children: [
                        Text("Chats"),
                        SizedBox(
                          width: 8,
                          height: 25,
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          height: 22,
                          width: 22,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            "10",
                            style: TextStyle(
                                color: Color(0xFF075E55), fontSize: 14),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  // tab 3
                  Container(
                    width: 85,
                    child: Tab(
                      child: Text("Status"),
                    ),
                  ),
                  //tab 4
                  Container(
                    width: 85,
                    child: Tab(
                      child: Text("Calls"),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: TabBarView(
                children: [
                  //tab 1 camera
                  Container(
                    color: Colors.white,
                  ),
                  //tab 2 chats widget
                  ChatsWidget(),
                  //tab 3 status widget
                  statusWidget(),
                  //tab 4
                  CallsWidget(),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xFF075E55),
          child: Icon(Icons.message),
        ),
      ),
    );
  }
}
