import 'package:dating_app/Home.dart';
import 'package:dating_app/constants.dart';
import 'package:flutter/material.dart';

class PersonalityTraits extends StatefulWidget {
  const PersonalityTraits({Key? key}) : super(key: key);

  @override
  _PersonalityTraitsState createState() => _PersonalityTraitsState();
}

class _PersonalityTraitsState extends State<PersonalityTraits> {
  String? _introvertedExtroverted;
  String? _senseOfHumor;
  String? _adventurousness;
  String? _openMindedness;
  String? _romanticPreferences;

  List<String> _options = ['Yes', 'No'];

  Map<String, IconData> _iconMap = {
    'Yes': Icons.check_circle,
    'No': Icons.cancel,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personality Traits'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildRow('Introverted or Extroverted', _options, _introvertedExtroverted),
            SizedBox(height: 20),
            buildRow('Sense of Humor', _options, _senseOfHumor),
            SizedBox(height: 20),
            buildRow('Adventurousness', _options, _adventurousness),
            SizedBox(height: 20),
            buildRow('Open-mindedness', _options, _openMindedness),
            SizedBox(height: 20),
            buildRow('Romantic Preferences', _options, _romanticPreferences),
            SizedBox(height: 20),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.pinkAccent),
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
                // Handle saving data or navigating to the next page
              },
              icon: Icon(Icons.save,
              color: Colors.white,),
              label: Text('Save Traits',
              style: kButtonStyle,),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRow(String label, List<String> options, String? selectedOption) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            label,
            style: TextStyle(fontSize: 16),
          ),
        ),
        Expanded(
          flex: 3,
          child: DropdownButtonFormField<String>(
            value: selectedOption,
            items: options.map((String option) {
              return DropdownMenuItem<String>(
                value: option,
                child: Row(
                  children: [
                    Icon(
                      _iconMap[option],
                      color: _iconMap[option] == Icons.check_circle ? Colors.green : Colors.red,
                    ),
                    SizedBox(width: 10),
                    Text(option),
                  ],
                ),
              );
            }).toList(),
            onChanged: (String? value) {
              setState(() {
                if (label == 'Introverted or Extroverted') {
                  _introvertedExtroverted = value;
                } else if (label == 'Sense of Humor') {
                  _senseOfHumor = value;
                } else if (label == 'Adventurousness') {
                  _adventurousness = value;
                } else if (label == 'Open-mindedness') {
                  _openMindedness = value;
                } else if (label == 'Romantic Preferences') {
                  _romanticPreferences = value;
                }
              });
            },
          ),
        ),
      ],
    );
  }
}

