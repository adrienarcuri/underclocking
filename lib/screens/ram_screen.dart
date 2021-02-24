import 'package:flutter/material.dart';
import 'package:underclocking/widgets/transparent_appbar/transparent_appbar.dart';

class RamScreen extends StatelessWidget {
  static const routeName = '/ram';

  const RamScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: TransparentAppBar(
        title: 'RAM',
      ),
      body: Stack(
        children: [
          Hero(
            tag: 'ram',
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/ram.jpeg'),
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
