import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_2024/screens/home.dart';

class CustomSounds extends StatefulWidget {
  const CustomSounds({super.key});

  @override
  State<CustomSounds> createState() => _CustomSoundsState();
}

class _CustomSoundsState extends State<CustomSounds> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    'Text to Speech',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.sizeOf(context).height * .05),
              child: Stack(
                children: [
                  CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 230, 226, 226),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(
                            color: Colors.blueAccent, width: 1.5)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)),
                    prefixIcon: const Icon(Icons.message_rounded),
                    hintText: "Input text",
                    hintStyle: GoogleFonts.aBeeZee(
                        fontSize: 18, fontWeight: FontWeight.w500)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: InputDecorator(
                decoration: InputDecoration(
                  labelText: 'Select a category',
                  labelStyle: GoogleFonts.aBeeZee(fontSize: 16),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    hint: selectedValue != null
                        ? Text(
                            selectedValue!,
                            style: GoogleFonts.aBeeZee(fontSize: 16),
                          )
                        : Text(
                            'Emotions',
                            style: GoogleFonts.aBeeZee(fontSize: 16),
                          ),
                    value: selectedValue,
                    onChanged: (String? value) {
                      setState(() {
                        selectedValue = value;
                      });
                    },
                    icon: const Icon(Icons.arrow_drop_down, color: Colors.blue),
                    items: <String>['Emotions', 'Activities', 'Food', 'People']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            value,
                            style: GoogleFonts.aBeeZee(fontSize: 16),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.red[400],
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.play_arrow_rounded,
                    size: 30,
                    color: Colors.white,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
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
                  child: Text('Save',
                      style: GoogleFonts.poppins(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
