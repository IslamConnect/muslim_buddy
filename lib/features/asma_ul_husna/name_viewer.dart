import 'dart:async';
import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inherited_state/inherited_state.dart';
import 'package:muslim_buddy/features/asma_ul_husna/name_of_allah.dart';
import 'package:muslim_buddy/features/asma_ul_husna/name_view.dart';
import 'package:muslim_buddy/features/common/highlighted_icon_button.dart';

import 'name_service.dart';

class NameViewer extends StatefulWidget {
  const NameViewer({Key? key}) : super(key: key);

  @override
  State<NameViewer> createState() => _NameViewerState();
}

class _NameViewerState extends State<NameViewer> {
  final nameService = SL.get<NamesOfAllahService>()!;
  final pageController = PageController();
  late Future<List<NameOfAllah>> namesFuture;

  final audioPlayer = AudioPlayer();
  final asmaUlHusnaAssetPath = "audios/Asma-ul-Husna.mp3";
  Timer? _pageChangeTimer;

  bool showArabic = true;

  @override
  void initState() {
    super.initState();
    namesFuture = nameService.getAllNamesOfAllah();
  }

  void setupPageChange(int durationMs) {
    _pageChangeTimer?.cancel();
    _pageChangeTimer = Timer(Duration(milliseconds: durationMs), () async {
      await pageController.nextPage(
          duration: const Duration(milliseconds: 500), curve: Curves.ease);

      setupPageChange(durationMs);
    });
  }

  void start() async {
    await audioPlayer.play(DeviceFileSource(asmaUlHusnaAssetPath));
    setState(() {});
    await Future.delayed(const Duration(milliseconds: 12000));
    setupPageChange(1300);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.all(7),
          child: ClipOval(
            child: Container(
              color: Colors.white.withOpacity(.2),
              child: Builder(
                builder: (c) => IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(c).openDrawer();
                  },
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                  color: Colors.white,
                  splashRadius: 20,
                ),
              ),
            ),
          ),
        ),
        actions: const [
          HighlightedIconButton(
            icon: Icon(Icons.settings),
            tooltip: 'Open settings',
          ),
          SizedBox(width: 10)
        ],
      ),
      drawer: Drawer(),
      body: FutureBuilder<List<NameOfAllah>>(
        future: namesFuture,
        builder: (_, snapshot) {
          if (snapshot.hasData) {
            return Stack(
              children: [
                PageView.builder(
                  controller: pageController,
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://source.unsplash.com/collection/26423561?i=${index}'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration:
                          BoxDecoration(color: Colors.black.withOpacity(0.6)),
                      padding: const EdgeInsets.all(20),
                      child: NameView(
                        name: snapshot.data![index],
                        showArabic: showArabic,
                        onNameTap: () => setState(() {
                          showArabic = !showArabic;
                        }),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  right: 10,
                  bottom: 0,
                  top: 0,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
                Positioned(
                  bottom: 80,
                  right: 0,
                  left: 0,
                  child: HighlightedIconButton(
                    onPressed: () {
                      if (audioPlayer.state == PlayerState.stopped) {
                        start();
                      } else if (audioPlayer.state == PlayerState.playing) {
                        audioPlayer.pause();
                        _pageChangeTimer?.cancel();
                      } else if (audioPlayer.state == PlayerState.paused) {
                        audioPlayer.resume();
                        setupPageChange(1300);
                      }
                      setState(() {});
                    },
                    size: 60,
                    icon: Icon(audioPlayer.state == PlayerState.playing
                        ? Icons.pause
                        : Icons.play_arrow),
                  ),
                )
              ],
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
