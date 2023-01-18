import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(height: 120,),
          Container(
            padding: EdgeInsets.all(5),
            child: Row(
              children: [
                Stack(
                  alignment: Alignment(1.4, 1.5),
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      child: Icon(Icons.group),
                    ),
                   Container(
                     height: 30,
                     width: 30,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.teal),
                     child: Icon(Icons.add,color: Colors.white,),
                   )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "New Community",
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
