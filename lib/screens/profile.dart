import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          backgroundColor: const Color.fromARGB(255, 23, 33, 123),
          centerTitle: true,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Profile",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ],
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                size: 30,
              )),
        ),
      ),
      body: DriverDetails(),
    );
  }
}

class DriverDetails extends StatefulWidget {
  const DriverDetails({super.key});

  @override
  State<DriverDetails> createState() => _DriverDetailsState();
}

class _DriverDetailsState extends State<DriverDetails> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Card(
            elevation: 10,
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 176, 193, 251),
                  borderRadius: BorderRadius.circular(20)),
              height: size.height * .35,
              width: size.width * .5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textpair('Name', 'Rajesh'),
                      textpair('Age', '35'),
                      textpair('Contact No.', ''),
                      Text(
                        ' 8745641256',
                        style: const TextStyle(
                          fontSize: 17,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      textpair('Experience', '4 Yr'),
                      textpair('Vehicle Details', ''),
                      textpair('Insurance', 'May 2024'),
                      textpair('Truck No.', ''),
                      Text(
                        ' HR65A5594',
                        style: const TextStyle(
                          fontSize: 17,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ]),
              ),
            ),
          ),
          Container(
            width: size.width * .4,
            height: size.height * .15,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(
                      'https://cdn.imgbin.com/10/20/3/imgbin-car-driving-computer-icons-truck-driver-car-cgicc0xxLBdT4RP4mu93N6XEe.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
        ],
      ),
    );
  }

  Widget textpair(String text1, String text2) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$text1 : ",
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Text(
          text2,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
