import 'package:flutter/material.dart';
import 'package:towntalk/house.dart';
import 'package:towntalk/location.dart';
import 'package:towntalk/messages.dart';
import 'package:towntalk/profile.dart';
// import 'package:test/home.dart';
// import 'package:test/location.dart';
// import 'package:test/messages.dart';
 //import 'package:test/profile.dart';

// // class  HomePage extends StatefulWidget {
// //   const  HomePage({super.key});

// //   @override
// //   State< HomePage> createState() => _HomePageState();
// // }
// // class SigninPage extends StatelessWidget {
// //    SigninPage({super.key});
// //   final usernameController = TextEditingController();
// //   final passwordController = TextEditingController();
  
// //   void main(){}


  
  
// //   @override
// //   Widget build(BuildContext context){
// //   return Scaffold(
//  class HomePage extends StatelessWidget {
//    HomePage({super.key});

//    void main(){}
//   int c=0;

// final pages=[
// HomePage(),
// Location(),
// chatS(),
// Profile(),
// ];

//   @override
//   Widget build(BuildContext context) {
//      return Scaffold(
      // body:Center(child: pages[c],
      
      // ),
//         appBar: AppBar(
//           title: Center(child: Text("TownTalk")),
//           backgroundColor: Colors.green,
//           //  leading: Image.asset('assets/logo.jpg'),
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           backgroundColor: Colors.green,
//           selectedItemColor: Colors.green,
//           unselectedItemColor: Colors.black26,
//           currentIndex: c,
//           // onTap: (index) {
//           // setState(() {
//           //   c=index;
//           // }); 
//           // },
//           items:[
//           BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
//            BottomNavigationBarItem(icon: Icon(Icons.location_on),label: "Location"),
            
//             BottomNavigationBarItem(icon: Icon(Icons.message),label: "Message"),
//             BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
//         ]
//         ),
//         );

//   }
// }
class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int c=0;
final pages=[
HomeScreen(),
LocationScreen(),
ChatListScreen(),
ProfilePageUi()
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: pages[c],
      
      ),
      // appBar: AppBar(
      //    leading: IconButton(
      //     icon: Icon(Icons.logout), // Custom icon
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      //   title: Center(child: Text("TownTalk")),
      //             backgroundColor: Colors.green,
      // ),
       appBar: AppBar(
          // Add the logo to the leading property of AppBar
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            // child: Image.asset('assets/logo.png'),
          ),
          title: Text('Town Talk'),
          centerTitle: true,
          // Add the logout button to the actions property of AppBar
          actions: [
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                // Handle the logout action
                Navigator.pop(context);
              },
            ),
          ],
        ),
       bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.green,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black26,
          currentIndex: c,
          onTap: (index) {
          setState(() {
            c=index;
          }); 
          },
          items:[
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
           BottomNavigationBarItem(icon: Icon(Icons.location_on),label: "Location"),
            
            BottomNavigationBarItem(icon: Icon(Icons.message),label: "Message"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ]
        ),
    );
  }
}