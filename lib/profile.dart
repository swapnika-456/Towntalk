import 'package:flutter/material.dart';


 
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       debugShowCheckedModeBanner: false,
//       title: 'Profile Page',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity
//       ),
//       home: ProfilePageUi(),
//     ); 
//   }
// }

class ProfilePageUi extends StatefulWidget {
  @override
  State<ProfilePageUi> createState() => _ProfilePageUiState();
}

class _ProfilePageUiState extends State<ProfilePageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
              color: Colors.black,
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        CircleAvatar(
                      radius: 50,
                      ),
                      Positioned(
                        bottom: 3,
                        right: 2,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 10,
                          child: Icon(Icons.edit),
                          ))
                      ],
                    ),
                      SizedBox(
                        height: 10,
                      ),
                    Text("Ram",
                    style: TextStyle(fontSize: 20,color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                      ),
                    Text("Hyderabad,Telangana",style: TextStyle(fontSize: 18,color: Colors.white),
                    ),
                  ],
                ),
              ),
              ),
              Card(
                child: Container(
                  child: const Column(
                    children: <Widget>[
                      Text("User information"),
                      Divider(),
                      ListTile(
                        title: Text("Location"),
                        subtitle: Text("Hyderabad,Telangana"),
                        leading: Icon(Icons.location_on),
                        ),
                      ListTile(
                        title: Text("Email"),
                        subtitle: Text("Hyderabad123@gmail.com"),
                        leading: Icon(Icons.email),
                        ),
                        ListTile(
                        title: Text("Phone"),
                        subtitle: Text("123456789"),
                        leading: Icon(Icons.phone),
                        ),
                    ],
                  ),
                ),
              )
            ],
          ),
         
    );
 }
}