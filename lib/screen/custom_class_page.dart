import 'package:flutter/material.dart';

class UserModal {
  int? id;
  String? title, detailes, moreInfo, img;

  final Color? color;
  late Color? clr;

  UserModal(
      {this.id,
      this.title,
      this.detailes,
      this.img,
      this.color,
      this.moreInfo,
      this.clr});
}

List<UserModal> userModal = [
  UserModal(
    id: 1,
    title: "7",
    detailes: "Total Game Ongoing",
    moreInfo: "More Info ➲",
    color: Color.fromARGB(255, 27, 151, 135),
    clr: Color.fromARGB(255, 23, 124, 111),
  ),
  UserModal(
    id: 2,
    title: "0",
    detailes: "Total Classic \nTournament Game",
    moreInfo: "More Info ➲",
    color: Color.fromARGB(255, 59, 158, 250),
    clr: Color.fromARGB(255, 50, 124, 194),
  ),
  UserModal(
    id: 3,
    title: "1",
    detailes: "Total Classic \nFree Fire Game",
    moreInfo: "More Info ➲",
    color: Color.fromARGB(255, 236, 6, 83),
    clr: Color.fromARGB(255, 187, 5, 66),
  ),
  UserModal(
    id: 4,
    title: "0",
    detailes: "Total Cs Tournament \n             Game",
    moreInfo: "More Info ➲",
    color: Color.fromARGB(255, 51, 175, 51),
    clr: Color.fromARGB(255, 39, 146, 39),
  ),
  UserModal(
    id: 5,
    title: "6",
    detailes: "Total Cs Free \n   Fire Game",
    moreInfo: "More Info ➲",
    color: Color.fromARGB(255, 218, 214, 32),
    clr: Color.fromARGB(255, 167, 164, 26),
  ),
  UserModal(
    id: 6,
    title: "9",
    detailes: "Total Shop",
    moreInfo: "More Info ➲",
    color: Color.fromARGB(255, 41, 173, 129),
    clr: Color.fromARGB(255, 15, 122, 87),
  ),
];
