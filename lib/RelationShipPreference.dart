import 'package:dating_app/Personality.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class RelationshipPreferences extends StatefulWidget {
  const RelationshipPreferences({Key? key}) : super(key: key);

  @override
  _RelationshipPreferencesState createState() => _RelationshipPreferencesState();
}

class _RelationshipPreferencesState extends State<RelationshipPreferences> {
  String? _relationshipStatus;
  String? _lookingFor;
  String? _desiredAgeRange;
  String? _desiredLocation;

  List<String> _relationshipStatusOptions = ['Single', 'Divorced', 'Widowed', 'In a Relationship'];
  List<String> _lookingForOptions = ['Casual Dating', 'Serious Relationship', 'Friendship'];
  List<String> _ageRangeOptions = ['18-25', '26-35', '36-45', '46+'];
  List<String> _locationOptions = ['Local', 'Any'];

  Map<String, String> _emojiMap = {
    'Single': '👩🤷‍♂️',
    'Divorced': '💔',
    'Widowed': '😢',
    'In a Relationship': '💑',
    'Casual Dating': '🍻',
    'Serious Relationship': '💍',
    'Friendship': '👫',
    '18-25': '👶',
    '26-35': '👩‍💼',
    '36-45': '🧔',
    '46+': '👴',
    'Local': '🏡',
    'Any': '🌍',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Relationship Preferences'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildDropdownButtonFormField('Relationship Status', _relationshipStatusOptions, _relationshipStatus),
            SizedBox(height: 20),
            buildDropdownButtonFormField('Looking For', _lookingForOptions, _lookingFor),
            SizedBox(height: 20),
            buildDropdownButtonFormField('Desired Age Range', _ageRangeOptions, _desiredAgeRange),
            SizedBox(height: 20),
            buildDropdownButtonFormField('Desired Location', _locationOptions, _desiredLocation),
            SizedBox(height: 20),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.pinkAccent),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PersonalityTraits()),
                );
              },
              icon: Icon(Icons.save,
              color: Colors.white,),
              label: Text('Save ',
              style: kButtonStyle),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDropdownButtonFormField(String label, List<String> options, String? selectedOption) {
    return DropdownButtonFormField<String>(
      value: selectedOption,
      items: options.map((String option) {
        return DropdownMenuItem<String>(
          value: option,
          child: Row(
            children: [
              Text(
                _emojiMap[option]!,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(width: 10),
              Text(option),
            ],
          ),
        );
      }).toList(),
      decoration: InputDecoration(
        labelText: label,
      ),
      onChanged: (String? value) {
        setState(() {
          if (label == 'Relationship Status') {
            _relationshipStatus = value;
          } else if (label == 'Looking For') {
            _lookingFor = value;
          } else if (label == 'Desired Age Range') {
            _desiredAgeRange = value;
          } else if (label == 'Desired Location') {
            _desiredLocation = value;
          }
        });
      },
    );
  }
}
