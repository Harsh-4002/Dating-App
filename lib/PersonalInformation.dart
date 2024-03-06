import 'package:dating_app/Intrest&Hobies.dart';
import 'package:dating_app/constants.dart';
import 'package:flutter/material.dart';

class PersonalInfoPage extends StatefulWidget {
  @override
  _PersonalInfoPageState createState() => _PersonalInfoPageState();
}

class _PersonalInfoPageState extends State<PersonalInfoPage> {
  late DateTime _selectedDate;
  late TextEditingController _occupationController;
  late String _educationLevel;
  late String _religion;

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
    _occupationController = TextEditingController();
    _educationLevel = '';
    _religion = '';
  }

  @override
  void dispose() {
    _occupationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Personal Information'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: [
                Text(
                  'Date of Birth :',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 5.0),
                GestureDetector(
                  onTap: () {
                    _showDatePicker(context);
                  },
                  child: Icon(
                    Icons.calendar_today,
                    color: Colors.pink,
                  ),
                ),
                Text(
                  ' ${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.pinkAccent
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.0),
            Text(
              'Tap to select a date',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey,
              ),
            ),

            SizedBox(height: 15.0),
            TextField(
              controller: _occupationController,
              decoration: InputDecoration(
                labelText: 'Occupation',
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              'Education Level',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12.0),
            _buildEducationLevelRadioButtons(),
            SizedBox(height: 15.0),
            Text(
              'Religion',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12.0),
            _buildReligionRadioButtons(),
            SizedBox(height: 15.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
              ),
              onPressed: () {
                // Save information and navigate to the next screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InterestsHobbiesPage()),
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

  Widget _buildEducationLevelRadioButtons() {
    return Column(
      children: <Widget>[
        RadioListTile<String>(
          title: Text('High School'),
          value: 'High School',
          groupValue: _educationLevel,
          onChanged: (value) {
            setState(() {
              _educationLevel = value!;
            });
          },
        ),
        RadioListTile<String>(
          title: Text('Bachelor\'s Degree'),
          value: 'Bachelor\'s Degree',
          groupValue: _educationLevel,
          onChanged: (value) {
            setState(() {
              _educationLevel = value!;
            });
          },
        ),
        RadioListTile<String>(
          title: Text('Master\'s Degree'),
          value: 'Master\'s Degree',
          groupValue: _educationLevel,
          onChanged: (value) {
            setState(() {
              _educationLevel = value!;
            });
          },
        ),
        RadioListTile<String>(
          title: Text('PhD'),
          value: 'PhD',
          groupValue: _educationLevel,
          onChanged: (value) {
            setState(() {
              _educationLevel = value!;
            });
          },
        ),
      ],
    );
  }

  Widget _buildReligionRadioButtons() {
    return Column(
      children: <Widget>[
        RadioListTile<String>(
          title: Text('Christianity'),
          value: 'Christianity',
          groupValue: _religion,
          onChanged: (value) {
            setState(() {
              _religion = value!;
            });
          },
        ),
        RadioListTile<String>(
          title: Text('Islam'),
          value: 'Islam',
          groupValue: _religion,
          onChanged: (value) {
            setState(() {
              _religion = value!;
            });
          },
        ),
        RadioListTile<String>(
          title: Text('Hinduism'),
          value: 'Hinduism',
          groupValue: _religion,
          onChanged: (value) {
            setState(() {
              _religion = value!;
            });
          },
        ),
        RadioListTile<String>(
          title: Text('Buddhism'),
          value: 'Buddhism',
          groupValue: _religion,
          onChanged: (value) {
            setState(() {
              _religion = value!;
            });
          },
        ),
        RadioListTile<String>(
          title: Text('Other'),
          value: 'Other',
          groupValue: _religion,
          onChanged: (value) {
            setState(() {
              _religion = value!;
            });
          },
        ),
      ],
    );
  }

  Future<void> _showDatePicker(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }
}

