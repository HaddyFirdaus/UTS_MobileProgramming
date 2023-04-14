import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool hide = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 330),
              width: double.infinity,
              height: 450,
              decoration: const BoxDecoration(color: Colors.white),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 30, left: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 24.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                top: 120,
                left: 145,
                child: Column(
                  children: const [
                    Text(
                      "Your Future",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 18),
                    ),
                  ],
                )),
            Positioned(
                top: 160,
                left: 130,
                child: Column(
                  children: const [
                    Text(
                      "Furniture",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    ),
                  ],
                )),
            Container(
              margin: const EdgeInsets.only(top: 230, left: 150, right: 50),
              width: 85,
              height: 4,
              decoration: BoxDecoration(color: Colors.pink[200]),
            ),
            Container(
              margin: const EdgeInsets.only(top: 290, left: 30, right: 30),
              width: 400,
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black38,
                        spreadRadius: 0.1,
                        blurRadius: 5),
                  ]),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      "Login First",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 5,
                      ),
                      child: TextFormField(
                        cursorColor: Colors.red,
                        decoration: InputDecoration(
                            border: const UnderlineInputBorder(),
                            enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.red)),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                            prefixIcon: const Icon(Icons.person),
                            prefixIconColor: Colors.grey[600],
                            labelText: "Username",
                            labelStyle: const TextStyle(color: Colors.red)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 2,
                      ),
                      child: TextFormField(
                        cursorColor: Colors.red,
                        obscureText: hide,
                        decoration: InputDecoration(
                          border: const UnderlineInputBorder(),
                          enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          prefixIcon: const Icon(Icons.lock),
                          prefixIconColor: Colors.grey[600],
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  hide = !hide;
                                });
                              },
                              icon: hide
                                  ? const Icon(Icons.visibility_off)
                                  : const Icon(Icons.visibility)),
                          labelText: ('Password'),
                          labelStyle: const TextStyle(color: Colors.red),
                        ),
                      ),
                    ),
                  ]),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 70),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.deepPurple,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 150, vertical: 18)),
                          onPressed: () {
                            Navigator.pushNamed(context, '/Home_page');
                          },
                          child: const Text("Login"))
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
