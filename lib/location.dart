// import 'package:flutter/material.dart';

// class  location extends StatelessWidget {
//   const  location({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(
//         title: Text("Location"),),
//         body: Container(
//           child:Text("Select The area yoou want to look in to it")
//         ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
 


// class Location extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
         
//         body: DropdownDemo(),
//         // backgroundColor: Color.fromARGB(174, 98, 2, 117),
//       );
    
//   }
// }

// class DropdownDemo extends StatefulWidget {
//   @override
//   _DropdownDemoState createState() => _DropdownDemoState();
// }

// class _DropdownDemoState extends State<DropdownDemo> {
//   // List of items in our dropdown
//   final List<String> items = ['Jammikunta', 'Huzurabad', 'Nizampet', 'KPHB'];

//   // Variable to hold the selected item
//   String? selectedItem;

//   @override
//   Widget build(BuildContext context) {
//     return Stack( 
    
//       children: [
//         Positioned(
//           top: 0,
//         left:MediaQuery.of(context).size.width/2-80,
//           child:Container(
//         child: Center(child: Text("Location",
//         style: TextStyle(
//           fontSize: 40,
//           fontWeight: FontWeight.bold,
           
//         ),
//         )),
//         ),
        
//         ),
//         Positioned( 
//           top: 150,
//           left: 0,
//           // right: 0,
//            width: MediaQuery.of(context).size.width,
//          child :Container(
//           child: Text("\"Select the Area that you wanna Stalk\"",style: TextStyle(
//             fontWeight: FontWeight.w300,
//             fontSize: 30,
//           ), ),
    
//         ),
//         ),
        
          
//             // top: MediaQuery.of(context).size.height/2,
//             // left:MediaQuery.of(context).size.width/2,
//             Center( child: Container(
//           width: double.infinity,
//           child: DropdownButton<String>(
//             hint: Center(child: Center(child: Text('Select the Area',style: TextStyle(fontSize: 20,),),)),
//             value: selectedItem,
//             onChanged: (String? newValue) {
//               setState(() {
//                 selectedItem = newValue;
//               });
//             },
//             items: items.map<DropdownMenuItem<String>>((String value) {
//               return DropdownMenuItem<String>(
//                 value: value,
//                 child: Text(value)
//               );
//             }).toList(),
//           ),
//                 ),),
//                 Positioned( 
//           top: 450,
//           left: 0,
//           // right: 0,
//            width: MediaQuery.of(context).size.width,
//          child :Container(
//           child: Text("\"What About knowing about your lover's place?\"",style: TextStyle(
//             fontWeight: FontWeight.w300,
//             fontSize: 25,
//           ), ),
    
//         ),
//         ),
//         ]
//     );
//   }
// }
import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Location',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                hintText: 'Select which area you wanna stack',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              items: const [
                DropdownMenuItem(
                  value: 'HUZURABAD',
                  child: Text('HUZURABAD'),
                ),
                DropdownMenuItem(
                  value: 'JAMMIKUNTA',
                  child: Text('JAMMIKUNTA'),
                ),
                DropdownMenuItem(
                  value: 'WARANGAL',
                  child: Text('WARANGAL'),
                ),
              ],
              onChanged: (value) {
                // Handle the selected value here
                print('Selected value: $value');
              },
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    Directionality(
      textDirection: TextDirection.ltr, // Set the desired text direction
      child: MaterialApp(
        home: LocationScreen(), // Replace with your main app widget
      ),
    ),
  );
}