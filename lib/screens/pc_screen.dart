import 'package:flutter/material.dart';
import 'package:underclocking/widgets/transparent_appbar/transparent_appbar.dart';

class PcScreen extends StatelessWidget {
  static const routeName = '/pc';

  const PcScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: TransparentAppBar(
        title: 'PC',
      ),
      body: Stack(
        children: [
          Hero(
            tag: 'pc',
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/pc.jpeg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.dstOut),
                ),
              ),
            ),
          ),
          Column(
            children: [
              ListTile(
                title: Text('config de UserA'),
              )
            ],
          )
        ],
      ),
    );
  }
}
