import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_2024/screens/home.dart';

class UserIntro extends StatelessWidget {
  const UserIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.sizeOf(context).height * .10),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor:
                            const Color.fromARGB(255, 230, 226, 226),
                        radius: MediaQuery.sizeOf(context).height * .13,
                      ),
                      Positioned(
                          right: 0,
                          bottom: 0,
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.amberAccent,
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.camera_alt,
                                  color: Colors.white,
                                  size: 30,
                                )),
                          ))
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(
                            color: Color(0xFF5B7c99), width: 1.5)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)),
                    prefixIcon: const Icon(Icons.mail),
                    hintText: "Email",
                    hintStyle: GoogleFonts.aBeeZee(
                        fontSize: 18, fontWeight: FontWeight.w500)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(
                            color: Color(0xFF5B7c99), width: 1.5)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)),
                    prefixIcon: const Icon(Icons.lock),
                    hintText: "Password",
                    hintStyle: GoogleFonts.aBeeZee(
                        fontSize: 18, fontWeight: FontWeight.w500)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(
                            color: Color(0xFF5B7c99), width: 1.5)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)),
                    prefixIcon: const Icon(Icons.person),
                    hintText: "What's your name?",
                    hintStyle: GoogleFonts.aBeeZee(
                        fontSize: 18, fontWeight: FontWeight.w500)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(
                            color: Color(0xFF5B7c99), width: 1.5)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)),
                    prefixIcon: const Icon(Icons.numbers_sharp),
                    hintText: "What's your age?",
                    hintStyle: GoogleFonts.aBeeZee(
                        fontSize: 18, fontWeight: FontWeight.w500)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.all(Radius.circular(16))),
                  child: Text('Get Started',
                      style: GoogleFonts.poppins(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
