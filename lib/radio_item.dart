import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'model/radioResponse.dart';

class RadioItem extends StatelessWidget {
  Radios radio;
  AudioPlayer audioPlayer;

  RadioItem(this.radio, this.audioPlayer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            radio.name ?? "",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () async {
                    await audioPlayer.play(UrlSource(radio.radioUrl ?? ''));
                  },
                  icon: Icon(
                    Icons.play_arrow,
                    size: 50,
                    color: Theme.of(context).primaryColor,
                  )),
              SizedBox(
                width: 10,
              ),
              IconButton(
                  onPressed: () async {
                    await audioPlayer.pause();
                  },
                  icon: Icon(
                    Icons.pause,
                    size: 50,
                    color: Colors.black45,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
