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
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1562976540-1502c2145186?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80'),
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
