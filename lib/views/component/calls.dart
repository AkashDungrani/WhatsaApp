import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../models/globls.dart';
class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            (Globals.isios==false)?SizedBox(height: 1,):SizedBox(height: 90,),
            ...Contacts.map((e) => 

                   Container(
                    margin: EdgeInsets.only(
                        top: 0.0, bottom: 3.0, left: 0.0, right: 0.0),
                    child: Column(
                      children: [
                        Divider(),
                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 45,
                              backgroundColor: Colors.black,
                              backgroundImage: AssetImage("${e["image"]}"),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("${e["name"]}"),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Icon(Icons.call_received,color: Colors.green,),
                                    Text("${e["time"]}"),
                                    ],)
                              ],
                            ),
                            Spacer(),
                            (Globals.isios == false)
                                ? Icon(Icons.call)
                                : Icon(CupertinoIcons.phone,color: Colors.green,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ).toList(),
          ],
        ),
      ),
    );
  }
}