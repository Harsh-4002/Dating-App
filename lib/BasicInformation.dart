import 'package:dating_app/PersonalInformation.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class BasicInformation extends StatefulWidget {
  const BasicInformation({Key? key}) : super(key: key);

  @override
  State<BasicInformation> createState() => _BasicInformationState();
}

class _BasicInformationState extends State<BasicInformation> {
  late String _selectedGender;
  late String _selectedEyeColor;
  late String _selectedHairColor;
  late String _selectedEthnicity;

  List<String> _genders = ['Male', 'Female', 'Other'];
  List<String> _eyeColors = ['Blue', 'Brown', 'Green', 'Hazel'];
  List<String> _hairColors = ['Black', 'Brown', 'Blonde', 'Red', 'Other'];
  List<String> _ethnicities = [
    'Asian',
    'Black or African American',
    'White',
    'Indian',
    'Other'
  ];

  @override
  void initState() {
    super.initState();
    _selectedGender = _genders[0];
    _selectedEyeColor = _eyeColors[0];
    _selectedHairColor = _hairColors[0];
    _selectedEthnicity = _ethnicities[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Information'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DropdownButtonFormField<String>(
              value: _selectedGender,
              items: _genders.map((String gender) {
                return DropdownMenuItem<String>(
                  value: gender,
                  child: Text(gender),
                );
              }).toList(),
              decoration: InputDecoration(
                labelText: 'Gender',
              ),
              onChanged: (String? value) {
                setState(() {
                  _selectedGender = value!;
                });
              },
            ),
            SizedBox(height: 12.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Location (city, state, country)',
              ),
            ),
            SizedBox(height: 12.0),
            TextField(
              decoration: InputDecoration(
                hintText: ' Enter height in cm',
                labelText: 'Height',
              ),
            ),
            SizedBox(height: 12.0),
            TextField(
              decoration: InputDecoration(
                hintText:'Enter weight in kg',
                labelText: 'Weight',
              ),
            ),
            SizedBox(height: 12.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Body Type',
              ),
            ),
            SizedBox(height: 12.0),
            DropdownButtonFormField<String>(
              value: _selectedHairColor,
              items: _hairColors.map((String hairColor) {
                return DropdownMenuItem<String>(
                  value: hairColor,
                  child: Text(hairColor),
                );
              }).toList(),
              decoration: InputDecoration(
                labelText: 'Hair Color',
              ),
              onChanged: (String? value) {
                setState(() {
                  _selectedHairColor = value!;
                });
              },
            ),
            SizedBox(height: 12.0),
            DropdownButtonFormField<String>(
              value: _selectedEyeColor,
              items: _eyeColors.map((String eyeColor) {
                return DropdownMenuItem<String>(
                  value: eyeColor,
                  child: Text(eyeColor),
                );
              }).toList(),
              decoration: InputDecoration(
                labelText: 'Eye Color',
              ),
              onChanged: (String? value) {
                setState(() {
                  _selectedEyeColor = value!;
                });
              },
            ),
            SizedBox(height: 12.0),
            DropdownButtonFormField<String>(
              value: _selectedEthnicity,
              items: _ethnicities.map((String ethnicity) {
                return DropdownMenuItem<String>(
                  value: ethnicity,
                  child: Text(ethnicity),
                );
              }).toList(),
              decoration: InputDecoration(

                labelText: 'Ethnicity',
              ),
              onChanged: (String? value) {
                setState(() {
                  _selectedEthnicity = value!;
                });
              },
            ),
            SizedBox(height: 24.0),

            ElevatedButton
              (
              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PersonalInfoPage()),
                );
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 8),
                child: Text(
                  'Save',
                  style: kButtonStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
