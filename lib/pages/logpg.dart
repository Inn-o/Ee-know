import 'package:bingwa_clone/pages/regpg.dart';
import 'package:bingwa_clone/utils/colors.dart';
import 'package:bingwa_clone/utils/dimensions.dart';
import 'package:bingwa_clone/widgets/bigTxt.dart';
import 'package:bingwa_clone/widgets/smallTxt.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text controllers
  final _emailcontroller = TextEditingController();
  final _pswcontroller = TextEditingController();
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
                  text: "Welcome back!",
                  size: 38,
                ),
                SizedBox(
                  height: Dimensions.height35,
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
                        controller: _emailcontroller,
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
                        controller: _pswcontroller,
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
                  height: Dimensions.height20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Sign In'),
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
                      text: "Forgot password? ",
                      size: 12,
                    ),
                  ],
                ),
                SizedBox(
                  height: Dimensions.height10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmallText(
                      text: "Don't have an account? Register",
                      size: 12,
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Clicked');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterPage()),
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
