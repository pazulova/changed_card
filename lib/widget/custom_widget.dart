// import 'package:flutter/material.dart';
// import 'package:myproject2/constants/color.dart';
// import 'package:myproject2/constants/text.dart';

// class SustomWidget extends StatelessWidget {
//    SustomWidget({
//     super.key,
  
//    required  this.size,
//     required this.myColor,
//    required this.onTap,
//     required InkWell child, 
//     required this.onDoubleTap,
//      required this.fonSize,
//    });
//    final double fonSize;
  
   
//    final double size;
//    final Color myColor;
//    final VoidCallback onTap;
//    final Function() onDoubleTap;
//     bool twoClick= true;
//  bool firstClick = true;
//  bool threeClick = true;
//  bool fourClick = true;
//   int count = 0;
//   @override
//   Widget build(BuildContext context) {
    
//     return Card(
//       // ignore: prefer_const_literals_to_create_immutables
//       child: Row(children: [
//           InkWell(
//             onDoubleTap: onDoubleTap,
//             child: Row(
//               children:  const[
//                Text(AppText.apptext)
                
//               ],
//             ),
//           ),
         
//       ]),
      
//     );
//   }
// }