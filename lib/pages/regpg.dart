import 'package:bingwa_clone/pages/logpg.dart';
import 'package:bingwa_clone/utils/colors.dart';
import 'package:bingwa_clone/utils/dimensions.dart';
import 'package:bingwa_clone/widgets/bigTxt.dart';
import 'package:bingwa_clone/widgets/smallTxt.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BigText(
                  text: "Hello!",
                  size: Dimensions.font35,
                ),
                SizedBox(
                  height: Dimensions.height15,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15)),
                    child: Padding(
                      padding: EdgeInsets.only(left: Dimensions.width15),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: ' Enter your fist name',
                            labelText: 'First name'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimensions.height10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15)),
                    child: Padding(
                      padding: EdgeInsets.only(left: Dimensions.width15),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: ' Enter your last name',
                            labelText: 'Last name'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimensions.height10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15)),
                    child: Padding(
                      padding: EdgeInsets.only(left: Dimensions.width15),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: ' Enter your email',
                            labelText: 'Email'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimensions.height10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15)),
                    child: Padding(
                      padding: EdgeInsets.only(left: Dimensions.width15),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter your password',
                            labelText: 'Password'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimensions.height10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15)),
                    child: Padding(
                      padding: EdgeInsets.only(left: Dimensions.width15),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Confirm your password',
                            labelText: 'Confirm password'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimensions.height35,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Register'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.buttonBgColor,
                      fixedSize: Size(Dimensions.width150, Dimensions.height45),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius50))),
                ),
                SizedBox(
                  height: Dimensions.height10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmallText(
                      text: "Do you have an account? Log in",
                      size: 12,
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Clicked');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
                      child: SmallText(
                        text: " here",
                        size: 12,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
