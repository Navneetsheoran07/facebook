import 'package:flutter/material.dart';

import '../models/friends.dart';

class FriendsPage extends StatefulWidget {
  const FriendsPage({super.key});

  @override
  State<FriendsPage> createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          //color: Colors.white,
          width: double.infinity,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // color: Colors.red,
                  child: Text(
                    "Friends",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
              Container(
                child: IconButton (
                  icon: const Icon(Icons.search),
                  color: Colors.black,
                  onPressed: () {
                    print("clicked on search");
                  },
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Padding(padding: const EdgeInsets.symmetric(
              horizontal: 5,
            )),
            ElevatedButton(onPressed: (){
              print("clicked on Friend requests");
            },
              style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.grey[350]
              ),
              child: Text("Friend requests",
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(
              horizontal: 5,
            )),
            ElevatedButton(onPressed: (){
              print("clicked on Your friends");
            },
              style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.grey[350]
              ),
              child: Text("Your friends",
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Divider(
          color: Colors.black12,thickness: 1,
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          margin: EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "People you may know",
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        for(var i=0; i<friendsData.length;i++ )...[

          ListTile(
            title: Text(friendsData[i].name),
            isThreeLine: false,
            leading: Container(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(
                    friendsData[i].avatarimage
                ),
              ),
            ),
            subtitle:
            Expanded(
              child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        print("clicked on add friend");
                      },
                      child: Text('Add friend'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(40, 40),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 9,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print("clicked on add friend");
                      },
                      child: Text('Remove'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(40, 40),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                      ),
                    ),
                  ]
              ),
            ),
          ),
        ]
        // Expanded(
        //     child: ListView.builder(
        //         itemCount: friendsData.length,
        //       itemBuilder: (context , i) =>
        //           Column(
        //             children: [
        //               ListTile(
        //                 leading: CircleAvatar(
        //                   backgroundImage: AssetImage(
        //                     friendsData[i].avatarimage,
        //                   ),
        //                 ),
        //                 title: Text(
        //                   friendsData[i].name,
        //                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //                 ),
        //                 trailing: Wrap(
        //                   children: [
        //                   ElevatedButton(
        //                     onPressed: () {
        //                       print("clicked on add friend");
        //                     },
        //                     child: Text('Add friend'),
        //                     style: ElevatedButton.styleFrom(
        //                       minimumSize: const Size(40, 40),
        //                       foregroundColor: Colors.white,
        //                       backgroundColor: Colors.blueAccent,
        //                       shape: RoundedRectangleBorder(
        //                         borderRadius: BorderRadius.circular(12),
        //                       ),
        //                     ),
        //                   ),  // <-- Radius
        //                     Padding(
        //                       padding: const EdgeInsets.only(
        //                         left: 9,
        //                       ),
        //                     ),
        //                     ElevatedButton(
        //                       onPressed: () {
        //                         print("clicked on remove");
        //                       },
        //                       child: Text('Remove'),
        //                       style: ElevatedButton.styleFrom(
        //                         minimumSize: const Size(60, 40),
        //                         foregroundColor: Colors.black,
        //                         backgroundColor: Colors.grey[350],
        //                         shape: RoundedRectangleBorder(
        //                           borderRadius: BorderRadius.circular(12), // <-- Radius
        //                         ),
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //             ],
        //           ),
        //     ),
        // ),

        // Expanded(
        //     child: ListView.builder(
        //       itemCount: friendsData.length,
        //       itemBuilder: (context, i) => Column(
        //         children: [
        //           ListTile(
        //             leading: CircleAvatar(
        //               backgroundColor: Colors.blueGrey,
        //               backgroundImage: AssetImage(friendsData[i].avatar),
        //             ),
        //             title: Text(
        //               friendsData[i].name,
        //               style: TextStyle(fontSize: 20),
        //             ),
        //             trailing: Wrap(
        //               spacing: 12,
        //               children: [
        //                 TextButton(
        //                   onPressed: () => {print('friend request is send')},
        //                   child: const Text('Add Friends'),
        //                   style: TextButton.styleFrom(
        //                       foregroundColor: Colors.white,
        //                       backgroundColor: Colors.blue,
        //                       padding: const EdgeInsets.symmetric(
        //                           horizontal: 10.0, vertical: 10.0),
        //                       textStyle: const TextStyle(
        //                           fontSize: 16, fontWeight: FontWeight.bold)),
        //                 ),
        //                 TextButton(
        //                   onPressed: () => {print('Friends Remove')},
        //                   child: const Text('Remove'),
        //                   style: TextButton.styleFrom(
        //                     foregroundColor: Colors.black,
        //                     backgroundColor: Colors.grey[400],
        //                     padding: const EdgeInsets.symmetric(
        //                       horizontal: 10.0,
        //                       vertical: 10.0,
        //                     ),
        //                     textStyle: const TextStyle(
        //                       fontSize: 16,
        //                       fontWeight: FontWeight.bold,
        //                     ),
        //                   ),
        //                 )
        //               ],
        //             ),
        //             onTap: () {
        //               print('Open Clicked User Profile');
        //             },
        //           )
        //         ],
        //       ),
        //     )
        // )
      ],
    );
  }
}
    // return Container(
    //   // color: Colors.blue,
    //   child: SingleChildScrollView(
    //     child: Column(
    //       children: [
    //         Container(
    //           padding: EdgeInsets.all(10),
    //           color: Colors.white,
    //           width: double.infinity,
    //           height: 60,
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               Container(
    //                 // color: Colors.red,
    //                   child: Text(
    //                     "Friends",
    //                     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    //                   )),
    //               Container(
    //                 child: IconButton (
    //                   icon: const Icon(Icons.search),
    //                   color: Colors.black,
    //                   onPressed: () {
    //                     print("clicked on search");
    //                   },
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //         Row(
    //           children: [
    //             Padding(padding: const EdgeInsets.symmetric(
    //               horizontal: 5,
    //             )),
    //             ElevatedButton(onPressed: (){
    //               print("clicked on Friend requests");
    //             },
    //               style: TextButton.styleFrom(
    //                 foregroundColor: Colors.black,
    //                 backgroundColor: Colors.grey[350]
    //               ),
    //                 child: Text("Friend requests",
    //                 ),
    //             ),
    //             Padding(padding: const EdgeInsets.symmetric(
    //               horizontal: 5,
    //             )),
    //             ElevatedButton(onPressed: (){
    //               print("clicked on Your friends");
    //             },
    //               style: TextButton.styleFrom(
    //                   foregroundColor: Colors.black,
    //                   backgroundColor: Colors.grey[350]
    //               ),
    //               child: Text("Your friends",
    //               ),
    //             ),
    //           ],
    //         ),
    //         SizedBox(
    //           height: 5,
    //         ),
    //         Divider(
    //           color: Colors.black12,thickness: 1,
    //         ),
    //         SizedBox(
    //           height: 5,
    //         ),
    //         Container(
    //           margin: EdgeInsets.all(12),
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               Text(
    //                 "People you may know",
    //                 style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
    //               ),
    //             ],
    //           ),
    //         ),
    //         ListTile(
    //           title: Text("Neha"),
    //          isThreeLine: false,
    //           leading: Container(
    //             child: CircleAvatar(
    //               radius: 40,
    //               backgroundImage: AssetImage('assets/images/dp.jpeg'),
    //             ),
    //           ),
    //           subtitle:
    //             Expanded(
    //               child: Row(
    //               children: [
    //                 ElevatedButton(
    //                   onPressed: () {
    //                     print("clicked on add friend");
    //                   },
    //                   child: Text('Add friend'),
    //                   style: ElevatedButton.styleFrom(
    //                     minimumSize: const Size(40, 40),
    //                     foregroundColor: Colors.white,
    //                     backgroundColor: Colors.blueAccent,
    //                     shape: RoundedRectangleBorder(
    //                       borderRadius: BorderRadius.circular(12), // <-- Radius
    //                     ),
    //                   ),
    //                 ),
    //                 Padding(
    //                   padding: const EdgeInsets.only(
    //                     left: 9,
    //                   ),
    //                 ),
    //                 ElevatedButton(
    //                   onPressed: () {
    //                     print("clicked on remove");
    //                   },
    //                   child: Text('Remove'),
    //                   style: ElevatedButton.styleFrom(
    //                     minimumSize: const Size(60, 40),
    //                     foregroundColor: Colors.black,
    //                     backgroundColor: Colors.grey[350],
    //                     shape: RoundedRectangleBorder(
    //                       borderRadius: BorderRadius.circular(12), // <-- Radius
    //                     ),
    //                   ),
    //                 )
    //               ],
    //             ),
    //           ),
    //         ),
    //         // SizedBox(
    //         //   height: 10,
    //         // ),
    //         ListTile(
    //           title: Text("Preeti"),
    //           isThreeLine: false,
    //           // trailing: Text("31W"),
    //           leading: Container(
    //             child: CircleAvatar(
    //               radius: 40,
    //               backgroundImage: AssetImage('assets/images/dp.jpeg'),
    //             ),
    //           ),
    //           subtitle:
    //           Row(
    //             children: [
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on add friend");
    //                 },
    //                 child: Text('Add friend'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(40, 40),
    //                   foregroundColor: Colors.white,
    //                   backgroundColor: Colors.blueAccent,
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.only(
    //                   left: 9,
    //                 ),
    //               ),
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on remove");
    //                 },
    //                 child: Text('Remove'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(60, 40),
    //                   foregroundColor: Colors.black,
    //                   backgroundColor: Colors.grey[350],
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //         ListTile(
    //           title: Text("Jiya"),
    //           isThreeLine: false,
    //           // trailing: Text("31W"),
    //           leading: Container(
    //             child: CircleAvatar(
    //               radius: 45,
    //               backgroundImage: AssetImage('assets/images/dp.jpeg'),
    //             ),
    //           ),
    //           subtitle: Row(
    //             children: [
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on add friend");
    //                 },
    //                 child: Text('Add friend'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(40, 40),
    //                   foregroundColor: Colors.white,
    //                   backgroundColor: Colors.blueAccent,
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.only(
    //                   left: 9,
    //                 ),
    //               ),
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on remove");
    //                 },
    //                 child: Text('Remove'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(60, 40),
    //                   foregroundColor: Colors.black,
    //                   backgroundColor: Colors.grey[350],
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //         // SizedBox(
    //         //   height: 10,
    //         // ),
    //         ListTile(
    //           title: Text("Riya"),
    //           isThreeLine: false,
    //           // trailing: Text("31W"),
    //           leading: Container(
    //             child: CircleAvatar(
    //               radius: 45,
    //               backgroundImage: AssetImage('assets/images/dp.jpeg'),
    //             ),
    //           ),
    //           subtitle: Row(
    //             children: [
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on add friend");
    //                 },
    //                 child: Text('Add friend'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(40, 40),
    //                   foregroundColor: Colors.white,
    //                   backgroundColor: Colors.blueAccent,
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.only(
    //                   left: 9,
    //                 ),
    //               ),
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on remove");
    //                 },
    //                 child: Text('Remove'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(60, 40),
    //                   foregroundColor: Colors.black,
    //                   backgroundColor: Colors.grey[350],
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //         ListTile(
    //           title: Text("Priyanka"),
    //           isThreeLine: false,
    //           // trailing: Text("31W"),
    //           leading: Container(
    //             child: CircleAvatar(
    //               radius: 45,
    //               backgroundImage: AssetImage('assets/images/dp.jpeg'),
    //             ),
    //           ),
    //           subtitle: Row(
    //             children: [
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on add friend");
    //                 },
    //                 child: Text('Add friend'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(40, 40),
    //                   foregroundColor: Colors.white,
    //                   backgroundColor: Colors.blueAccent,
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.only(
    //                   left: 9,
    //                 ),
    //               ),
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on remove");
    //                 },
    //                 child: Text('Remove'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(60, 40),
    //                   foregroundColor: Colors.black,
    //                   backgroundColor: Colors.grey[350],
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //         // SizedBox(
    //         //   height: 10,
    //         // ),
    //         ListTile(
    //           title: Text("Kamal"),
    //           isThreeLine: false,
    //           // trailing: Text("31W"),
    //           leading: Container(
    //             child: CircleAvatar(
    //               radius: 45,
    //               backgroundImage: AssetImage('assets/images/dp.jpeg'),
    //             ),
    //           ),
    //           subtitle: Row(
    //             children: [
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on add friend");
    //                 },
    //                 child: Text('Add friend'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(40, 40),
    //                   foregroundColor: Colors.white,
    //                   backgroundColor: Colors.blueAccent,
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.only(
    //                   left: 9,
    //                 ),
    //               ),
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on remove");
    //                 },
    //                 child: Text('Remove'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(60, 40),
    //                   foregroundColor: Colors.black,
    //                   backgroundColor: Colors.grey[350],
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //         ListTile(
    //           title: Text("Neha"),
    //           isThreeLine: false,
    //           // trailing: Text("31W"),
    //           leading: Container(
    //             child: CircleAvatar(
    //               radius: 45,
    //               backgroundImage: AssetImage('assets/images/dp.jpeg'),
    //             ),
    //           ),
    //           subtitle: Row(
    //             children: [
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on add friend");
    //                 },
    //                 child: Text('Add friend'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(40, 40),
    //                   foregroundColor: Colors.white,
    //                   backgroundColor: Colors.blueAccent,
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.only(
    //                   left: 9,
    //                 ),
    //               ),
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on remove");
    //                 },
    //                 child: Text('Remove'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(60, 40),
    //                   foregroundColor: Colors.black,
    //                   backgroundColor: Colors.grey[350],
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //         // SizedBox(
    //         //   height: 10,
    //         // ),
    //         ListTile(
    //           title: Text("Preeti"),
    //           isThreeLine: false,
    //           // trailing: Text("31W"),
    //           leading: Container(
    //             child: CircleAvatar(
    //               radius: 45,
    //               backgroundImage: AssetImage('assets/images/dp.jpeg'),
    //             ),
    //           ),
    //           subtitle: Row(
    //             children: [
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on add friend");
    //                 },
    //                 child: Text('Add friend'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(40, 40),
    //                   foregroundColor: Colors.white,
    //                   backgroundColor: Colors.blueAccent,
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.only(
    //                   left: 9,
    //                 ),
    //               ),
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on remove");
    //                 },
    //                 child: Text('Remove'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(60, 40),
    //                   foregroundColor: Colors.black,
    //                   backgroundColor: Colors.grey[350],
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //         ListTile(
    //           title: Text("Jiya"),
    //           isThreeLine: false,
    //           // trailing: Text("31W"),
    //           leading: Container(
    //             child: CircleAvatar(
    //               radius: 45,
    //               backgroundImage: AssetImage('assets/images/dp.jpeg'),
    //             ),
    //           ),
    //           subtitle: Row(
    //             children: [
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on add friend");
    //                 },
    //                 child: Text('Add friend'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(40, 40),
    //                   foregroundColor: Colors.white,
    //                   backgroundColor: Colors.blueAccent,
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.only(
    //                   left: 9,
    //                 ),
    //               ),
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on remove");
    //                 },
    //                 child: Text('Remove'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(60, 40),
    //                   foregroundColor: Colors.black,
    //                   backgroundColor: Colors.grey[350],
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //         // SizedBox(
    //         //   height: 10,
    //         // ),
    //         ListTile(
    //           title: Text("Riya"),
    //           isThreeLine: false,
    //           // trailing: Text("31W"),
    //           leading: Container(
    //             child: CircleAvatar(
    //               radius: 45,
    //               backgroundImage: AssetImage('assets/images/dp.jpeg'),
    //             ),
    //           ),
    //           subtitle: Row(
    //             children: [
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on add friend");
    //                 },
    //                 child: Text('Add friend'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(40, 40),
    //                   foregroundColor: Colors.white,
    //                   backgroundColor: Colors.blueAccent,
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.only(
    //                   left: 9,
    //                 ),
    //               ),
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on remove");
    //                 },
    //                 child: Text('Remove'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(60, 40),
    //                   foregroundColor: Colors.black,
    //                   backgroundColor: Colors.grey[350],
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //         ListTile(
    //           title: Text("Priyanka"),
    //           isThreeLine: false,
    //           // trailing: Text("31W"),
    //           leading: Container(
    //             child: CircleAvatar(
    //               radius: 45,
    //               backgroundImage: AssetImage('assets/images/dp.jpeg'),
    //             ),
    //           ),
    //           subtitle: Row(
    //             children: [
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on add friend");
    //                 },
    //                 child: Text('Add friend'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(40, 40),
    //                   foregroundColor: Colors.white,
    //                   backgroundColor: Colors.blueAccent,
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.only(
    //                   left: 9,
    //                 ),
    //               ),
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on remove");
    //                 },
    //                 child: Text('Remove'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(60, 40),
    //                   foregroundColor: Colors.black,
    //                   backgroundColor: Colors.grey[350],
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //         // SizedBox(
    //         //   height: 10,
    //         // ),
    //         ListTile(
    //           title: Text("Kamal"),
    //           isThreeLine: false,
    //           // trailing: Text("31W"),
    //           leading: Container(
    //             child: CircleAvatar(
    //               radius: 45,
    //               backgroundImage: AssetImage('assets/images/dp.jpeg'),
    //             ),
    //           ),
    //           subtitle: Row(
    //             children: [
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on add friend");
    //                 },
    //                 child: Text('Add friend'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(40, 40),
    //                   foregroundColor: Colors.white,
    //                   backgroundColor: Colors.blueAccent,
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.only(
    //                   left: 9,
    //                 ),
    //               ),
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on remove");
    //                 },
    //                 child: Text('Remove'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(60, 40),
    //                   foregroundColor: Colors.black,
    //                   backgroundColor: Colors.grey[350],
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //         ListTile(
    //           title: Text("Neha"),
    //           isThreeLine: false,
    //           // trailing: Text("31W"),
    //           leading: Container(
    //             child: CircleAvatar(
    //               radius: 45,
    //               backgroundImage: AssetImage('assets/images/dp.jpeg'),
    //             ),
    //           ),
    //           subtitle: Row(
    //             children: [
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on add friend");
    //                 },
    //                 child: Text('Add friend'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(40, 40),
    //                   foregroundColor: Colors.white,
    //                   backgroundColor: Colors.blueAccent,
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.only(
    //                   left: 9,
    //                 ),
    //               ),
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on remove");
    //                 },
    //                 child: Text('Remove'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(60, 40),
    //                   foregroundColor: Colors.black,
    //                   backgroundColor: Colors.grey[350],
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //         // SizedBox(
    //         //   height: 10,
    //         // ),
    //         ListTile(
    //           title: Text("Preeti"),
    //           isThreeLine: false,
    //           // trailing: Text("31W"),
    //           leading: Container(
    //             child: CircleAvatar(
    //               radius: 45,
    //               backgroundImage: AssetImage('assets/images/dp.jpeg'),
    //             ),
    //           ),
    //           subtitle: Row(
    //             children: [
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on add friend");
    //                 },
    //                 child: Text('Add friend'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(40, 40),
    //                   foregroundColor: Colors.white,
    //                   backgroundColor: Colors.blueAccent,
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.only(
    //                   left: 9,
    //                 ),
    //               ),
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on remove");
    //                 },
    //                 child: Text('Remove'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(60, 40),
    //                   foregroundColor: Colors.black,
    //                   backgroundColor: Colors.grey[350],
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //         ListTile(
    //           title: Text("Jiya"),
    //           isThreeLine: false,
    //           // trailing: Text("31W"),
    //           leading: Container(
    //             child: CircleAvatar(
    //               radius: 45,
    //               backgroundImage: AssetImage('assets/images/dp.jpeg'),
    //             ),
    //           ),
    //           subtitle: Row(
    //             children: [
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on add friend");
    //                 },
    //                 child: Text('Add friend'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(40, 40),
    //                   foregroundColor: Colors.white,
    //                   backgroundColor: Colors.blueAccent,
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.only(
    //                   left: 9,
    //                 ),
    //               ),
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on remove");
    //                 },
    //                 child: Text('Remove'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(60, 40),
    //                   foregroundColor: Colors.black,
    //                   backgroundColor: Colors.grey[350],
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //         // SizedBox(
    //         //   height: 10,
    //         // ),
    //         ListTile(
    //           title: Text("Riya"),
    //           isThreeLine: false,
    //           // trailing: Text("31W"),
    //           leading: Container(
    //             child: CircleAvatar(
    //               radius: 45,
    //               backgroundImage: AssetImage('assets/images/dp.jpeg'),
    //             ),
    //           ),
    //           subtitle: Row(
    //             children: [
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on add friend");
    //                 },
    //                 child: Text('Add friend'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(40, 40),
    //                   foregroundColor: Colors.white,
    //                   backgroundColor: Colors.blueAccent,
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.only(
    //                   left: 9,
    //                 ),
    //               ),
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on remove");
    //                 },
    //                 child: Text('Remove'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(60, 40),
    //                   foregroundColor: Colors.black,
    //                   backgroundColor: Colors.grey[350],
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //         ListTile(
    //           title: Text("Priyanka"),
    //           isThreeLine: false,
    //           // trailing: Text("31W"),
    //           leading: Container(
    //             child: CircleAvatar(
    //               radius: 45,
    //               backgroundImage: AssetImage('assets/images/dp.jpeg'),
    //             ),
    //           ),
    //           subtitle: Row(
    //             children: [
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on add friend");
    //                 },
    //                 child: Text('Add friend'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(40, 40),
    //                   foregroundColor: Colors.white,
    //                   backgroundColor: Colors.blueAccent,
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.only(
    //                   left: 9,
    //                 ),
    //               ),
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on remove");
    //                 },
    //                 child: Text('Remove'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(60, 40),
    //                   foregroundColor: Colors.black,
    //                   backgroundColor: Colors.grey[350],
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //         // SizedBox(
    //         //   height: 10,
    //         // ),
    //         ListTile(
    //           title: Text("Kamal"),
    //           isThreeLine: false,
    //           // trailing: Text("31W"),
    //           leading: Container(
    //             child: CircleAvatar(
    //               radius: 45,
    //               backgroundImage: AssetImage('assets/images/dp.jpeg'),
    //             ),
    //           ),
    //           subtitle: Row(
    //             children: [
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on add friend");
    //                 },
    //                 child: Text('Add friend'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(40, 40),
    //                   foregroundColor: Colors.white,
    //                   backgroundColor: Colors.blueAccent,
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.only(
    //                   left: 9,
    //                 ),
    //               ),
    //               ElevatedButton(
    //                 onPressed: () {
    //                   print("clicked on remove");
    //                 },
    //                 child: Text('Remove'),
    //                 style: ElevatedButton.styleFrom(
    //                   minimumSize: const Size(60, 40),
    //                   foregroundColor: Colors.black,
    //                   backgroundColor: Colors.grey[350],
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(12), // <-- Radius
    //                   ),
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
//   }
// }
