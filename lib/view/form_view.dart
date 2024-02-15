import 'package:flutter/material.dart';

class FormView extends StatelessWidget {
   FormView({super.key});
  final nameContraller=TextEditingController();
   final surnameContraller=TextEditingController();
   final phonenameContraller=TextEditingController();
   final addressContraller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text("Edit profile"),
        centerTitle: true,
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameContraller,
              decoration:  InputDecoration(
                hintText: "Name",
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  ),

                ),
              ),


            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: TextField(
                controller: nameContraller,
                decoration:  InputDecoration(
                  hintText: "Surname",
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),

                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: TextField(
                decoration:  InputDecoration(
                  hintText: "E-mail",
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),

                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: TextField(
                decoration:  InputDecoration(
                  hintText: "Address",
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),

                  ),
                ),
              ),
            ),



            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),

            ),
                ),
                onPressed: (){},
                child: Text("Submit",style: TextStyle(color: Colors.white),),
              ),




            ),






          ],
        ),
      ),
    );



  }
}

