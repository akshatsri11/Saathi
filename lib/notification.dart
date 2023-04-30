import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:saathi/screens/home_screen.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  Query dbRef = FirebaseDatabase.instance.ref('Driver1').child('-NUGju_T0eJz6XhOEuqW');
  DatabaseReference reference =
      FirebaseDatabase.instance.ref('Driver1').child('-NUGju_T0eJz6XhOEuqW');
  Widget listItem({required Map message}) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: 110,
      color: Colors.amberAccent,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              message['notification'],
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ]),
    );
  }

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
      body: Container(height: double.infinity,
      child: FirebaseAnimatedList(query: dbRef,
          itemBuilder: (BuildContext context, DataSnapshot snapshot, Animation<double> animation, int index) {
 
            Map message = snapshot.value as Map;
            message['-NUGju_T0eJz6XhOEuqW'] = snapshot.key;
            return listItem(message: message);
          }
    ),
    ),
    );
  }
}
