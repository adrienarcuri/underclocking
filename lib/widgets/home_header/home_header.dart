import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 100.0, bottom: 10.0),
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/appbar_header.jpeg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.4), BlendMode.dstOut))),
      child: Column(
        children: [
          Text(
            'Share overclocking config',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.w400,
                backgroundColor: Colors.black.withOpacity(0.8)),
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'CPU, GPU, Motherboard, RAM',
                textAlign: TextAlign.center,
                style: TextStyle(
                  backgroundColor: Colors.black.withOpacity(0.8),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
