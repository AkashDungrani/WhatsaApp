import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:whatsapp/models/globls.dart';
class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (Globals.isios == false)
              ? SizedBox(
                  height: 1,
                )
              : SizedBox(
                  height: 100,
                ),
            Container(
              padding: EdgeInsets.all(5),
              child: Row(children: [
                Stack(
                  alignment: Alignment(1.4,1.5),
                  children: [
                    CircleAvatar(
                      radius: 40,
                      child: Icon(Icons.person,size: 60,),
                    ),
                    FloatingActionButton(onPressed: (){},child: Icon(Icons.add,),mini: true,backgroundColor: Color(0xff075e55),)
                  ],
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("My status",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                  SizedBox(height: 3,),
                  Text("Tap to add status update",style: TextStyle(color: Colors.grey),)
                ],)
              ],
              ),
            ),
            Divider(thickness: 2,),
            Text("Recent updates",style: TextStyle(color: Colors.grey),),
            Divider(),
            ...Contacts.map((e) =>
            Container(
              margin: EdgeInsets.only(top: 2,bottom: 2),
              child:Row(
                children: [
                Stack(
                  alignment: Alignment.center,
                  children:[ 
                    CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 49,
                  ),
                  CircleAvatar(
                        radius: 45,
                        backgroundColor: Colors.black,
                        backgroundImage: AssetImage("${e["image"]}"),
                      ),
                    ],
                ),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Text("${e["name"]}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                  SizedBox(height: 8,),
                  Text("${e["status"]}")
                ],)
              ],)
            ) ).toList(),
            // FloatingActionButton(onPressed: (){},child: Icon(Icons.edit),)
        ]),
      ),
      
    );
  }
}