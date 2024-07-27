import 'package:fashions/screens/categories_screen.dart';
import 'package:flutter/material.dart';

class Successful extends StatelessWidget {
  const Successful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(40),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 250,
          ),
          const Icon(
            Icons.check_circle_outline_outlined,
            color: Colors.green,
            size: 80.0, // You can adjust the size as needed
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Successful!",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "You have successfully registered in our app and can start shopping in it.",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(
            flex: 1,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.black),
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const Categories()),
                  ModalRoute.withName('//'),
                );
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Text(
                  "Start Shopping",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      )),
    ));
  }
}
