/*import 'package:flutter/material.dart';

class post extends StatefulWidget {
// final String initialText;

//   post({required this.initialText});
  @override
  State<post> createState() => _postState();
}

class _postState extends State<post> {
   String _inputText = '';
  @override
  //  void initState() {
  //   super.initState();
  //   if (widget.initialText != null) {
  //     _inputText = widget.initialText;
  //   }
  // }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TOWNTALK"),
      ),
       body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Positioned(
            // top: 0,
            //   child:
              Container( height: 150.0, // Set a desired height for the text field container
              child: TextField(
                onChanged: (text) {
                  setState(() {
                    _inputText = text;
                  });
                },
                maxLines: null, // Allows unlimited lines
                minLines: null, // Starts with a single line
                expands: true, // Expands to fill the container
                decoration: InputDecoration(
                  hintText: 'WHAT\'S HAPPENING OUT THERE',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0), 
                ),
              ),
              
              ),
              
              
          SizedBox(height: 20),
            Row(
              children: [
                Spacer(),
                ElevatedButton.icon(
                  onPressed: () {
                    // Define the action to be taken when the button is pressed
                    // print('Post button pressed: $_inputText');
                  },
                   label: Text('Post'), // Text label
                   icon: Icon(Icons.send), // Icon to be displayed
                 
                  
                ),
              ],
            ),
            Text(
                    'you are posting to: Jammikunta', // Your custom text
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
          
          ]

    )));
    
  }
}*/
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  @override
  State<Post> createState() => _postState();
}

class _postState extends State<Post> with TickerProviderStateMixin {
  String _inputText = '';

  // Animation controller and animation for scaling the post button
  late AnimationController _scaleController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller
    _scaleController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500), // Duration of the scale animation
    );

    // Initialize the scale animation
    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.2).animate(
      CurvedAnimation(parent: _scaleController, curve: Curves.easeInOut),
    );

    // Trigger the animation when the widget is first created
    _scaleController.forward();
  }

  @override
  void dispose() {
    _scaleController.dispose(); // Dispose the controller when not needed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TOWNTALK"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TextField for input
            Container(
              height: 150.0,
              child: TextField(
                onChanged: (text) {
                  setState(() {
                    _inputText = text;
                  });
                },
                maxLines: null,
                minLines: null,
                expands: true,
                decoration: InputDecoration(
                  hintText: 'WHAT\'S HAPPENING OUT THERE',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            
            // Animated Post button
            Row(
              children: [
                Spacer(),
                // Use AnimatedBuilder to apply the scaling animation
                AnimatedBuilder(
                  animation: _scaleAnimation,
                  builder: (context, child) {
                    return Transform.scale(
                      scale: _scaleAnimation.value,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          // Define the action to be taken when the button is pressed
                          // print('Post button pressed: $_inputText');
                        },
                        label: Text('Post'),
                        icon: Icon(Icons.send),
                      ),
                    );
                  },
                ),
              ],
            ),

            // Static text for posting location
            Text(
              'You are posting to: Jammikunta',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
