import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const PlayPad());
}

class PlayPad extends StatefulWidget {
  const PlayPad({super.key});

  @override
  State<PlayPad> createState() => _PlayPadState();
}

class _PlayPadState extends State<PlayPad> {
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      title: 'Playpad',
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
        backgroundColor: const Color(0xff121212),
        leading: Icon(
          Icons.play_circle,
          size: 40,
          color: Colors.white,
        ),
        title: Text(
          'PlayPad',
          style: GoogleFonts.orbitron(fontSize: 40, color: Colors.white),
        ),
          ),
          backgroundColor: Colors.black,
          bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.home,
              color: Colors.white,
              size: 40,
            )),
            IconButton(
            onPressed: () {
              SystemNavigator.pop();
            },
            icon: Icon(
              Icons.logout,
              color: Colors.white,
              size: 40,
            )),
          ],
        ),
          ),
          body: SingleChildScrollView(
        child: Wrap(
          spacing: 3,
          children: [
            Container(
          child: Pad(
            gradients: [
              [Colors.white, Color(0xff5bb450), Color(0xff276221)],
            ],
            note: '1.wav',
          ),
            ),
            Pad(
          gradients: [
            [Colors.white, Color(0xff8EB1D9), Color(0xff213947)],
          ],
          note: '2.wav',
            ),
            Pad(
          gradients: [
            [Colors.white, Color(0xffFF5252), Color(0xffa70000)],
          ],
          note: '3.wav',
            ),
            Pad(
          gradients: [
            [Colors.white, Color(0xff988ebf), Color(0xff351c75)],
          ],
          note: '4.wav',
            ),
            Pad(
          gradients: [
            [Colors.white, Color(0xff5bb450), Color(0xff276221)],
          ],
          note: '5.wav',
            ),
            Pad(
          gradients: [
            [Colors.white, Color(0xff8EB1D9), Color(0xff213947)],
          ],
          note: '6.wav',
            ),
            Pad(
          gradients: [
            [Colors.white, Color(0xffFF5252), Color(0xffa70000)],
          ],
          note: '7.wav',
            ),
            Pad(
          gradients: [
            [Colors.white, Color(0xff988ebf), Color(0xff351c75)],
          ],
          note: '8.wav',
            ),
            Pad(
          gradients: [
            [Colors.white, Color(0xff5bb450), Color(0xff276221)],
          ],
          note: '9.wav',
            ),
            Pad(
          gradients: [
            [Colors.white, Color(0xff8EB1D9), Color(0xff213947)],
          ],
          note: '10.wav',
            ),
            Pad(
          gradients: [
            [Colors.white, Color(0xffFF5252), Color(0xffa70000)],
          ],
          note: '11.wav',
            ),
            Pad(
          gradients: [
            [Colors.white, Color(0xff988ebf), Color(0xff351c75)],
          ],
          note: '12.wav',
            ),
            Pad(
          gradients: [
            [Colors.white, Color(0xff5bb450), Color(0xff276221)],
          ],
          note: '13.wav',
            ),
            Pad(
          gradients: [
            [Colors.white, Color(0xff8EB1D9), Color(0xff213947)],
          ],
          note: '14.wav',
            ),
            Pad(
          gradients: [
            [Colors.white, Color(0xffFF5252), Color(0xffa70000)],
          ],
          note: '15.wav',
            ),
            Pad(
          gradients: [
            [Colors.white, Color(0xff988ebf), Color(0xff351c75)],
          ],
          note: '16.wav',
            ),
            Pad(
          gradients: [
            [Colors.white, Color(0xff5bb450), Color(0xff276221)],
          ],
          note: '17.wav',
            ),
            Pad(
          gradients: [
            [Colors.white, Color(0xff8EB1D9), Color(0xff213947)],
          ],
          note: '18.wav',
            ),
            Pad(
          gradients: [
            [Colors.white, Color(0xffFF5252), Color(0xffa70000)],
          ],
          note: '19.wav',
            ),
            Pad(
          gradients: [
            [Colors.white, Color(0xff988ebf), Color(0xff351c75)],
          ],
          note: '20.wav',
            ),
            Pad(
          gradients: [
            [Colors.white, Color(0xff5bb450), Color(0xff276221)],
          ],
          note: '21.wav',
            ),
            Pad(
          gradients: [
            [Colors.white, Color(0xff8EB1D9), Color(0xff213947)],
          ],
          note: '22.wav',
            ),
            Pad(
          gradients: [
            [Colors.white, Color(0xffFF5252), Color(0xffa70000)],
          ],
          note: '23.wav',
            ),
            Pad(
          gradients: [
            [Colors.white, Color(0xff988ebf), Color(0xff351c75)],
          ],
          note: '24.wav',
            ),
            Pad(
          gradients: [
            [Colors.white, Color(0xff5bb450), Color(0xff276221)],
          ],
          note: '25.wav',
            ),
            Pad(
          gradients: [
            [Colors.white, Color(0xff8EB1D9), Color(0xff213947)],
          ],
          note: '26.wav',
            ),
            Pad(
          gradients: [
            [Colors.white, Color(0xffFF5252), Color(0xffa70000)],
          ],
          note: '27.wav',
            ),
            Pad(
          gradients: [
            [Colors.white, Color(0xff988ebf), Color(0xff351c75)],
          ],
          note: '28.wav',
            ),
          ],
        ),
          ),
        ),
      ),
    );
  }
}

class Pad extends StatefulWidget {
  const Pad({Key? key, required this.gradients, required this.note})
      : super(key: key);

  @override
  State<Pad> createState() => _PadState();

  final List<List<Color>> gradients;
  final String note;
}

class _PadState extends State<Pad> {
  final player = AudioPlayer();
  List<Color> currentGradient = [];

  @override
  void initState() {
    super.initState();
    currentGradient = widget.gradients[0];
  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Adjust the width of the pads to ensure no extra space is left on the right-hand side
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {});
    });
  }
  @override
  Widget build(BuildContext context) {
     double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () async {
        final originalGradient = widget.gradients[0];
        setState(() {
          widget.gradients[0] = [Colors.white];
        });
        await Future.delayed(Duration(milliseconds: 100));
        setState(() {
          widget.gradients[0] = originalGradient;
        });
        player.play(AssetSource(widget.note));
      },
      child: Container(
        margin: EdgeInsets.only(top: 4),
        height: height/8.2,
        width: width/4.3,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: widget.gradients[0],
            radius: 1.5,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
