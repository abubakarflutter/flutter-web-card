import 'package:flutter/material.dart';

class ImageCard extends StatefulWidget {
  const ImageCard({Key? key}) : super(key: key);

  @override
  State<ImageCard> createState() => _ImageCardState();
}

class _ImageCardState extends State<ImageCard> {
  bool isHover = false;
  // Offset mousePosition = const Offset(0, 0);
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) {
        setState(() {
          isHover = true;
        });
      },
      onExit: (e) {
        setState(() {
          isHover = false;
        });
      },
      child: AnimatedContainer(
        width: 300,
        height: 300,
        decoration: BoxDecoration(color: Colors.grey, boxShadow: [
          BoxShadow(
              blurRadius: isHover ? 20 : 0,
              spreadRadius: isHover ? 15 : 0,
              color: Colors.grey.shade300)
        ]),
        duration: const Duration(milliseconds: 500),
        child: Stack(
          children: [
            AnimatedPositioned(
              left: isHover ? -100 : -100,
              top: isHover ? -50 : 0,
              width: 500,
              height: isHover ? 450 : 300,
              child: Container(
                width: 300,
                height: 350,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn.dribbble.com/users/1615584/screenshots/14282211/media/715273fd7f22b5834da83dac3fd2a346.jpg?compress=1&resize=1200x900&vertical=top'),
                        fit: BoxFit.fitHeight)),
              ),
              duration: const Duration(milliseconds: 1000),
              curve: Curves.easeOutCubic,
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 1000),
              curve: Curves.easeOutCubic,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topRight,
                      colors: [
                    Colors.black.withOpacity(isHover ? 0.9 : 0.5),
                    Colors.transparent
                  ])),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AnimatedDefaultTextStyle(
                      child: const Text(
                        'Flutter E-Commerce Mobile Application',
                      ),
                      style: TextStyle(
                          color: Colors.white.withOpacity(isHover ? 1.0 : 0.6),
                          fontSize: isHover ? 21 : 18),
                      duration: const Duration(milliseconds: 400),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
