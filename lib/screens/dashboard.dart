import 'package:flutter/material.dart';
import 'package:saathi/screens/profile.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
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
                "Dashboard",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Image.asset(
                'lib/images/truck_icon.png',
                width: MediaQuery.of(context).size.width * .2,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    size: 35,
                  )),
            ],
          ),
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                size: 35,
              )),
        ),
      ),
      body: const DriverList(),
    );
  }
}

class DriverList extends StatefulWidget {
  const DriverList({super.key});

  @override
  State<DriverList> createState() => _DriverListState();
}

class _DriverListState extends State<DriverList> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              height: mq.height * .22,
              child: Column(
                children: [
                  Container(
                    width: mq.width,
                    color: const Color.fromARGB(255, 151, 170, 238),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'HR65A5594-Rajesh',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Material(
                    elevation: 20,
                    child: Column(
                      children: [
                        SizedBox(
                            height: mq.height * .11,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 2, 10, 0),
                              child: GridView.count(
                                crossAxisCount: 2,
                                childAspectRatio: 8 / 1,
                                children: <Widget>[
                                  textpair('Date', '1/2/2023'),
                                  textpair('Time', '07:51:24 hrs'),
                                  textpair('Speed', '0 km/hr'),
                                  textpair('Distance', '10 Km'),
                                  textpair('Travel Time', '1 Hr'),
                                  textpair('Drowsiness', '0 time'),
                                  textpair('Location', 'Haryana'),
                                ],
                              ),
                            )),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProfileScreen()));
                          },
                          child: Container(
                            color: const Color.fromARGB(255, 151, 170, 238),
                            width: mq.width * .4,
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Details',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  Widget textpair(String text1, String text2) {
    return Row(
      children: [
        Text(
          "$text1 : ",
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Text(
          text2,
          style: const TextStyle(
            fontSize: 15,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
