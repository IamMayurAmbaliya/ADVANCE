import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:media_player/controllers/player_controller/player_controller.dart';
import 'package:media_player/pages/audio_page/audio_page.dart';
import 'package:on_audio_query/on_audio_query.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    PlayerController playerController = Get.put(PlayerController());

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "HomePage",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        leading: const Icon(
          Icons.sort_rounded,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: FutureBuilder<List<SongModel>>(
        future: playerController.onAudioQuery.querySongs(
            ignoreCase: true,
            orderType: OrderType.ASC_OR_SMALLER,
            sortType: null,
            uriType: UriType.EXTERNAL),
        builder: (BuildContext context, snapshot) {
          if (snapshot.data == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.data!.isEmpty) {
            return const Center(
              child: Text(
                "No Songs Found...",
              ),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Obx(
                      () => ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        tileColor: Colors.white10,
                        leading: QueryArtworkWidget(
                          id: snapshot.data![index].id,
                          type: ArtworkType.AUDIO,
                          nullArtworkWidget: const Icon(
                            Icons.music_note,
                            color: Colors.white,
                          ),
                        ),
                        // leading: const Icon(
                        //   Icons.music_note,
                        //   color: Colors.white,
                        // ),
                        title: Text(
                          snapshot.data![index].displayNameWOExt,
                          style: const TextStyle(
                              fontSize: 15, color: Colors.white),
                        ),
                        subtitle: Text(
                          "${snapshot.data![index].artist}",
                          style: const TextStyle(
                              fontSize: 12, color: Colors.white),
                        ),
                        trailing: (playerController.playIndex == index &&
                                playerController.isPlaying.value)
                            ? const Icon(Icons.play_arrow, color: Colors.white)
                            : null,
                        onTap: () {
                          Get.to(
                            const AudioPage(),
                            // arguments: snapshot.data![index],
                            //lastly send whole data so that we can access all of them
                            arguments: snapshot.data,
                          );
                          playerController.playSong(
                            snapshot.data![index].uri,
                            index,
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}
