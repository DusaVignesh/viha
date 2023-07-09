import 'package:basicapp/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PrimaryChatWindow extends StatelessWidget {
  const PrimaryChatWindow({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height(size, 130),
            child: Stack(
              children: [
                Positioned(
                  top: 15,
                  left: 15,
                  right: 15,
                  child: SafeArea(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: AppBar(
                        toolbarHeight: height(size, 65),
                        leadingWidth: width(size, 28),
                        title: Row(
                          children: [
                            SizedBox(
                              width: width(size, 38),
                              height: height(size, 38),
                              child:
                                  SvgPicture.asset('assets/images/avatar3.svg'),
                            ),
                            SizedBox(
                              width: width(size, 10),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Andrew Parker',
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(
                                  height: height(size, 4),
                                ),
                                Text(
                                  'tap here for contact info',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          ],
                        ),
                        backgroundColor: Color(0xff0047AB),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text('hi ra'),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('hi ra'),
          )
        ],
      ),
    );
  }
}
