import 'package:flutter/material.dart';
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
                  itemCount: 5,
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
                          shape: RoundedRectangleBorder(
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
                                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0,right: 8),
                                  child: Text('ALL', style: TextStyle(fontSize: 20.5, fontWeight: FontWeight.w600,),),


                                ),
                              ],
                            ),
                          ),

                        ),
                      );
                    }
                ),

              ),
              Card(
                child: Column(


                ),
              ),
            ],

          ),



        ),
      ),
    );

  }
}
