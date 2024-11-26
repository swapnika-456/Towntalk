/*import 'package:flutter/material.dart';
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
}*/
import 'package:flutter/material.dart';
import 'package:towntalk/pages/chat_page.dart';
import 'package:towntalk/pages/login_page.dart';
import 'package:towntalk/messages1.dart';
import 'house.dart'; // Replace with actual import paths for your app
import 'location.dart';
import 'messages.dart';
import 'profile.dart';
import 'post.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int c = 0; // Current index for the bottom navigation bar
  bool isFabVisible = true; // Flag to control FAB visibility

  final pages = [
    HomeScreen(),
    LocationSelectionPage(),
    //ChatListScreen(),
    Messages1(),
    ProfilePageUi(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          // Uncomment and add your logo asset path
          // child: Image.asset('assets/logo.png'),
        ),
        title: const Text('Town Talk'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            /*
                Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()), // Replace with your login page widget
    );

            */
            onPressed: () {
              // Handle the logout action
              //Navigator.pop(context);
              Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()), // Replace with your login page widget
    );

            },
          ),
        ],
      ),
      
body: Center(child: pages[c]),

     bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        selectedItemColor: const Color.fromARGB(255, 0, 0, 0),
        unselectedItemColor: Colors.black26,
        currentIndex: c,
        onTap: (index) {
          setState(() {
            c = index;
            // Toggle FAB visibility based on the current tab
            isFabVisible = index == 0; // Only show the FAB on the Home tab
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.location_on), label: "Location"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat, // Align FAB to the end (right) of the screen
      floatingActionButton: TweenAnimationBuilder(
        duration: const Duration(milliseconds: 500), // Animation duration
        tween: Tween<double>(begin: isFabVisible ? 1.0 : 0.0, end: isFabVisible ? 1.0 : 0.0), // Opacity animation
        builder: (context, opacity, child) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            width: isFabVisible ? 56.0 : 0.0, // Animate the size to make the FAB disappear
            height: isFabVisible ? 56.0 : 0.0,
            decoration: BoxDecoration(
              color: Colors.grey[800], // Dark grey background
              shape: BoxShape.circle,
            ),
            child: Opacity(
              opacity: opacity,
              child: child,
            ),
          );
        },
        child: FloatingActionButton(
          onPressed: () {
            // Navigate to the post page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Post()),
            );
          },
          backgroundColor: Colors.transparent, // Transparent to work with AnimatedContainer
          child: const Icon(Icons.add, color: Colors.white), // White icon
        ),
      ),
    );
  }
}

// Import the post page

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> tweets = [
    {
      "user": "Balu Appala",
      "text": "Had 2 extra tickets for DSP concert, anyone up??\n\n11:30 show Annapurna...",
      "imageUrl":
          "https://images.unsplash.com/photo-1511671782779-c97d3d27a1d4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080",
      "time": "9:47 am",
      "location": "Jammikunta"
    },
    {
      "user": "Srija Avunuri",
      "text":
          "Hosting an event, need few volunteers. Will be paid on the basis of work.\nWork needed today & tomorrow @Manjeera Grounds, Jammikunta",
      "imageUrl":
          "https://images.unsplash.com/photo-1524985069026-dd778a71c7b4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080",
      "time": "9:05 am",
      "location": "Jammikunta"
    },
    {
      "user": "John Doe",
      "text": "Looking for a jogging partner. Anyone interested? Let's connect!",
      "imageUrl":
          "https://images.unsplash.com/photo-1524985069026-dd778a71c7b4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080",
      "time": "8:30 am",
      "location": "Jammikunta"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.all(8.0),
          itemCount: tweets.length,
          itemBuilder: (context, index) {
            final tweet = tweets[index];
            return Card(
              color: Colors.white,
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey[300],
                          backgroundImage: NetworkImage(tweet["imageUrl"]!),
                          radius: 20,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          tweet["user"]!,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      tweet["text"]!,
                      style: const TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        tweet["imageUrl"]!,
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Center(
                            child: Text(
                              "Image failed to load",
                              style: TextStyle(color: Colors.red),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          tweet["time"]!,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.black54,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "Posted to: ${tweet["location"]!}",
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
