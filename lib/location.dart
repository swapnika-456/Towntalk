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
/*import 'package:flutter/material.dart';

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
}*/
/*import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LocationSelectionPage(),
    );
  }
}

class LocationSelectionPage extends StatefulWidget {
  @override
  _LocationSelectionPageState createState() => _LocationSelectionPageState();
}

class _LocationSelectionPageState extends State<LocationSelectionPage> {
  final List<String> _locations = [
    'New York',
    'Los Angeles',
    'Chicago',
    'Houston',
    'Phoenix'
  ];
  String? _selectedLocation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Location Selector"),
      ),
      // Option 1: Solid Color Background (simple color)
      // backgroundColor: Colors.blueGrey[50], // Uncomment this line for a solid background color

      body: Container(
        // Option 2: Gradient Background
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [const Color.fromARGB(255, 210, 187, 251), Colors.blue.shade300],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        // Option 3: Image Background (use a network image or a local asset)
        // Uncomment the following lines for an image background:
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: NetworkImage('https://example.com/your_image.jpg'), // Replace with your image URL or use AssetImage for local
        //     fit: BoxFit.cover,
        //   ),
        // ),

        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Select a location",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  ),
                  value: _selectedLocation,
                  items: _locations.map((String location) {
                    return DropdownMenuItem<String>(
                      value: location,
                      child: Text(location),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedLocation = value;
                    });
                  },
                  hint: Text("Choose a location"),
                ),
                SizedBox(height: 32),
                Text(
                  "Which area do you want to explore next?",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.blueGrey,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    String selectedLocation =
                        _selectedLocation ?? "No location selected";
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Location: $selectedLocation"),
                      ),
                    );
                  },
                  child: Text("Submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}*/
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: Colors.black),
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.black87),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.grey[800],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
      home: LocationSelectionPage(),
    );
  }
}

class LocationSelectionPage extends StatefulWidget {
  @override
  _LocationSelectionPageState createState() => _LocationSelectionPageState();
}

class _LocationSelectionPageState extends State<LocationSelectionPage>
    with SingleTickerProviderStateMixin {
  final List<String> _allLocations = [
    'New York',
    'Los Angeles',
    'Chicago',
    'Houston',
    'Phoenix',
    'San Francisco',
    'Seattle',
    'Miami',
    'Boston',
    'Denver'
  ];

  List<String> _filteredLocations = [];
  List<String> _recentSearches = [];
  String? _selectedLocation;

  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _filteredLocations = _allLocations; // Initially display all locations

    // Initialize animation controller
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    // Define the slide animation for the location list
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.2), // Start slightly below the view
      end: Offset.zero, // Move to original position
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOut,
      ),
    );

    _controller.forward(); // Start the animation
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onSearchChanged(String query) {
    setState(() {
      if (query.isEmpty) {
        _filteredLocations = _allLocations;
      } else {
        _filteredLocations = _allLocations
            .where((location) =>
                location.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  void _onLocationSelected(String location) {
    setState(() {
      _selectedLocation = location;
      if (!_recentSearches.contains(location)) {
        _recentSearches.add(location);
        if (_recentSearches.length > 5) {
          _recentSearches.removeAt(0); // Limit recent searches to 5
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Location Selector"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Search for a location",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            TextField(
              onChanged: _onSearchChanged,
              decoration: InputDecoration(
                hintText: "Type to search locations...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                prefixIcon: const Icon(Icons.search),
              ),
            ),
            const SizedBox(height: 16),

            // Animated list of locations
            Expanded(
              child: SlideTransition(
                position: _slideAnimation,
                child: ListView.builder(
                  itemCount: _filteredLocations.length,
                  itemBuilder: (context, index) {
                    final location = _filteredLocations[index];
                    return ListTile(
                      title: Text(location),
                      onTap: () => _onLocationSelected(location),
                    );
                  },
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Recently searched locations directly visible (No animation)
            if (_recentSearches.isNotEmpty) ...[
              const Text(
                "Recently Searched Locations",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8.0,
                children: _recentSearches.map((location) {
                  return Chip(
                    label: Text(location),
                    onDeleted: () {
                      setState(() {
                        _recentSearches.remove(location);
                      });
                    },
                  );
                }).toList(),
              ),
            ],
            const SizedBox(height: 16),

            ElevatedButton(
              onPressed: () {
                String selectedLocation =
                    _selectedLocation ?? "No location selected";
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Location: $selectedLocation"),
                  ),
                );
              },
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
