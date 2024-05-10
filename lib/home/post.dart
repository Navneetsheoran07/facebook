import 'package:flutter/material.dart';

import '../models/post.dart';


class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            for (var i = 0; i < postdata.length; i++) ...[
              Row(
                children: [
                  IconButton(
                  //  iconSize: 30,
                    onPressed: () => {},
                    icon: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage(postdata[i].avatarimage),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              postdata[i].name,
                              style: const TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                              onPressed: () {
                                print('clicked on follow');
                              },
                              child: const Text(
                                'Follow',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Wrap(
                          spacing: 10.0,
                          children: [
                            Text(
                              postdata[i].time,
                              style: const TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                            Text(
                              postdata[i].space,
                            ),
                            const Icon(Icons.public)
                          ],
                        )
                      ],
                    ),
                  ),
                  IconButton(
                      iconSize: 30.0,
                      onPressed: (){postdata[i].moreOnPressed;},
                      icon: const Icon(Icons.more_horiz_outlined)),
                ],
              ),
              Container(
              //  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        postdata[i].postTitle,
                        style: const TextStyle(fontSize: 18.0, color: Colors.black),
                      ),
                    ),
                    Image(image: AssetImage(postdata[i].postImage))
                  ],
                ),
              ),
              Container(
                width: 400,
                height: 40,
              //color: Colors.green,
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 30,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                         Icon(Icons.thumb_up,size: 17,color: Colors.blue,),
                          Icon(Icons.favorite,size: 17,color: Colors.red,),
                          Text(
                            postdata[i].like,
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 290,
                      height: 30,
                     // color: Colors.white70,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                        //  Text('4 comments • 54 shares • 53k views'),
                          Text(
                            postdata[i].comments,
                          ),
                          Text(' comments'),
                          Text(' • '),
                          Text(
                            postdata[i].shares,
                          ),
                          Text(' shares'),
                          Text(' • '),
                          Text(
                            postdata[i].views
                          ),
                          Text(' views'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Container(
                width: 400,
                height: 40,
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      height: 30,
                     // color: Colors.blue,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          IconButton(
                            icon: const Icon(Icons.thumb_up,size: 22,color: Colors.blue,),
                            onPressed: postdata[i].likeOnPressed,
                          ),
                          Text('Like')
                        ],
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 30,
                    //  color: Colors.orange,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.message_outlined,size: 22,),
                            onPressed: postdata[i].commentOnpressed,
                          ),
                          Text('Comment')
                        ],
                      ),
                    ),
                    Container(
                      width: 95,
                      height: 30,
                   //   color: Colors.black,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.send,size: 22,),
                            onPressed: postdata[i].sendOnpressed,
                          ),
                          Text('Send')
                        ],
                      ),
                    ),
                    Container(
                      width: 95,
                      height: 30,
                     // color: Colors.blue,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.share,size: 22,),
                            onPressed: postdata[i].shareOnPressed,
                          ),
                          Text('Share')
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     Row(
              //       children: [
              //         IconButton(
              //           onPressed: postdata[i].likeOnPressed,
              //           highlightColor: Colors.blueAccent,
              //           icon: const Icon(Icons.thumb_up_outlined),
              //         ),
              //         const Text(
              //           'Like',
              //           style: TextStyle(fontSize: 12.0),
              //         ),
              //       ],
              //     ),
              //     Row(
              //       children: [
              //         IconButton(
              //           onPressed: postdata[i].commentOnpressed,
              //           highlightColor: Colors.blueAccent,
              //           icon: const Icon(Icons.message_outlined),
              //         ),
              //         const Text(
              //           'Comments',
              //           style: TextStyle(fontSize: 12.0),
              //         ),
              //       ],
              //     ), Row(
              //       children: [
              //         IconButton(
              //           onPressed: postdata[i].sendOnpressed,
              //           highlightColor: Colors.blueAccent,
              //           icon: const Icon(Icons.send_outlined),
              //         ),
              //         const Text(
              //           'Send',
              //           style: TextStyle(fontSize: 12.0),
              //         ),
              //       ],
              //     ),
              //     Row(
              //       children: [
              //         IconButton(
              //           onPressed: postdata[i].shareOnPressed,
              //           highlightColor: Colors.blueAccent,
              //           icon: const Icon(Icons.share_outlined),
              //         ),
              //         const Text(
              //           'Share',
              //           style: TextStyle(fontSize: 12.0),
              //         ),
              //       ],
              //     ),
              //
              //   ],
              // ),
            //  Divider(),
              Container(
                height: 7,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[350],
                child: Padding(
                  padding: const  EdgeInsets.symmetric(horizontal: 13,vertical: 7),
                ),
              ),
            ]
          ],
        ),
    );
  }
}
