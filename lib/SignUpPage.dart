// import 'package:dating_app/Home.dart';
// import 'package:flutter/material.dart';
// import 'SignInPage.dart';
// import 'constants.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
// class SignUp extends StatefulWidget {
//   const SignUp({Key? key}) : super(key: key);
//
//   @override
//   State<SignUp> createState() => _SignUpState();
// }
//
// class _SignUpState extends State<SignUp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       resizeToAvoidBottomInset: false,
//       body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Center(
//               child: Text(
//                 kAppName,
//                 style: kSparkleMatchSignUpStyle,
//               ),
//
//             ),
//             SizedBox(height: 20),
//             Center(
//               child: const Text(
//                 kCreateYourAccount,
//                 style: kCreateAnAccountStyle,
//               ),
//             ),
//             SizedBox(height: 24),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 40.0),
//               child: TextFormField(
//                 decoration: const InputDecoration(
//                   hintText: 'Enter your name',
//                   labelText: 'Name',
//                   enabledBorder: UnderlineInputBorder(
//                     borderSide: BorderSide(
//                         color: Colors.pink), // Customize the underline color
//                   ),
//                   focusedBorder: UnderlineInputBorder(
//                     borderSide: BorderSide(
//                         color: Colors
//                             .pink), // Customize the focused underline color
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 10,),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 40.0),
//               child: TextFormField(
//                 decoration: const InputDecoration(
//                   hintText: 'abc@gmail.com',
//                   labelText: 'Email',
//                   enabledBorder: UnderlineInputBorder(
//                     borderSide: BorderSide(
//                         color: Colors.pink), // Customize the underline color
//                   ),
//                   focusedBorder: UnderlineInputBorder(
//                     borderSide: BorderSide(
//                         color: Colors
//                             .pink), // Customize the focused underline color
//                   ),
//                 ),
//               ),
//             )
// ,
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 40.0),
//               child: TextFormField(
//                 decoration: const InputDecoration(
//                   labelText: 'Password',
//                   enabledBorder: UnderlineInputBorder(
//                     borderSide: BorderSide(
//                         color: Colors.pink), // Customize the underline color
//                   ),
//                   focusedBorder: UnderlineInputBorder(
//                     borderSide: BorderSide(
//                         color: Colors
//                             .pink), // Customize the focused underline color
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 10,),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 40.0),
//               child: TextFormField(
//                 decoration: const InputDecoration(
//                   labelText: 'Confirm Password',
//                   enabledBorder: UnderlineInputBorder(
//                     borderSide: BorderSide(
//                         color: Colors.pink), // Customize the underline color
//                   ),
//                   focusedBorder: UnderlineInputBorder(
//                     borderSide: BorderSide(
//                         color: Colors
//                             .pink), // Customize the focused underline color
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 30.0,
//             ),
//             Container(
//               padding: EdgeInsets.only(top: 60),
//               child: RawMaterialButton(
//                 fillColor: Colors.pink[400],
//                 elevation: 5,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => HomePage()),
//                   );
//                 },
//                 child: const Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
//                   child: Text(
//                     'SIGN UP',
//                     style: kButtonStyle,
//                   ),
//                 ),
//               ),
//             ),
//
//             const SizedBox(height: 10),
//             Center(child: const Text('Or Continue With', style: kOrContinueTextStyle)),
//             const SizedBox(
//               height: 10,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Container(
//                   decoration: const BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.pink,
//                   ),
//                   padding:
//                       const EdgeInsets.all(8.0), // Adjust the padding as needed
//                   child: const Icon(
//                     size: 20,
//                     FontAwesomeIcons.facebookF,
//                     color: Colors.white,
//                   ),
//                 ),
//                 const SizedBox(width: 20),
//                 Container(
//                   decoration: const BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.pink,
//                   ),
//                   padding:
//                       const EdgeInsets.all(8.0), // Adjust the padding as needed
//                   child: const Icon(
//                     size: 20,
//                     FontAwesomeIcons.apple,
//                     color: Colors.white,
//                   ),
//                 ),
//                 const SizedBox(width: 20),
//                 Container(
//                   decoration: const BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.pink,
//                   ),
//                   padding:
//                       const EdgeInsets.all(8.0), // Adjust the padding as needed
//                   child: const Icon(
//                     size: 20,
//                     FontAwesomeIcons.google,
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 150),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: <Widget>[
//                 Text('Already Have an account?', style: kAlreadyAccount),
//                 SizedBox(
//                   width: 5.0,
//                 ),
//                 GestureDetector(
//                   onTap: (){
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => SignIn()),
//                     );
//
//                   },
//                   child: Text(
//                     'LOGIN',
//                     style: kSignIn,
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'dart:io';

import 'package:dating_app/BasicInformation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'Home.dart';
import 'SignInPage.dart';
import 'constants.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;
  late TextEditingController _ageController;

 File? _pickedImage;
  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedImage = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      // Use the picked image
      // You can set the image to a variable or perform further actions


      setState(() {
        _pickedImage = File(pickedImage.path);
      });
    } else {
      // User canceled the picker
    }
  }

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    _ageController = TextEditingController();

  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _ageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
             SizedBox(height: 15),

              const Center(
                child: Text(
                  kAppName,
                  style: kSparkleMatchSignUpStyle,
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: const Text(
                  kCreateYourAccount,
                  style: kCreateAnAccountStyle,
                ),
              ),
              SizedBox(height: 40,),
              // Profile Picture
              GestureDetector(
                onTap: () {
                  _pickImage();
                },
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.pink, // Set the color of the border
                      width: 2, // Set the width of the border
                    ),
                    color: Colors.grey[200], // Set the color of the circle
                  ),
                  child: Center(
                    child: _pickedImage != null
                        ? Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: FileImage(_pickedImage!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                        : Icon(
                      Icons.photo,
                      size: 50, // Adjust the size of the photo icon as needed
                      color: Colors.grey, // Set the color of the photo icon
                    ),
                  ),
                ),
              ),


              SizedBox(height: 10),
              // Name
              buildTextFormField('Name', _nameController),
              SizedBox(height: 10),
              // Email
              buildTextFormField('Email', _emailController),
              SizedBox(height: 10),
              // Password
              buildTextFormField('Password', _passwordController),
              SizedBox(height: 10),
              // Confirm Password
              buildTextFormField('Confirm Password', _confirmPasswordController),
              SizedBox(height: 10),
              // Age
              buildTextFormField('Age', _ageController),
              SizedBox(height: 10),
              // Hobbies


              SizedBox(height: 30),
              // Sign Up Button
              ElevatedButton(
                style:ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BasicInformation()),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: Text(
                    'SIGN UP',
                    style: kButtonStyle,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              // Or Continue With Text
              Center(child: const Text('Or Continue With', style: kOrContinueTextStyle)),
              const SizedBox(height: 10),
              // Social Media Icons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Facebook
                  buildSocialMediaIcon(FontAwesomeIcons.facebookF),
                  SizedBox(width: 20),
                  // Apple
                  buildSocialMediaIcon(FontAwesomeIcons.apple),
                  SizedBox(width: 20),
                  // Google
                  buildSocialMediaIcon(FontAwesomeIcons.google),
                ],
              ),
              SizedBox(height:60),
              // Already Have an Account Text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text('Already Have an account?', style: kAlreadyAccount),
                  SizedBox(width: 5.0),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignIn()),
                      );
                    },
                    child: Text(
                      'LOGIN',
                      style: kSignIn,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextFormField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.pink),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.pink),
          ),
        ),
      ),
    );
  }

  Widget buildSocialMediaIcon(IconData iconData) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.pink,
      ),
      padding: const EdgeInsets.all(8.0),
      child: Icon(
        iconData,
        size: 20,
        color: Colors.white,
      ),
    );
  }
}
