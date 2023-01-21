import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TotalGageOnGoing extends StatefulWidget {
  const TotalGageOnGoing({Key? key,required this.data}) : super(key: key);
  final String data;

  @override
  State<TotalGageOnGoing> createState() => _TotalGageOnGoingState();
}

class _TotalGageOnGoingState extends State<TotalGageOnGoing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.data),
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// class Test extends StatefulWidget {
//   @override
//   _TestState createState() => _TestState();
// }

// class _TestState extends State<Test> with SingleTickerProviderStateMixin{

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Page - 2"),
//       ),
//       body: SafeArea(
//         child: Column(
//           children: <Widget>[
//              GridView.builder(
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     crossAxisSpacing: 12.0,
//                     mainAxisSpacing: 12.0,
//                   ),
//                   itemCount: 6,
//                   scrollDirection: Axis.vertical,     
   
//     itemBuilder: (ctx, index) {
//      return Hero(
//         tag:'$index',
//         child: Container(child:  
//                   MyDestinationContainer(
//                       heroTag: '$index'  
//                   ),
//         ),
//      );
//     },
   
//              ),
//             Divider(
//               color: Colors.grey.shade600,
//             ),
//             // Center(
//             //   child: InkWell(
//             //   child: Text("Button"),
//             //     onTap: (){},
//             //   ),
//             // )
//         ])  ),
//         );
     
//   }
 
 