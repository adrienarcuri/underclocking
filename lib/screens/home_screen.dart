import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:underclocking/screens/cpu_screen.dart';
import 'package:underclocking/screens/gpu_screen.dart';
import 'package:underclocking/screens/motherboard_screen.dart';
import 'package:underclocking/screens/pc_screen.dart';
import 'package:underclocking/screens/ram_screen.dart';
import 'package:underclocking/widgets/fluo_button/fluo_button.dart';
import 'package:underclocking/widgets/home_header/home_header.dart';
import 'package:underclocking/widgets/transparent_appbar/transparent_appbar.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.15),
      extendBodyBehindAppBar: true,
      appBar: TransparentAppBar(title: 'UnderClocking'),
      body: Column(
        children: [
          HomeHeader(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'All categories',
                          textAlign: TextAlign.start,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Text(
                          'Choose a category for overclocking',
                          textAlign: TextAlign.start,
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      childAspectRatio: 1.25,
                      padding: EdgeInsets.all(12.0),
                      mainAxisSpacing: 14.0,
                      crossAxisSpacing: 14.0,
                      primary: true,
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      children: [
                        Hero(
                          tag: 'pc',
                          child: FluoButton(
                            onTap: () => Navigator.of(context)
                                .pushNamed(PcScreen.routeName),
                            child: TextItem('PC'),
                            image: 'assets/images/pc.jpeg',
                          ),
                        ),
                        Hero(
                          tag: 'cpu',
                          child: FluoButton(
                            onTap: () => Navigator.of(context)
                                .pushNamed(CpuScreen.routeName),
                            child: TextItem('CPU'),
                            image: 'assets/images/cpu.jpeg',
                          ),
                        ),
                        Hero(
                          tag: 'gpu',
                          child: FluoButton(
                            onTap: () => Navigator.of(context)
                                .pushNamed(GpuScreen.routeName),
                            child: TextItem('GPU'),
                            image: 'assets/images/gpu.jpeg',
                          ),
                        ),
                        Hero(
                          tag: 'ram',
                          child: FluoButton(
                            onTap: () => Navigator.of(context)
                                .pushNamed(RamScreen.routeName),
                            child: TextItem('RAM'),
                            image: 'assets/images/ram.jpeg',
                          ),
                        ),
                        Hero(
                          tag: 'motherboard',
                          child: FluoButton(
                            onTap: () => Navigator.of(context)
                                .pushNamed(MotherboardScreen.routeName),
                            child: TextItem('Motherboard'),
                            image: 'assets/images/motherboard.jpeg',
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
