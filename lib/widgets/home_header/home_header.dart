import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 110.0),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1550751827-4bd374c3f58b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80'),
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
            height: 10.0,
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
