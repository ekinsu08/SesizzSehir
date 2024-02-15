import 'package:flutter/material.dart';
import 'package:sesizz_sehir/view/AminalListView.dart';
import 'package:sesizz_sehir/view/CountryListView.dart';

class BagisForm extends StatelessWidget {
  BagisForm({super.key});
  final nameContraller=TextEditingController();
  final surnameContraller=TextEditingController();
  final phonenameContraller=TextEditingController();
  final addressContraller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text("Donation"),
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
                decoration:  InputDecoration(
                  hintText: "Donation İnformation",
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

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Animal Type:"),
                AnimalListView(),
              ],
            ),

            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Country:"),
                CountryView(),
              ],
            ),

            SizedBox(
              height: 20,
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

