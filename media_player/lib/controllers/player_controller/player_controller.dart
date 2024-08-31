import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:logger/logger.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';

class PlayerController extends GetxController {
  OnAudioQuery onAudioQuery = OnAudioQuery();

  @override
  void onInit() {
    super.onInit();

    checkPermission();
  }

  checkPermission() async {
    PermissionStatus permissionStatus = await Permission.storage.request();
    if (permissionStatus.isGranted) {
    } else {
      checkPermission();
    }
  }

  //................................................................//
  //.........................AUDIO PLAYER...........................//
  //................................................................//

  AudioPlayer audioPlayer = AudioPlayer();

  // playSong(String? uri) {
  //   try {
  //     audioPlayer.setAudioSource(
  //       AudioSource.uri(
  //         Uri.parse(uri!),
  //       ),
  //     );
  //     audioPlayer.play();
  //   } catch (e) {
  //     Logger().e("Error:$e".toString());
  //   }
  // }

  // late RxInt playIndex;
  RxInt playIndex = 0.obs;
  RxBool isPlaying = false.obs;

  playSong(String? uri, int index) {
    playIndex.value = index;
    try {
      audioPlayer.setAudioSource(
        AudioSource.uri(
          Uri.parse(uri!),
        ),
      );
      audioPlayer.play();
      isPlaying.value = true;

      //at last call updatePosition to upadte the songs play...pause time
      updatePosition();
    } catch (e) {
      Logger().e("Error:$e".toString());
    }
  }

  //..................................................................
  //........................for Update Real time......................
  //..................................................................

  RxString duration = "".obs;
  RxString position = "".obs;

  updatePosition() {
    audioPlayer.durationStream.listen(
      (d) {
        duration.value = d.toString().split(".")[0];
        max.value = d!.inSeconds.toDouble();
      },
    );
    audioPlayer.positionStream.listen(
      (p) {
        position.value = p.toString().split(".")[0];
        liveValue.value = p.inSeconds.toDouble();
      },
    );
  }

  changeDurationToSeconds(seconds) {
    Duration duration = Duration(seconds: seconds);
    audioPlayer.seek(duration);
  }

//..................................................................
//........................Live Update(MOVEMENT) of Slider......................
//..................................................................

  RxDouble max = 0.0.obs;
  RxDouble liveValue = 0.0.obs;
  //Add this variable into UpdatePostion..
}
