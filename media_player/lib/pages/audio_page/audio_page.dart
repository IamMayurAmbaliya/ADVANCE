import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:media_player/controllers/player_controller/player_controller.dart';
import 'package:on_audio_query/on_audio_query.dart';

class AudioPage extends StatelessWidget {
  const AudioPage({super.key});

  @override
  Widget build(BuildContext context) {
    // SongModel songModel =
    //     ModalRoute.of(context)!.settings.arguments as SongModel;

    //lastly for move to next song we need to set argument as... list<SongModel>......
    List<SongModel> songModel =
        ModalRoute.of(context)!.settings.arguments as List<SongModel>;

    var playerController = Get.find<PlayerController>();
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Obx(
              () => Expanded(
                child: Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  height: 350,
                  width: 350,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: QueryArtworkWidget(
                    // id: songModel.id,
                    //lastly
                    id: songModel[playerController.playIndex.value].id,
                    type: ArtworkType.AUDIO,
                    artworkHeight: double.infinity,
                    artworkWidth: double.infinity,
                    nullArtworkWidget: const Icon(
                      Icons.music_note,
                      size: 100,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(12.0),
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(16),
                  ),
                ),
                child: Obx(
                  () => Column(
                    children: [
                      Text(
                        // songModel.displayNameWOExt,
                        //lastly
                        songModel[playerController.playIndex.value]
                            .displayNameWOExt,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        // songModel.artist.toString(),
                        //lastly
                        songModel[playerController.playIndex.value]
                            .artist
                            .toString(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Obx(
                        () => Row(
                          children: [
                            Text(
                              playerController.position.value,
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Expanded(
                              child: Slider(
                                thumbColor: Colors.blue,
                                activeColor: Colors.black,
                                inactiveColor: Colors.black,
                                value: playerController.liveValue.value,
                                min: const Duration(seconds: 0)
                                    .inSeconds
                                    .toDouble(),
                                max: playerController.max.value,
                                onChanged: (value) {
                                  playerController
                                      .changeDurationToSeconds(value.toInt());
                                  value = value;
                                },
                              ),
                            ),
                            Text(
                              playerController.duration.value,
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            onPressed: () {
                              playerController.playSong(
                                songModel[playerController.playIndex.value - 1]
                                    .uri,
                                (playerController.playIndex.value - 1),
                              );
                            },
                            icon: const Icon(
                              Icons.skip_previous,
                              color: Colors.black,
                              size: 40,
                            ),
                          ),
                          Obx(
                            () => CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.black,
                              child: Transform.scale(
                                scale: 2.5,
                                child: IconButton(
                                  onPressed: () {
                                    if (playerController.isPlaying.value) {
                                      playerController.audioPlayer.pause();
                                      playerController.isPlaying.value = false;
                                    } else {
                                      playerController.audioPlayer.play();
                                      playerController.isPlaying.value = true;
                                    }
                                  },
                                  icon: (playerController.isPlaying.value)
                                      ? const Icon(
                                          Icons.pause,
                                          color: Colors.white,
                                        )
                                      : const Icon(
                                          Icons.play_arrow,
                                          color: Colors.white,
                                        ),
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              playerController.playSong(
                                songModel[playerController.playIndex.value + 1]
                                    .uri,
                                (playerController.playIndex.value + 1),
                              );
                            },
                            icon: const Icon(
                              Icons.skip_next,
                              color: Colors.black,
                              size: 40,
                            ),
                          ),
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
