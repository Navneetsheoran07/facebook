import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(7),
              height: 50,
              child: Row(
                children: [
                  Container(
                    child: IconButton (
                      icon: const Icon(Icons.arrow_back),
                      color: Colors.black,
                      onPressed: ()  => {Navigator.of(context).pop()},
                    ),
                  ),
                  Spacer(),
                  Container(
                    // color: Colors.red,
                      child: Text(
                        "Chats",
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      )
                  ),
                  Spacer(),
                  Container(
                    child: IconButton (
                      icon: const Icon(Icons.settings),
                      color: Colors.black,
                      onPressed: () {
                        print("clicked on setting");
                      },
                    ),
                  ),
                  Container(
                    child: IconButton (
                      icon: const Icon(Icons.edit),
                      color: Colors.black,
                      onPressed: () {
                        print("clicked on edit");
                      },
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.only(left: 15,right: 15),
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 25.0),
                  hintText: 'Search',
                  filled: true,
                  fillColor: Colors.black12,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none
                  )
                )
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Padding(padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                )),
                TextButton(onPressed: (){
                  print("clicked on inbox");
                },
                    child: Text("Inbox",
                    style: TextStyle(
                      color: Colors.black,fontSize: 14
                    ),
                    ),
                ),
                // Padding(padding: const EdgeInsets.symmetric(
                //   horizontal: 2,
                // )),
                TextButton(onPressed: (){
                  print("clicked on Communities");
                },
                  child: Text("Communities",
                    style: TextStyle(
                        color: Colors.black,fontSize: 14
                    ),
                  ),
                ),
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(
                  "assets/images/dp.jpeg",
                ),
              ),
              title: const Text("Jaatni",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              subtitle: Row(
                children: [
                  Text("kya kr rhe ho",
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  SizedBox(width: 5),
                  Text("•"),
                  SizedBox(width: 5,),
                  Text("Just Now")
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(
                  "assets/images/dp.3.jpeg",
                ),
              ),
              title: const Text("Preet",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              subtitle: Row(
                children: [
                  Text("hey...!!!",
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
                  SizedBox(width: 5),
                  Text("•"),
                  SizedBox(width: 5,),
                  Text("Today 12:12 AM")
                ],
              ),
            ),

            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(
                  "assets/images/dp.jpeg",
                ),
              ),
              title: const Text("Neha",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              subtitle: Row(
                children: [
                  Text("Hello kaise ho",
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
                  SizedBox(width: 5),
                  Text("•"),
                  SizedBox(width: 5,),
                  Text("Mar 8, 2024")
                ],
              ),
            ),

            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(
                  "assets/images/dp.3.jpeg",
                ),
              ),
              title: const Text("Preeti",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              subtitle: Row(
                children: [
                  Text("kaha per ho",
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
                  SizedBox(width: 5),
                  Text("•"),
                  SizedBox(width: 5,),
                  Text("Apr 1, 2024")
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(
                  "assets/images/dp.jpeg",
                ),
              ),
              title: const Text("Riya",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              subtitle: Row(
                children: [
                  Text("Riya unsent a message",
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
                  SizedBox(width: 5),
                  Text("•"),
                  SizedBox(width: 5,),
                  Text("Feb 28, 2024")
                ],
              ),
            ),

            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(
                  "assets/images/dp.3.jpeg",
                ),
              ),
              title: const Text("Jiya",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              subtitle: Row(
                children: [
                  Text("I love you",
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
                  SizedBox(width: 5),
                  Text("•"),
                  SizedBox(width: 5,),
                  Text("Feb 25, 2024")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
