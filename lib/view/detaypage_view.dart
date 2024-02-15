import 'package:flutter/material.dart';
import 'package:sesizz_sehir/view/pageview.dart';

class DetayPage extends StatefulWidget {
  const DetayPage({super.key});

  @override
  State<DetayPage> createState() => _DetayPageState();
}

class _DetayPageState extends State<DetayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 300,
              child: Card(
                child: Stack(
                  children: [
                    PetPageView(),
                    Positioned(
                      left: 5,
                      top: 5,
                      child: IconButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: CircleBorder(),
                        ),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 5,
                      top: 5,
                      child: IconButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey.withOpacity(0.4),
                          shape: CircleBorder(),
                        ),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.star_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Text('Samoyed Willy',style: TextStyle(color: Colors.black,fontSize: 25,fontStyle: FontStyle.italic),),
            SizedBox(
              height: 20,
            ),
            Row(
             children: [
               Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   color: Colors.yellow.withOpacity(0.7),
                 ),
                 child: const Padding(
                   padding: EdgeInsets.all(8.0),
                   child: Text('1 year',
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: 15,
                         ),),
                 ),
               ),
               SizedBox(
                 width: 20,

               ),
               Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   color: Colors.purple.withOpacity(0.10),
                 ),
                 child: const Padding(
                   padding: EdgeInsets.all(8.0),
                   child: Text('Knows the commands',
                     style: TextStyle(
                       color: Colors.black,
                       fontSize: 15,
                     ),),
                 ),
               ),
               SizedBox(
                 width: 20,

               ),
               Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   color: Colors.pink.withOpacity(0.10),
                 ),
                 child: const Padding(
                   padding: EdgeInsets.all(8.0),
                   child: Text('23 kg',
                     style: TextStyle(
                       color: Colors.black,
                       fontSize: 15,
                     ),),
                 ),
               ),
             ],
           ),
            SizedBox(
              height: 30,

            ),
            Text('The kindest Samoyed we'
                've ever met. Likes to play with balls, is friends with other animals. Despite the white color, he loves rain and puddles.',style: TextStyle(color: Colors.grey,fontSize: 23,fontStyle: FontStyle.italic),),
            SizedBox(
              height: 30,

            ),

            Text('Update date: December 6',style: TextStyle(color: Colors.grey,fontSize: 20),),



          ],
        ),
      ),
    );
  }
}
