import 'package:flutter/material.dart';
import 'package:sesizz_sehir/lib/services/animalModel.dart';
import 'package:sesizz_sehir/view/RegisterView.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  int selcted = 0 ;


  @override
  Widget build(BuildContext context) {

    return  SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            children : [
              Icon(Icons.notifications_none_outlined,size: 33,),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 65,
                child: ListView.builder(
                  itemCount: AnimalModel().categoryList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context , index){
                      return GestureDetector(
                        onTap: (){
                          setState(() {
                            selcted = index;
                          });
                        },
                        child: Card(

                          color: index == selcted ? Colors.pink.shade100 : Colors.white,
                          elevation: index == selcted ? 3:0,
                          shape: RoundedRectangleBorder(
                            side: index != selcted ? BorderSide(color: Colors.grey, width: 1) : BorderSide.none,
                            borderRadius: BorderRadius.circular(50),

                          ),
                          child:Padding(
                            padding:EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,

                              children: [
                                ClipOval(
                                  child: Container(
                                    width: 40.0,
                                    height: 40.0,
                                    child: Image.network(
                                      AnimalModel().categoryList[AnimalModel().categoryList.keys.elementAt(index)]!,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0,right: 8),
                                  child: Text(AnimalModel().categoryList.keys.elementAt(index), style: TextStyle(fontSize: 20.5, fontWeight: FontWeight.w600,),),


                                ),
                              ],
                            ),
                          ),

                        ),
                      );
                    }
                ),

              ),
              SizedBox(
                height: 24,
              ),

              Expanded(
                child: GridView.builder(
                  itemCount: 41,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 200,
                      width: 200,
                      child: Card(

                        child: Column(
                          children: [
                            SizedBox(
                              height: 100,

                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  Image.network(
                                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                                    fit: BoxFit.cover,
                                  ),

                                  Positioned(
                                      right: 0,
                                      child: Icon(Icons.star_border_outlined,size: 33,color: Colors.white,)),


                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(

                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(

                                    children: [
                                      Text('GARY', style: TextStyle(fontSize: 19.5, fontWeight: FontWeight.w600,),),
                                      Spacer(),
                                      Text('3 years old', style: TextStyle(fontSize: 15.5,),),

                                    ],

                                  ),
                                  Text('Bird', style: TextStyle(fontSize: 18.5, ),),

                                ],

                              ),
                            ),

                          ],
                        ),





                      ),
                    );
                  },
                
                
                
                ),
              ),

            ],

          ),



        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {  },
        ),
      ),
    );

  }
}
