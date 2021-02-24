import 'package:flutter/material.dart';
import 'package:underclocking/widgets/transparent_appbar/transparent_appbar.dart';

class MotherboardScreen extends StatelessWidget {
  static const routeName = '/motherboard';

  const MotherboardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: TransparentAppBar(
        title: 'Motherboard',
      ),
      body: Stack(
        children: [
          Hero(
            tag: 'motherboard',
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/motherboard.jpeg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.dstOut),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
