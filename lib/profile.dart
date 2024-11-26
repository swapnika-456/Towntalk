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

/*class ProfilePageUi extends StatefulWidget {
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
}*/
import 'package:flutter/material.dart';

class ProfilePageUi extends StatefulWidget {
  @override
  State<ProfilePageUi> createState() => _ProfilePageUiState();
}

class _ProfilePageUiState extends State<ProfilePageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          // Profile Header
          Container(
            color: Colors.grey.shade200,
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey.shade400,
                  child: const Icon(
                    Icons.person,
                    size: 60,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Harish Bollampally",
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
                const SizedBox(height: 5),
                const Text(
                  "harish1@gamil.com",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          ),

          // User Information Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              color: Colors.grey.shade100,
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      "User Information",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    ListTile(
                      leading: Icon(Icons.location_on, color: Colors.black),
                      title: Text(
                        "Location",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Jammikunta, Huzurabad, Nizampet"),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.email, color: Colors.black),
                      title: Text(
                        "Email",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("harish1@gamil.com"),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.phone, color: Colors.black),
                      title: Text(
                        "Phone",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("+91 1234567890"),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Bottom Navigation Icons

        ],
      ),
    );
  }
}

