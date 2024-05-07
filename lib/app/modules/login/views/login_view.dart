import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_project_application/app/routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.put(LoginController());
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/img/Bg-Login Register.jpg'),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView(
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(vertical: 80),
          children: [
            // Logo
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/img/login_logo 1.png',
                    height: 200,
                    width: 200,
                  ),
                  SizedBox(height: 5), // Spasi antara gambar dan teks
                  Text(
                    'Welcome to Azalea',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 27,
                    ),
                  ),
                ],
              ),
            ),
            // Form login
            Center(
              child: SingleChildScrollView(
                // Tambahkan SingleChildScrollView
                child: Container(
                  width: 300,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Email',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 5), // Spasi antara label dan TextField
                      Container(
                        width: 300,
                        height: 41,
                        child: TextField(
                          controller: controller.usernameController,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Email here...',
                            hintStyle: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xFFD4D4D4),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 0,
                              horizontal: 10,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color(0xFFD4D4D4)), // Warna D4D4D4
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Password',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 10), // Spasi antara label dan TextField
                      Container(
                        width: 300,
                        height: 41,
                        child: TextField(
                          controller: controller.passwordController,
                          style: TextStyle(color: Colors.black),
                          obscureText: true,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Password here...',
                            hintStyle: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xFFD4D4D4),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 0,
                              horizontal: 10,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color(0xFFD4D4D4)), // Warna D4D4D4
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
                      // Tombol Login
                      SizedBox(
                        width: 300,
                        height: 41,
                        child: ElevatedButton(
                          onPressed: () {
                            if (controller.usernameController.text.isEmpty ||
                                controller.passwordController.text.isEmpty) {
                              Get.snackbar(
                                'Error',
                                'Username or password cannot be empty',
                                snackPosition: SnackPosition.BOTTOM,
                                duration: Duration(seconds: 2),
                                margin: EdgeInsets.all(12),
                              );
                            } else {
                              loginController.login(
                                controller.usernameController.text,
                                controller.passwordController.text,
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFD567CD), // Warna tombol
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Login',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Don\'t have an account? ',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.offAllNamed(Routes.REGISTER);
                            },
                            child: Text(
                              'Sign in',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.blue,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
