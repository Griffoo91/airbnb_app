import 'dart:io';

import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController _emailTextEditingController = TextEditingController();
  TextEditingController _passwordTextEditingController =
      TextEditingController();
  TextEditingController _firstNameTextEditingController =
      TextEditingController();
  TextEditingController _lastNameTextEditingController =
      TextEditingController();
  TextEditingController _cityTextEditingController = TextEditingController();
  TextEditingController _countryEditingController = TextEditingController();
  TextEditingController _bioEditingController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  File? imageFileOfUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.pinkAccent,
              Colors.amber,
            ],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          )),
        ),
        title: const Text(
          "Create New Account",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.pinkAccent,
            Colors.amber,
          ],
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        )),
        child: ListView(
          children: [
            //Image child
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Image.asset(
                "images/signup.png",
                width: 240,
              ),
            ),
            //Text for small description child
            const Text(
              "Tell us about you",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
              textAlign: TextAlign.center,
            ),
            //Form child
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    //Email TextField
                    Padding(
                      padding: const EdgeInsets.only(top: 21.0),
                      child: TextFormField(
                          decoration: const InputDecoration(labelText: "Email"),
                          style: const TextStyle(fontSize: 25.0),
                          controller: _emailTextEditingController,
                          validator: (text) {
                            if (text!.isEmpty) {
                              return "Please Enter Valid Email address";
                            }
                            return null;
                          }),
                    ),
                    //Password TextField
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: TextFormField(
                        decoration:
                            const InputDecoration(labelText: "Password"),
                        style: const TextStyle(fontSize: 25.0),
                        controller: _passwordTextEditingController,
                        validator: (valuePassword) {
                          if (valuePassword!.length < 5) {
                            return "Password character must be six characters or more";
                          }
                          return null;
                        },
                      ),
                    ),
                    //FirstName TextField
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: TextFormField(
                        decoration:
                            const InputDecoration(labelText: "First Name"),
                        style: const TextStyle(fontSize: 25.0),
                        controller: _firstNameTextEditingController,
                        validator: (text) {
                          if (text!.isEmpty) {
                            return "Please Enter Your First Name";
                          }
                          return null;
                        },
                        textCapitalization: TextCapitalization.words,
                      ),
                    ),
                    //LastName TextField
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: TextFormField(
                        decoration:
                            const InputDecoration(labelText: "Last Name"),
                        style: const TextStyle(fontSize: 25.0),
                        controller: _lastNameTextEditingController,
                        validator: (text) {
                          if (text!.isEmpty) {
                            return "Please Enter Your Last Name";
                          }
                          return null;
                        },
                        textCapitalization: TextCapitalization.words,
                      ),
                    ),
                    //City TextField
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: TextFormField(
                        decoration: const InputDecoration(labelText: "City"),
                        style: const TextStyle(fontSize: 25.0),
                        controller: _cityTextEditingController,
                        validator: (text) {
                          if (text!.isEmpty) {
                            return "Please Enter Your Current City";
                          }
                          return null;
                        },
                        textCapitalization: TextCapitalization.words,
                      ),
                    ),
                    //Country TextField
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: TextFormField(
                        decoration: const InputDecoration(labelText: "Country"),
                        style: const TextStyle(fontSize: 25.0),
                        controller: _countryEditingController,
                        validator: (text) {
                          if (text!.isEmpty) {
                            return "Please Enter Your Country of Residence";
                          }
                          return null;
                        },
                        textCapitalization: TextCapitalization.words,
                      ),
                    ),
                    //Bio TextField

                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: TextFormField(
                        decoration: const InputDecoration(labelText: "Bio"),
                        style: const TextStyle(fontSize: 25.0),
                        controller: _bioEditingController,
                        validator: (text) {
                          if (text!.isEmpty) {
                            return "Please Enter Your Bio";
                          }
                          return null;
                        },
                        textCapitalization: TextCapitalization.words,
                      ),
                    )
                  ],
                ),
              ),
            ),
            //ImageFile child
            Padding(
              padding: const EdgeInsets.only(top: 38.0),
              child: MaterialButton(
                onPressed: () {},
                child: imageFileOfUser == null
                    ? const Icon(Icons.add_a_photo)
                    : CircleAvatar(
                        backgroundColor: Colors.pink,
                        radius: MediaQuery.of(context).size.width / 5.0,
                        child: CircleAvatar(
                          backgroundImage: FileImage(imageFileOfUser!),
                          radius: MediaQuery.of(context).size.width / 5.0,
                        ),
                      ),
              ),
            ),
            //SignUp Button
            Padding(
              padding: const EdgeInsets.only(top: 44.0, right: 60, left: 60),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                ),
                child: const Text(
                  "SIGN UP",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                    color: Colors.pink,
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
