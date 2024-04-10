import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_2024/model/sounds.dart';
import 'package:hackathon_2024/model/sounds_lists.dart';

class SoundCollection extends StatefulWidget {
  const SoundCollection({super.key});

  @override
  State<SoundCollection> createState() => _SoundCollectionState();
}

class _SoundCollectionState extends State<SoundCollection> {
  final List<Sound> _sounds = Emotions;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      itemCount: _sounds.length,
      itemBuilder: (context, index) {
        final currentSound = _sounds[index];
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          height: MediaQuery.sizeOf(context).height * .4,
          width: MediaQuery.sizeOf(context).width * .2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16), color: Colors.blue[300]),
          child: Column(
            children: [
              Expanded(
                  child: Image.asset(
                currentSound.imageLink,
              )),
              Container(
                padding: const EdgeInsets.all(10),
                child: Text(
                  currentSound.text,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.aBeeZee(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

