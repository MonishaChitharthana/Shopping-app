import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yours_shopping_app/Navigator%20bar%20pages/home_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _isVisible = true;
  bool _isFocused = false;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Logo
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 1.0,
                    color: Colors.black,
                  ),
                  bottom: BorderSide(
                    width: 1.0,
                    color: Colors.black,
                  ),
                  right: BorderSide(
                    width: 1.0,
                    color: Colors.black,
                  ),
                  left: BorderSide(
                    width: 1.0,
                    color: Colors.black,
                  ),
                ),
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Image.asset(
                "assets/Images/logo/Y1.png",
                width: 100,
                height: 100,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //Welcome Text
            Text(
              "Welcome !",
              style: GoogleFonts.pacifico(fontSize: 20),
            ),

            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Enter your Email",
                labelStyle: TextStyle(color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: _isFocused ? Colors.grey : Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //TextField for name
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: _isVisible,
              decoration: InputDecoration(
                labelText: "Enter your Password",
                labelStyle: TextStyle(color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: _isFocused ? Colors.grey : Colors.grey,
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _isVisible = !_isVisible;
                    });
                  },
                  color: Colors.grey,
                  icon: _isVisible
                      ? Icon(Icons.visibility_off_outlined)
                      : Icon(Icons.visibility_outlined),
                ),
                focusColor: Colors.grey,
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter Password";
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
              ),
              child: TextButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    }
                  },
                  child: Text(
                    "SUBMIT",
                    style: GoogleFonts.sourceSans3(
                        fontSize: 18, color: Colors.black),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
