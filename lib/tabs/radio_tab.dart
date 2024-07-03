import 'package:audioplayers/audioplayers.dart';
import 'package:eslamy/radio_item.dart';
import 'package:eslamy/tabs/api_manager.dart';
import 'package:flutter/material.dart';

class RadioTab extends StatefulWidget {
  const RadioTab({super.key});

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  late AudioPlayer audioPlayer;

  @override
  void initState() {
    audioPlayer = AudioPlayer();
  }

  void dispose() {
    super.dispose();
    audioPlayer.dispose();
  }

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(child: Image.asset('assets/images/radio bg.png')),
        Expanded(
            flex: 1,
            child: FutureBuilder(
              future: ApiManager.getRadios(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Erooooooooor'));
                }
                var radios = snapshot.data ?? [];
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: PageScrollPhysics(),
                  itemBuilder: (context, index) {
                    return RadioItem(radios[index], audioPlayer);
                  },
                  itemCount: radios.length,
                );
              },
            ))
      ],
    );
  }
}
