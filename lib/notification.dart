import 'package:flutter/material.dart';
import 'package:saathi/screens/home_screen.dart';

class notification extends StatelessWidget {
  const notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          backgroundColor: const Color.fromARGB(255, 23, 33, 123),
          centerTitle: true,
          title: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const Text(
              "Notification",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ]),
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              icon: const Icon(
                Icons.arrow_back,
                size: 35,
              )),
        ),
      ),
      body: Container(
         
          child: Column(children: [
            //  child:
            Center(
               
              child: Text(
                'Alerts',
                style: TextStyle(
                  
                    //background: Paint()..color = Colors.blue.shade200,
                    color: Colors.blue.shade900,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 100),
            Text(
              "No recent alerts",
              style: TextStyle(color: Colors.grey.shade400, fontSize: 40, fontWeight: FontWeight.bold),
            )
            //  )
          ])),
    );
  }
}
