import 'package:dating_app/LifeStylePage.dart';
import 'package:dating_app/constants.dart';
import 'package:flutter/material.dart';

class InterestsHobbiesPage extends StatefulWidget {
  @override
  _InterestsHobbiesPageState createState() => _InterestsHobbiesPageState();
}

class _InterestsHobbiesPageState extends State<InterestsHobbiesPage> {
  late TextEditingController _activitiesController;
  late TextEditingController _hobbiesController;
  late TextEditingController _musicController;
  late TextEditingController _moviesController;
  late TextEditingController _booksController;

  @override
  void initState() {
    super.initState();
    _activitiesController = TextEditingController();
    _hobbiesController = TextEditingController();
    _musicController = TextEditingController();
    _moviesController = TextEditingController();
    _booksController = TextEditingController();
  }

  @override
  void dispose() {
    _activitiesController.dispose();
    _hobbiesController.dispose();
    _musicController.dispose();
    _moviesController.dispose();
    _booksController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Interests and Hobbies'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildTextField('Favorite activities 🏋️', _activitiesController),
            SizedBox(height: 24.0),
            _buildTextField('Hobbies and interests 🎨', _hobbiesController),
            SizedBox(height: 24.0),
            _buildTextField('Music preferences 🎵', _musicController),
            SizedBox(height: 24.0),
            _buildTextField('Movies and TV shows they like 🎬', _moviesController),
            SizedBox(height: 24.0),
            _buildTextField('Books you enjoy reading 📚', _booksController),
            SizedBox(height: 24.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
              ),
              onPressed: () {
                // Save information and navigate to the next screen
                // You can add your logic here to save the data
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LifestylePage()),
                );
              },
              child: Text(
                'Save',
                style: kButtonStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(Icons.edit),
      ),
    );
  }
}

// Define NextPage widget for navigation to the next screen
