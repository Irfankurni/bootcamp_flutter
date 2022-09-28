import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Login",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: const Color(0xffF1F0F2),
                )),
            const SizedBox(
              height: 12,
            ),
            Text(
              "Sign In to Continue",
              style: GoogleFonts.poppins(
                color: const Color(0xff999999),
              ),
            ),
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: const EdgeInsets.only(top: 120),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: GoogleFonts.poppins(
                color: const Color(0xffF1F0F2),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: const Color(
                  0xff2B2937,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: TextFormField(
                  style: const TextStyle(
                    color: Color(0xffF1F0F2),
                  ),
                  decoration: InputDecoration.collapsed(
                    hintText: 'Input Your Email',
                    hintStyle: GoogleFonts.poppins(
                      color: const Color(0xff504F5E),
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: const EdgeInsets.only(top: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: GoogleFonts.poppins(
                color: const Color(0xffF1F0F2),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: const Color(
                  0xff2B2937,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: TextFormField(
                  obscureText: true,
                  style: GoogleFonts.poppins(
                    color: const Color(0xffF1F0F2),
                    fontSize: 14,
                  ),
                  decoration: const InputDecoration.collapsed(
                    hintText: 'Input Your Password',
                    hintStyle: TextStyle(
                      color: Color(0xff504F5E),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget loginButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: const EdgeInsets.only(
          top: 30,
        ),
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xff6C5ECF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            'Login',
            style: GoogleFonts.poppins(
              color: const Color(0xffF1F0F2),
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xff1F1D2B),
      body: SafeArea(
          child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            emailInput(),
            passwordInput(),
            loginButton(),
          ],
        ),
      )),
    );
  }
}
