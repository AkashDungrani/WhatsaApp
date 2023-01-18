import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.systemGrey6,
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
          ),
          Text(
            "Settings",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
          ),
          Container(
            color: Colors.grey.shade300,
            // padding: EdgeInsets.all(5),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/images/akash.jpeg"),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Akash Dungrani",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "😇😇😇😇😇😇",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            color: Colors.grey.shade300,
            child: Row(children: [
              Icon(
                Icons.dark_mode_rounded,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text("WADarkMode"),
            ]),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
              color: Colors.grey.shade300,
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(children: [
                    Container(
                      color: Colors.amber,
                      child: Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Starred Messeages"),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ]),
                  Divider(),
                  Row(children: [
                    Container(
                      color: Color.fromARGB(255, 7, 141, 41),
                      child: Icon(
                        Icons.laptop_chromebook,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("WhatsApp Web/Desktop"),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ]),
                ],
              )),
              SizedBox(height: 40,),
              Container(
                height: 200,
                color: Colors.grey.shade300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Row(children: [
                Container(
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                      ),
                  child: Icon(
                    CupertinoIcons.lock,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Account"),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                )
              ]),
              Divider(),
              Row(children: [
                Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 7, 141, 41),
                      ),
                  
                  child: Icon(
                    Icons.whatsapp,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("WhatsApp Web/Desktop"),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                )
              ]),
              Divider(),
              Row(children: [
                Container(
                  color: Colors.blue,
                  child: Icon(
                    CupertinoIcons.,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Account"),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                )
              ]),
              Divider(),
              Row(children: [
                Container(
                  color: Color.fromARGB(255, 7, 141, 41),
                  child: Icon(
                    Icons.laptop_chromebook,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("WhatsApp Web/Desktop"),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                )
              ]),
                ]),
              )
        ],
      ),
    );
  }
}
