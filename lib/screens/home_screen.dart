import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:underclocking/screens/cpu_screen.dart';
import 'package:underclocking/screens/gpu_screen.dart';
import 'package:underclocking/screens/motherboard_screen.dart';
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
                          tag: 'cpu',
                          child: FluoButton(
                            onTap: () => Navigator.of(context)
                                .pushNamed(CpuScreen.routeName),
                            child: TextItem('CPU'),
                            image:
                                'https://images.pexels.com/photos/40879/cpu-processor-macro-pen-40879.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                          ),
                        ),
                        Hero(
                          tag: 'gpu',
                          child: FluoButton(
                            onTap: () => Navigator.of(context)
                                .pushNamed(GpuScreen.routeName),
                            child: TextItem('GPU'),
                            image:
                                'https://images.pexels.com/photos/4581902/pexels-photo-4581902.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                          ),
                        ),
                        Hero(
                          tag: 'ram',
                          child: FluoButton(
                            onTap: () => Navigator.of(context)
                                .pushNamed(RamScreen.routeName),
                            child: TextItem('RAM'),
                            image:
                                'https://images.unsplash.com/photo-1562976540-1502c2145186?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80',
                          ),
                        ),
                        Hero(
                          tag: 'motherboard',
                          child: FluoButton(
                            onTap: () => Navigator.of(context)
                                .pushNamed(MotherboardScreen.routeName),
                            child: TextItem('Motherboard'),
                            image:
                                'https://images.pexels.com/photos/3520694/pexels-photo-3520694.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
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
