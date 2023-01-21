import 'package:admin_app/Fetures/second.dart';
import 'package:admin_app/Fetures/totalgamepage.dart';
import 'package:admin_app/const/widget.dart';
import 'package:admin_app/screen/admin_meno_ber.dart';
import 'package:admin_app/screen/custom_class_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'custom_class_page.dart';

class AdminPanel extends StatefulWidget {
  const AdminPanel({Key? key}) : super(key: key);

  @override
  State<AdminPanel> createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    SingleChildScrollView(scrollDirection: Axis.vertical);
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 212, 212),
        key: _scaffoldKey,
        drawer: buildDrawer(),
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                _scaffoldKey.currentState!.openDrawer();
              },
              icon: Icon(Icons.more_vert)),
          title: Text(
            "Admin Panel",
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Column(children: [
          SizedBox(
            height: 10,
          ),
          Expanded(
              flex: 1,
              child: Text("Dashboard",
                  style: myStyle(24, Colors.white, FontWeight.bold))),
          Expanded(
            flex: 7,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.35,
                  width: MediaQuery.of(context).size.width.toDouble(),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12.0,
                      mainAxisSpacing: 12.0,
                    ),
                    itemCount: userModal.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) => Container(
                      // padding: EdgeInsets.all(2),
                      margin: EdgeInsets.all(10),
                      height: 350,
                      width: double.infinity,
                      decoration: BoxDecoration(),
                      child: Card(
                        color: userModal[index].color,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                userModal[index].title.toString(),
                                style:
                                    myStyle(24, Colors.white, FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                userModal[index].detailes.toString(),
                                style: myStyle(
                                  14,
                                  Colors.white,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: InkWell(
                                hoverColor: Colors.black,
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => index == 1
                                          ? MyWidget()
                                          : TotalGageOnGoing(
                                              data: userModal[index]
                                                  .title
                                                  .toString())));
                                  print(userModal[index].title);
                                },
                                child: Container(
                                  height: 40,
                                  width: double.infinity,
                                  color: userModal[index].clr,
                                  child: Center(
                                    child: Text(
                                      userModal[index].moreInfo.toString(),
                                      style: myStyle(
                                        18,
                                        Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      verticalDirection: VerticalDirection.down,
                      children: [
                        Text(
                          "Copyright © 2021 CodeSell.Ltd All rights reserved.",
                          style: myStyle(
                            10,
                            Colors.black54,
                          ),
                        ),
                        Text(
                          "Version 3.1.0-pre",
                          style: myStyle(
                            10,
                            Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Expanded(
          //   flex: 1,
          //   child: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       mainAxisSize: MainAxisSize.max,
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       verticalDirection: VerticalDirection.down,
          //       children: [
          //         Text(
          //           "Copyright © 2021 CodeSell.Ltd All rights reserved.",
          //           style: myStyle(
          //             10,
          //             Colors.black54,
          //           ),
          //         ),
          //         Text(
          //           "Version 3.1.0-pre",
          //           style: myStyle(
          //             10,
          //             Colors.black54,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ]),
      ),
    );
  }

  TextButton paginationButton({VoidCallback? onTap, String? title}) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        "$title",
        style: myStyle(
          18,
          Colors.white,
        ),
      ),
    );
  }
}
