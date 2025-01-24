// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:syncfusion_flutter_maps/maps.dart';
//
// class MapScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SfMaps(
//       layers: [
//         MapTileLayer(
//           initialFocalLatLng: MapLatLng(28.6324023, 77.0578449),
//           initialZoomLevel: 7,
//           initialMarkersCount: 9,
//           urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
//           markerBuilder: (BuildContext context, int index) {
//             return MapMarker(
//               latitude: 29.6324023,
//               longitude: 77.0578449,
//               child: Icon(
//                 Icons.location_on,
//                 color: Colors.red[800],
//               ),
//               size: Size(20, 20),
//             );
//           },
//         ),
//       ],
//     );
//   }
// }