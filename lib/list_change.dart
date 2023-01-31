import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants/color.dart';
import 'constants/text.dart';

class ChooseCard extends StatefulWidget {
  const ChooseCard({super.key});

  @override
  State<ChooseCard> createState() => _ChooseCardState();
}

class _ChooseCardState extends State<ChooseCard> {
  bool firstClick = true;
  bool twoClick = true;
  bool threeClick = true;
  bool fourClick = true;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 1, 67, 69),
        appBar: AppBar(
          actions: const [Icon(Icons.search, color: AppColors.black)],
          title: const Text(
            AppText.appBarSearch,
            style: TextStyle(fontSize: 35, color: Colors.black),
          ),
        ),
        body: Container(
          color: AppColors.mainColor,
          child: Column(children: [
            Expanded(
              child: Card(
               color: firstClick 
               ? AppColors.mainColor
                : AppColors.changeColor,
                child: InkWell(
                  onTap: TapMetod,
                  onDoubleTap: () {
                    setState(() {
                      firstClick = !firstClick;
                      count--;
                    });
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: firstClick
                            ? AppColors.grey
                            : AppColors.green,
                        size: 43,
                      ),
                       Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 40),
                          child: Text(
                            AppText.apptext,
                            style: TextStyle(
                                color:
                                    firstClick
                                     ? Colors.white 
                                     : AppColors.green,
                                fontSize: 16),
                          ),
                        ),
                      Icon(
                        firstClick
                            // isSelected1
                            ? Icons.check_box_outline_blank
                            : Icons.radio_button_checked,
                        color: firstClick ? AppColors.white : AppColors.green,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ////////////////////////
            Expanded(
              child: Card(
                color: twoClick
                 ? AppColors.mainColor 
                 : AppColors.changeColor,
               
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        twoClick = !twoClick;
                        count++;
                      });
                    },
                    onDoubleTap: () {
                      setState(() {
                        twoClick = !twoClick;
                        count--;
                      });
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.menu,
                          color: twoClick 
                          ? AppColors.grey
                         : AppColors.green,
                          size: 43,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 40),
                          child: Text(
                            AppText.apptext,
                            style: TextStyle(
                                color: twoClick
                                    ? AppColors.white
                                    : AppColors.green,
                                fontSize: 16),
                          ),
                        ),
                        Icon(
                          twoClick
                              ? Icons.check_box_outline_blank
                              : Icons.radio_button_checked,
                          color: twoClick ? AppColors.white : AppColors.green,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            
            Expanded(
              child: Card(
                color: threeClick
                 ? AppColors.mainColor
                 : AppColors.changeColor,
             
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        threeClick = !threeClick;
                        count++;
                      });
                    },
                    onDoubleTap: () {
                      setState(() {
                        threeClick = !threeClick;
                        count--;
                      });
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.visibility,
                          color: threeClick
                              ? AppColors.grey
                              : AppColors.green,
                          size: 43,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 40),
                          child: Text(
                            AppText.apptext,
                            style: TextStyle(
                                color:
                                    threeClick ? Colors.white : AppColors.green,
                                fontSize: 16),
                          ),
                        ),
                        Icon(
                          threeClick
                              ? Icons.check_box_outline_blank
                              : Icons.radio_button_checked,
                          color: threeClick ? Colors.white : Colors.green,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            
            Expanded(
              child: Card(
                color: fourClick ? AppColors.mainColor : AppColors.changeColor,
               
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        fourClick = !fourClick;
                        count++;
                      });
                    },
                    onDoubleTap: () {
                      setState(() {
                        fourClick = !fourClick;
                        count--;
                      });
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.alarm,
                          color:
                              fourClick ? AppColors.grey: AppColors.green,
                          size: 43,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 40),
                          child: Text(
                            AppText.apptext,
                            style: TextStyle(
                                color: fourClick
                                    ? AppColors.white
                                    : AppColors.green,
                                fontSize: 16),
                          ),
                        ),
                        Icon(
                          fourClick
                              // isSelected1
                              ? Icons.check_box_outline_blank
                              : Icons.radio_button_checked,
                          color: fourClick ? AppColors.white : AppColors.green,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          

            ///
          ]),
        ));
  }

  void TapMetod() {
                  setState(() {
                    firstClick = firstClick;
                    count++;
                  });
                }
  
}


