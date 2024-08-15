import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: const Color(0xff000000),
      appBar: AppBar(
        backgroundColor: const Color(0xff00ff00),
        title: const Text(
          'Fake-Spotify',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Edu',
            fontSize: 35,
          ),
        ),
      ),
      body: const Myaudioplayer(),
    ),
  ));
}

class Myaudioplayer extends StatefulWidget {
  const Myaudioplayer({super.key});

  @override
  _MyaudioplayerState createState() => _MyaudioplayerState();
}

class _MyaudioplayerState extends State<Myaudioplayer> {
  final AudioPlayer _audioPlayer = AudioPlayer();

  TextButton btnComponant(String url, String title) {
    return TextButton(
      onPressed: () {
        playAudio(url);
      },
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontFamily: 'Mono',
        ),
      ),
    );
  }

  void playAudio(String url) async {
    try {
      await _audioPlayer.play(AssetSource(url));
    } catch (e) {
      print("Error playing audio: $e");
    }
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
            height: 0,
          ),
          btnComponant('Ahmed Santa - 3ereft Eimtek.mp3', "3ereft Eimtek"),
          btnComponant(
              'Ahmed Santa - SHHH (feat. Slyver) (Prod. Alfy) أحمد سانتا و سلايفر - ششش [TubeRipper.com].m4a',
              "SHHH"),
          btnComponant(
              'Ahmed Santa - El Arsad (Prod. Alfy) أحمد سانتا - الارصاد [TubeRipper.com].m4a',
              "El Arsad"),
          btnComponant(
              'Ahmed Santa - Men B3ed (Prod. Alfy) أحمد سانتا - من بعيد [TubeRipper.com].m4a',
              "Men B3ed"),
        ],
      ),
    );
  }
}









































// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       backgroundColor: const Color(0xff000000),
//       appBar: AppBar(
//         backgroundColor: const Color(0xff00ff00),
//         title: const Text(
//           'Fake-Spotify',
//           style: TextStyle(
//             color: Colors.white,
//             fontFamily: 'Edu',
//             fontSize: 35,
//           ),
//         ),
//       ),
//       body: const Myaudioplayer(),
//     ),
//   ));
// }

// class Myaudioplayer extends StatelessWidget {
//   const Myaudioplayer({super.key});
//   void func(url) {
//     final player = AudioCache();
//     player.play(url);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const SizedBox(
//             width: double.infinity,
//             height: 0,
//           ),
//           TextButton(
//             onPressed: () {
//               func('audios/Ahmed Santa - 3ereft Eimtek.mp3');
//             },
//             child: const Text(
//               "Play",
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 30,
//                 fontFamily: 'Mono',
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

