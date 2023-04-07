import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:saathi/screens/home_screen.dart';

class location extends StatefulWidget {
  @override
  _locationState createState() => _locationState();
}

class _locationState extends State<location> {
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(28.75304173784404, 77.4965410152737),
    zoom: 13.5,
  );
  // late GoogleMapController _googleMapController;
  // late Marker origin;
  // late Marker destination;
//@override
  // void dispose() {
  //   _googleMapController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: AppBar(
              backgroundColor: const Color.fromARGB(255, 43, 23, 123),
              centerTitle: true,
              title:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                const Text(
                  "Location",
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
                    size: 30,
                  )),
            )),
        body: GoogleMap(
          myLocationButtonEnabled: false,
          zoomControlsEnabled: false,
          initialCameraPosition: _initialCameraPosition,
          //onMapCreated: (controller) => _googleMapController = controller,
//  markers: {
//   if (origin != null) origin,
//   if(destination != null) destination
//  },


        ));
  }
}
