

import 'package:birthday_card_app/birthday_card.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class GetNameForCard extends StatefulWidget {
  const GetNameForCard({super.key});

  @override
  State<GetNameForCard> createState() => _GetNameForCardState();
}

class _GetNameForCardState extends State<GetNameForCard> {
  var text = "hello";
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#ff91af"),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
             const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text("Welcom , Please Enter The Name For Using To The Card ",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),
              TextFormField(
                controller: controller,
                onChanged: (value) {
                  value = text;
                },
                decoration:  InputDecoration(
                   hintText: "Enter Your Name",
                   hintStyle: const TextStyle(
                    fontSize: 16,
                   
                    color: Colors.black
                   ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
             const  SizedBox(
                height: 20,
               ),
              MaterialButton(
                
                color: Colors.pink,
                textColor: Colors.white,
                height: 50,
                onPressed: (){
                text =controller.value.text ;
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => BirthdayCard(text: text))
                    )
                    );
                },
               child: const Text("Go To Your BirthDay Card",
                style: TextStyle(
                fontSize: 22
               ),
               ),
              )
            ],

          ),
        ),
      ),
    );
  }
}