import 'package:flutter/material.dart';

class AddActivityPage extends StatefulWidget {
  @override
  _AddActivityPageState createState() => _AddActivityPageState();
}

class _AddActivityPageState extends State<AddActivityPage> {
  String dropdownValue = 'Cleanliness'; // set the initial value of the dropdown

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Category:', style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            DropdownButton<String>(
              value: dropdownValue,
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>['Cleanliness', 'Donation']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 16),
            Text('Organized by:', style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter the name of the organizer',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            Text('Date:', style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter the date of the event',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            Text('Place:', style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter the location of the event',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            Text('Details:', style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            TextFormField(
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Enter the details of the event',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
