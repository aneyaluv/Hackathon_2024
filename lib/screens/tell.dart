import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_2024/screens/page_with_sounds.dart';
import 'package:hackathon_2024/screens/page_with_sounds_2.dart';

class TellScreen extends StatefulWidget {
  const TellScreen({super.key});

  @override
  State<TellScreen> createState() => _TellScreenState();
}

class _TellScreenState extends State<TellScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
            length: 4,
            child: Scaffold(
              appBar: AppBar(
                title: Text(
                  'Tap & Tell',
                  style: GoogleFonts.aBeeZee(
                      fontSize: 24, fontWeight: FontWeight.w500),
                ),
                bottom: TabBar(controller: _tabController, tabs: const [
                  Tab(
                    text: 'Emotions',
                  ),
                  Tab(
                    text: 'Activities',
                  ),
                  Tab(
                    text: 'Food',
                  ),
                  Tab(
                    text: 'People',
                  ),
                ]),
              ),
              body: TabBarView(controller: _tabController, children: const [
                SoundCollection(),
                SoundCollection2(),
                SoundCollection(),
                SoundCollection2()
              ]),
            )));
  }
}
