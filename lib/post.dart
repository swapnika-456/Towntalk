import 'package:flutter/material.dart';

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
}