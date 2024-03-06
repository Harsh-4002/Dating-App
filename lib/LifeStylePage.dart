import 'package:dating_app/RelationShipPreference.dart';
import 'package:dating_app/constants.dart';
import 'package:flutter/material.dart';

class LifestylePage extends StatefulWidget {
  @override
  _LifestylePageState createState() => _LifestylePageState();
}

class _LifestylePageState extends State<LifestylePage> {
  String _smokingHabits = 'Non-smoker';
  String _drinkingHabits = 'Non-drinker';
  String _exerciseFrequency = 'Rarely';
  String _dietPreferences = 'Vegetarian';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lifestyle'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildDropDown(
              'Smoking habits 🚭',
              ['Non-smoker', 'Occasional smoker', 'Regular smoker'],
              _smokingHabits,
                  (value) {
                setState(() {
                  _smokingHabits = value!;
                });
              },
            ),
            SizedBox(height: 24.0),
            _buildDropDown(
              'Drinking habits 🍸',
              ['Non-drinker', 'Social drinker', 'Regular drinker'],
              _drinkingHabits,
                  (value) {
                setState(() {
                  _drinkingHabits = value!;
                });
              },
            ),
            SizedBox(height: 24.0),
            _buildDropDown(
              'Exercise frequency 🏃‍♂️',
              ['Rarely', 'Occasionally', 'Regularly'],
              _exerciseFrequency,
                  (value) {
                setState(() {
                  _exerciseFrequency = value!;
                });
              },
            ),
            SizedBox(height: 24.0),
            _buildDropDown(
              'Diet preferences 🥗',
              ['Vegetarian', 'Vegan', 'Non- Vegetarian'],
              _dietPreferences,
                  (value) {
                setState(() {
                  _dietPreferences = value!;
                });
              },
            ),
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
                  MaterialPageRoute(builder: (context) => RelationshipPreferences()),
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

  Widget _buildDropDown(String label, List<String> options, String value, Function(String?) onChanged) {
    return DropdownButtonFormField<String>(
      value: value,
      onChanged: onChanged,
      items: options.map((String option) {
        return DropdownMenuItem<String>(
          value: option,
          child: Text(option),
        );
      }).toList(),
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(Icons.arrow_drop_down),
      ),
    );
  }
}
