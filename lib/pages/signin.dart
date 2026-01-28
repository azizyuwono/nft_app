import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_nft/pages/discover.dart';
import '../theme.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F9FC),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 70,
            left: 28,
            right: 28,
          ),
          child: Column(
            children: [
              Center(
                child: Text(
                  'Start Collecting\nAmazing Artworks',
                  style: titleStyle,
                ),
              ),
              const SizedBox(
                height: 43,
              ),
              Container(
                width: 320,
                height: 421,
                padding: const EdgeInsets.only(
                  top: 30,
                  left: 16,
                  right: 16,
                ),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Full Name',
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: blackColor,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    TextFormField(
                      style: GoogleFonts.inter(
                        color: blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      decoration: InputDecoration(
                        fillColor: const Color(0xffF7F9FC),
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(13),
                        ),
                        hintText: 'Name',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Email Address',
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: blackColor,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    TextFormField(
                      style: GoogleFonts.inter(
                        color: blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      decoration: InputDecoration(
                        fillColor: const Color(0xffF7F9FC),
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(13),
                        ),
                        hintText: 'Email',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Password',
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: blackColor,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    TextFormField(
                      style: GoogleFonts.inter(
                        color: blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: const Color(0xffF7F9FC),
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(13),
                        ),
                        hintText: 'Password',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 288,
                      height: 50,
                      child: RaisedButton(
                        color: blueColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Discover(),
                            ),
                          );
                        },
                        child: Text(
                          'Getting Started',
                          style: titleStyle.copyWith(
                            color: whiteColor,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 157,
              ),
              Text(
                'Sign In To My Acount',
                style: subStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
