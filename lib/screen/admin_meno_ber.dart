import 'package:admin_app/Fetures/second.dart';
import 'package:admin_app/const/widget.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildDrawer() {
  String sortBy = DisplayMenu.Display.name;
  String slider = SliderMenu.Slider.name;
  String tutorial = TutorialsMenu.Tutorials.name;
  String shop = ShopMenu.Shop.name;
  String wallet = WalletMenu.Wallet.name;
  @override
  void initState() {
    print("our Enum is $sortBy");

    initState();
  }

  return Drawer(
    backgroundColor: Color.fromARGB(255, 119, 114, 114),
    child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: const BoxDecoration(
            color: Colors.black54,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThl1Mgu3qWibr1h_39I0odpSbmsx643K3lFw&usqp=CAU",
                      fit: BoxFit.cover,
                      height: 20,
                      width: 20,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Admin Panel',
                    style: myStyle(
                      18,
                      Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGDSuK3gg8gojbS1BjnbA4NLTjMg_hELJbpQ&usqp=CAU",
                      fit: BoxFit.cover,
                      height: 20,
                      width: 20,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Admin',
                    style: myStyle(
                      18,
                      Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Important',
            style: myStyle(
              18,
              Colors.white,
            ),
          ),
        ),
        ListOfMeno(
          Icon: Icon(
            Icons.add_box_outlined,
            color: Colors.white,
            size: 25,
          ),
          title: 'Dashboard',
          onTap: () {},
        ),

        Container(
          width: 100,
          child: DropdownButton<String>(
            value: sortBy,

            items: [
              DropdownMenuItem(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.speed_rounded,
                        color: Colors.white,
                        size: 25,
                      ),
                      Text(
                        "${DisplayMenu.Display.name}",
                        style: myStyle(18, Colors.white, FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                value: sortBy = DisplayMenu.Display.name,
              ),
              DropdownMenuItem(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 30,
                  shadowColor: Colors.black,
                  surfaceTintColor: Colors.blue,
                  child: Center(
                    child: Text(
                      "${DisplayMenu.SHOW_User.name}",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),

                value: sortBy = DisplayMenu.SHOW_User.name,
                // onTap: () {
                //   Get.to(MyWidget()); },
              ),
              DropdownMenuItem(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 30,
                  shadowColor: Colors.black,
                  surfaceTintColor: Colors.blue,
                  child: Center(
                    child: Text(
                      "${DisplayMenu.Show_Game.name}",
                    ),
                  ),
                ),
                value: sortBy = DisplayMenu.Show_Game.name,
              ),
              DropdownMenuItem(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 30,
                  shadowColor: Colors.black,
                  child: Center(
                    child: Text(
                      "${DisplayMenu.Show_Lodo_Game.name}",
                    ),
                  ),
                ),
                value: sortBy = DisplayMenu.Show_Lodo_Game.name,
              ),
              DropdownMenuItem(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 30,
                  shadowColor: Colors.black,
                  child: Center(
                    child: Text(
                      "${DisplayMenu.Show_Classic_Tournament.name}",
                    ),
                  ),
                ),
                value: sortBy = DisplayMenu.Show_Classic_Tournament.name,
              ),
              DropdownMenuItem(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 30,
                  shadowColor: Colors.black,
                  child: Center(
                    child: Text(
                      "${DisplayMenu.Show_cs_FreeFire.name}",
                    ),
                  ),
                ),
                value: sortBy = DisplayMenu.Show_cs_FreeFire.name,
              ),
              DropdownMenuItem(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 30,
                  shadowColor: Colors.black,
                  child: Center(
                    child: Text(
                      "${DisplayMenu.Show_Classic_FreeFire.name}",
                    ),
                  ),
                ),
                value: sortBy = DisplayMenu.Show_Classic_FreeFire.name,
              ),
              DropdownMenuItem(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 30,
                  shadowColor: Colors.black,
                  child: Center(
                    child: Text(
                      "${DisplayMenu.Show_cs_Tournament.name}",
                    ),
                  ),
                ),
                value: sortBy = DisplayMenu.Show_cs_Tournament.name,
              ),
              DropdownMenuItem(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 30,
                  shadowColor: Colors.black,
                  child: Center(
                    child: Text(
                      "${DisplayMenu.End_Game.name}",
                    ),
                  ),
                ),
                value: sortBy = DisplayMenu.End_Game.name,
              ),
              DropdownMenuItem(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 30,
                  shadowColor: Colors.black,
                  child: Center(
                    child: Text(
                      "${DisplayMenu.Cancel_Game_List.name}",
                    ),
                  ),
                ),
                value: sortBy = DisplayMenu.Cancel_Game_List.name,
              ),
              DropdownMenuItem(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 30,
                  shadowColor: Colors.black,
                  child: Center(
                    child: Text(
                      "${DisplayMenu.Maintenance.name}",
                    ),
                  ),
                ),
                value: sortBy = DisplayMenu.Maintenance.name,
              ),
              DropdownMenuItem(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 30,
                  shadowColor: Colors.black,
                  child: Center(
                    child: Text(
                      "${DisplayMenu.Apk.name}",
                    ),
                  ),
                ),
                value: sortBy = DisplayMenu.Apk.name,
              ),
              DropdownMenuItem(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 30,
                  shadowColor: Colors.black,
                  child: Center(
                    child: Text(
                      "${DisplayMenu.Version_Update.name}",
                    ),
                  ),
                ),
                value: sortBy = DisplayMenu.Version_Update.name,
              ),
              DropdownMenuItem(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 30,
                  shadowColor: Colors.black,
                  child: Center(
                    child: Text(
                      "${DisplayMenu.Signup_Link.name}",
                    ),
                  ),
                ),
                value: sortBy = DisplayMenu.Signup_Link.name,
              ),
              DropdownMenuItem(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 30,
                  shadowColor: Colors.black,
                  child: Center(
                    child: Text(
                      "${DisplayMenu.Notice.name}",
                    ),
                  ),
                ),
                value: sortBy = DisplayMenu.Notice.name,
              ),
              DropdownMenuItem(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 30,
                  shadowColor: Colors.black,
                  child: Center(
                    child: Text(
                      "${DisplayMenu.Welcome_Text.name}",
                    ),
                  ),
                ),
                value: sortBy = DisplayMenu.Welcome_Text.name,
              ),

              // DropdownMenuItem(
              //   child: Container(
              // child:Card(child:Text("${SortNews.Tutorial.name}"),
              //   value: sortBy = SortNews.Tutorial.),),name,
              // ),
            ],
            onChanged: (value) {
              sortBy = value!;
              print("Drop Down value is $sortBy");
            },

            iconEnabledColor: Colors.white, //Icon color
            style: myStyle(16, Colors.blue),

            dropdownColor: Colors.grey,

            isExpanded: true, //make true to make width 100%
            elevation: 30,
            borderRadius: BorderRadius.circular(20),
            focusColor: Colors.blue,
            autofocus: false,
          ),
        ),
        //Galary
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Galary',
            style: myStyle(
              18,
              Colors.white,
            ),
          ),
        ),
        //Galary Menu for Slider,Tutorial,Shop,Wallet
        DropdownButton<String>(
          value: slider,
          items: [
            DropdownMenuItem(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.image_outlined,
                      color: Colors.white,
                      size: 25,
                    ),
                    Text(
                      "${SliderMenu.Slider.name}",
                      style: myStyle(18, Colors.white, FontWeight.bold),
                    ),
                  ],
                ),
              ),
              value: slider = SliderMenu.Slider.name,
            ),
            DropdownMenuItem(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 30,
                shadowColor: Colors.black,
                surfaceTintColor: Colors.blue,
                child: Center(
                  child: Text(
                    "${SliderMenu.SHOW_Slider.name}",
                  ),
                ),
              ),
              value: slider = SliderMenu.SHOW_Slider.name,
            ),
          ],
          onChanged: (value) {
            slider = value!;
            print("Drop Down value is $slider");
          },

          iconEnabledColor: Colors.white, //Icon color
          style: TextStyle(
              //te
              color: Colors.black, //Font color
              fontSize: 16 //font size on dropdown button
              ),

          dropdownColor: Colors.grey,

          isExpanded: true, //make true to make width 100%
          elevation: 30,
          borderRadius: BorderRadius.circular(20),
          focusColor: Colors.blue,
          autofocus: false,
        ),
        //Tutorial Menu bar
        DropdownButton<String>(
          value: tutorial,
          items: [
            DropdownMenuItem(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.image_outlined,
                      color: Colors.white,
                      size: 25,
                    ),
                    Text(
                      "${TutorialsMenu.Tutorials.name}",
                      style: myStyle(18, Colors.white, FontWeight.bold),
                    ),
                  ],
                ),
              ),
              value: tutorial = TutorialsMenu.Tutorials.name,
            ),
            DropdownMenuItem(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 30,
                shadowColor: Colors.black,
                surfaceTintColor: Colors.blue,
                child: Center(
                  child: Text(
                    "${TutorialsMenu.SHOW_Tutorials.name}",
                  ),
                ),
              ),
              value: tutorial = TutorialsMenu.SHOW_Tutorials.name,
            ),
            DropdownMenuItem(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 30,
                shadowColor: Colors.black,
                surfaceTintColor: Colors.blue,
                child: Center(
                  child: Text(
                    "${TutorialsMenu.SHOW_Telegram_Links.name}",
                  ),
                ),
              ),
              value: tutorial = TutorialsMenu.SHOW_Telegram_Links.name,
            ),
            DropdownMenuItem(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 30,
                shadowColor: Colors.black,
                surfaceTintColor: Colors.blue,
                child: Center(
                  child: Text(
                    "${TutorialsMenu.SHOW_Complain_Links.name}",
                  ),
                ),
              ),
              value: tutorial = TutorialsMenu.SHOW_Complain_Links.name,
            ),
          ],
          onChanged: (value) {
            tutorial = value!;
            print("Drop Down value is $tutorial");
          },

          iconEnabledColor: Colors.white, //Icon color
          style: TextStyle(
              //te
              color: Colors.black, //Font color
              fontSize: 16 //font size on dropdown button
              ),

          dropdownColor: Colors.grey,

          isExpanded: true, //make true to make width 100%
          elevation: 30,
          borderRadius: BorderRadius.circular(20),
          focusColor: Colors.blue,
          autofocus: false,
        ),

        // Shop Menu bar

        DropdownButton<String>(
          value: shop,
          items: [
            DropdownMenuItem(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.image_outlined,
                      color: Colors.white,
                      size: 25,
                    ),
                    Text(
                      "${ShopMenu.Shop.name}",
                      style: myStyle(18, Colors.white, FontWeight.bold),
                    ),
                  ],
                ),
              ),
              value: shop = ShopMenu.Shop.name,
            ),
            DropdownMenuItem(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 30,
                shadowColor: Colors.black,
                surfaceTintColor: Colors.blue,
                child: Center(
                  child: Text(
                    "${ShopMenu.SHOW_Shop.name}",
                  ),
                ),
              ),
              value: shop = ShopMenu.SHOW_Shop.name,
            ),
          ],
          onChanged: (value) {
            shop = value!;
            print("Drop Down value is $shop");
          },

          iconEnabledColor: Colors.white, //Icon color
          style: TextStyle(
              //te
              color: Colors.black, //Font color
              fontSize: 16 //font size on dropdown button
              ),

          dropdownColor: Colors.grey,

          isExpanded: true, //make true to make width 100%
          elevation: 30,
          borderRadius: BorderRadius.circular(20),
          focusColor: Colors.blue,
          autofocus: false,
        ),

        // Wallet Menu bar
        DropdownButton<String>(
          value: wallet,

          items: [
            DropdownMenuItem(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.image_outlined,
                      color: Colors.white,
                      size: 25,
                    ),
                    Text(
                      "${WalletMenu.Wallet.name}",
                      style: myStyle(18, Colors.white, FontWeight.bold),
                    ),
                  ],
                ),
              ),
              value: wallet = WalletMenu.Wallet.name,
            ),
            DropdownMenuItem(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 30,
                shadowColor: Colors.black,
                surfaceTintColor: Colors.blue,
                child: Center(
                  child: Text(
                    "${WalletMenu.SHOW_Wallet.name}",
                  ),
                ),
              ),
              value: wallet = WalletMenu.SHOW_Wallet.name,
            ),
            DropdownMenuItem(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 30,
                shadowColor: Colors.black,
                surfaceTintColor: Colors.blue,
                child: Center(
                  child: Text(
                    "${WalletMenu.Inactive_Deposit_Request.name}",
                  ),
                ),
              ),
              value: wallet = WalletMenu.Inactive_Deposit_Request.name,
            ),
            DropdownMenuItem(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 30,
                shadowColor: Colors.black,
                surfaceTintColor: Colors.blue,
                child: Center(
                  child: Text(
                    "${WalletMenu.Active_Deposit_Request.name}",
                  ),
                ),
              ),
              value: wallet = WalletMenu.Active_Deposit_Request.name,
            ),
            DropdownMenuItem(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 30,
                shadowColor: Colors.black,
                surfaceTintColor: Colors.blue,
                child: Center(
                  child: Text(
                    "${WalletMenu.All_Deposit_Request.name}",
                  ),
                ),
              ),
              value: wallet = WalletMenu.All_Deposit_Request.name,
            ),
            DropdownMenuItem(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 30,
                shadowColor: Colors.black,
                surfaceTintColor: Colors.blue,
                child: Center(
                  child: Text(
                    "${WalletMenu.Inacctive_Withdraw_Request.name}",
                  ),
                ),
              ),
              value: wallet = WalletMenu.Inacctive_Withdraw_Request.name,
            ),
            DropdownMenuItem(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 30,
                shadowColor: Colors.black,
                surfaceTintColor: Colors.blue,
                child: Center(
                  child: Text(
                    "${WalletMenu.Active_Withdraw_Request.name}",
                  ),
                ),
              ),
              value: wallet = WalletMenu.Active_Withdraw_Request.name,
            ),
            DropdownMenuItem(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 30,
                shadowColor: Colors.black,
                surfaceTintColor: Colors.blue,
                child: Center(
                  child: Text(
                    "${WalletMenu.Withdraw_Request.name}",
                  ),
                ),
              ),
              value: wallet = WalletMenu.Withdraw_Request.name,
            ),
            DropdownMenuItem(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 30,
                shadowColor: Colors.black,
                surfaceTintColor: Colors.blue,
                child: Center(
                  child: Text(
                    "${WalletMenu.Account.name}",
                  ),
                ),
              ),
              value: wallet = WalletMenu.Account.name,
            ),
            DropdownMenuItem(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 30,
                shadowColor: Colors.black,
                surfaceTintColor: Colors.blue,
                child: Center(
                  child: Text(
                    "${WalletMenu.Negative_Account.name}",
                  ),
                ),
              ),
              value: wallet = WalletMenu.Negative_Account.name,
            ),
            DropdownMenuItem(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 30,
                shadowColor: Colors.black,
                surfaceTintColor: Colors.blue,
                child: Center(
                  child: Text(
                    "${WalletMenu.Moderator.name}",
                  ),
                ),
              ),
              value: wallet = WalletMenu.Moderator.name,
            ),
            DropdownMenuItem(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 30,
                shadowColor: Colors.black,
                surfaceTintColor: Colors.blue,
                child: Center(
                  child: Text(
                    "${WalletMenu.Change_Password.name}",
                  ),
                ),
              ),
              value: wallet = WalletMenu.Change_Password.name,
            ),
          ],
          onChanged: (value) {
            wallet = value!;
            print("Drop Down value is $wallet");
          },

          iconEnabledColor: Colors.white, //Icon color
          style: TextStyle(
              //te
              color: Colors.black, //Font color
              fontSize: 16 //font size on dropdown button
              ),

          dropdownColor: Colors.grey,

          isExpanded: true, //make true to make width 100%
          elevation: 30,
          borderRadius: BorderRadius.circular(20),
          focusColor: Colors.blue,
          autofocus: false,
        ),
      ],
    ),
  );
}

ListTile ListOfMeno(
    {VoidCallback? onTap, String? title, Icon? Icon, IconButton? Icon2}) {
  return ListTile(
      leading: Icon,
      trailing: Icon2,
      title: Text(
        '$title',
        style: myStyle(18, Colors.white, FontWeight.bold),
      ),
      hoverColor: Colors.blue,
      onTap: onTap);
}

//multiManu value add in there
enum DisplayMenu {
  Display,
  SHOW_User,
  Show_Game,
  Show_Lodo_Game,
  Show_Classic_Tournament,
  Show_cs_FreeFire,
  Show_Classic_FreeFire,
  Show_cs_Tournament,
  End_Game,
  Cancel_Game_List,
  Maintenance,
  Apk,
  Version_Update,
  Signup_Link,
  Notice,
  Welcome_Text
}

enum SliderMenu { Slider, SHOW_Slider }

enum TutorialsMenu {
  Tutorials,
  SHOW_Tutorials,
  SHOW_Telegram_Links,
  SHOW_Complain_Links
}

enum ShopMenu {
  Shop,
  SHOW_Shop,
}

enum WalletMenu {
  Wallet,
  SHOW_Wallet,
  Inactive_Deposit_Request,
  Active_Deposit_Request,
  All_Deposit_Request,
  Inacctive_Withdraw_Request,
  Active_Withdraw_Request,
  Withdraw_Request,
  Account,
  Negative_Account,
  Moderator,
  Change_Password
}



  

  // ListTile(
  //         leading: Container(
   //Text(
  //           'Dashboard',
  //         ),),  style: myStyle(
  //             16,
  //             Colors.white,
  //           ),
  //         ),
  //         trailing: Icon(
  //           Icons.arrow_back_ios,
  //           color: Colors.white,
  //           size: 20,
  //         ),
  //         onTap: () {
  //           // Get.to(MarketPlace());
  //           //Navigator.of(context).push(MaterialPageRoute(builder: (context, index)=> GroceryCount()));
  //         },
  //       ),

  // New DropDown Menu in Bottom side of this pAGE


    // class CustomMultiselectDropDown extends StatefulWidget {
    //   final Function(List<String>) selectedList;
    //   final List<String> listOFStrings;
    
    //   CustomMultiselectDropDown(
    //       {required this.selectedList, required this.listOFStrings});
    
    //   @override
    //   createState() {
    //     return new _CustomMultiselectDropDownState();
    //   }
    // }
    
    // class _CustomMultiselectDropDownState extends State<CustomMultiselectDropDown> {
    //   List<String> listOFSelectedItem = [];
    //   String selectedText = "";
    
    //   @override
    //   Widget build(BuildContext context) {
    //     var size = MediaQuery.of(context).size;
    //     return Container(
    //       margin: EdgeInsets.only(top: 10.0),
    //       decoration:
    //           BoxDecoration(border: Border.all(color: Colors.grey)),
    //       child: ExpansionTile(
    //         iconColor: Colors.grey,
    //         title: Container(
   //Text(
    //           listOFSelectedItem.isEmpty ? "Select" : listOFSelectedItem[0],
    //       ),),    style: GoogleFonts.poppins(
    //             textStyle: TextStyle(
    //               color:Colors.grey,
    //               fontWeight: FontWeight.w400,
    //               fontSize: 15.0,
    //             ),
    //           ),
    //         ),
    //         children: <Widget>[
    //           new ListView.builder(
    //             physics: NeverScrollableScrollPhysics(),
    //             shrinkWrap: true,
    //             itemCount: widget.listOFStrings.length,
    //             itemBuilder: (BuildContext context, int index) {
    //               return Container(
    //                 margin: EdgeInsets.only(bottom: 8.0),
    //                 child: _ViewItem(
    //                     item: widget.listOFStrings[index],
    //                     selected: (val) {
    //                       selectedText = val;
    //                       if (listOFSelectedItem.contains(val)) {
    //                         listOFSelectedItem.remove(val);
    //                       } else {
    //                         listOFSelectedItem.add(val);
    //                       }
    //                       widget.selectedList(listOFSelectedItem);
    //                       setState(() {});
    //                     },
    //                     itemSelected: listOFSelectedItem
    //                         .contains(widget.listOFStrings[index])),
    //               );
    //             },
    //           ),
    //         ],
    //       ),
    //     );
    //   }
    // }
    
    // class _ViewItem extends StatelessWidget {
    //   String item;
    //   bool itemSelected;
    //   final Function(String) selected;
    
    //   _ViewItem(
    //       {required this.item, required this.itemSelected, required this.selected});
    
    //   @override
    //   Widget build(BuildContext context) {
    //     var size = MediaQuery.of(context).size;
    //     return Padding(
    //       padding:
    //           EdgeInsets.only(left: size.width * .032, right: size.width * .098),
    //       child: Row(
    //         children: [
    //           SizedBox(
    //             height: 24.0,
    //             width: 24.0,
    //             child: Checkbox(
    //               value: itemSelected,
    //               onChanged: (val) {
    //                 selected(item);
    //               },
    //               activeColor: Colors.blue,
    //             ),
    //           ),
    //           SizedBox(
    //             width: size.width * .025,
    //           ),
    //           Container(
      //Text(
    //             item,
    //            style: GoogleFonts.poppins(
    //               textStyle: TextStyle(
    //                 color: Colors.grey,
    //                 fontWeight: FontWeight.w400,
    //                 fontSize: 17.0,
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     );
    //   }
    // }

    