// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:video_player/video_player.dart';

import '../utils/responsive.dart';

class BackgroundImage extends StatelessWidget {
  final double dynamicSize;

  const BackgroundImage({super.key, required this.dynamicSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          // color: Colors.amber,

          // image: DecorationImage(
          //   image: AssetImage(
          //       'assets/background.jpg'), // Replace with your image path
          //   fit: BoxFit.cover,
          // ),
          ),
      child: Image.asset(
        backImg,
        fit: BoxFit.cover,
      ),
    );
  }
}

class BackgroundVideo extends StatefulWidget {
  final double dynamicSize;

  const BackgroundVideo({Key? key, required this.dynamicSize})
      : super(key: key);

  @override
  _BackgroundVideoState createState() => _BackgroundVideoState();
}

class _BackgroundVideoState extends State<BackgroundVideo> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    // Initialize the video controller
    _controller = VideoPlayerController.asset(backgroundVideoPath)
      ..initialize().then((_) {
        // Ensure the first frame is shown
        setState(() {});
        // Start playing the video on loop
        _controller.setLooping(true);
        _controller.play();
      });
  }

  @override
  void dispose() {
    // Dispose of the video controller when the widget is disposed
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: Responsive.isDesktop(context)
          ? widget.dynamicSize * 1.7 //web view
          : widget.dynamicSize * 0.565, // height for mobile view
      child: _controller.value.isInitialized
          ? FittedBox(
              fit: BoxFit.contain,
              child: SizedBox(
                width: _controller.value.size.width,
                height: _controller.value.size.height,
                child: VideoPlayer(_controller),
              ),
            )
          // : BackgroundImage(dynamicSize: widget.dynamicSize),
          : Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: widget.dynamicSize * 0.2,
                width: widget.dynamicSize * 0.2,
                child: const CircularProgressIndicator(
                  color: Colors.white,
                  backgroundColor: Colors.white60,
                ),
              )), // Show a loading indicator until the video is initialized
    );
  }
}
