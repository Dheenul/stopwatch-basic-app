import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'WatchVM.dart';
import 'package:google_fonts/google_fonts.dart';

class WatchView extends StatelessWidget {
  WatchView({super.key});
  WatchVM _watchVM = WatchVM();
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Hi Creator..",
                  style: GoogleFonts.aBeeZee(
                      fontSize: 26, fontWeight: FontWeight.bold),
                )),
            Container(
              height: 500,
              width: 350,
              decoration: BoxDecoration(
                  color: const Color(0xffCAF0F8),
                  borderRadius: BorderRadius.circular(20)),
              child: Observer(builder: (context) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Timer",
                      style: GoogleFonts.aBeeZee(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        StreamBuilder(
                          stream: _watchVM.timerMinutes.stream,
                          builder: (context, snapshot) {
                          return Text(snapshot.data.toString() == null
                              ? "00"
                              : snapshot.data.toString());
                        }),
                        StreamBuilder(
                          stream: _watchVM.timerSeconds.stream,
                          builder: (context, snapshot) {
                          return Text(snapshot.data.toString() == null
                              ? "00"
                              : snapshot.data.toString());
                        })
                      ],
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // children: [
                      //   Text(
                      //     _watchVM.minute.toString(),
                      //     style: GoogleFonts.aBeeZee(fontSize: 50, fontWeight: FontWeight.bold),
                      //   ),
                      //   Text(" : ", style: GoogleFonts.aBeeZee(fontSize: 50, fontWeight: FontWeight.bold),),
                      //   Text(_watchVM.second.toString(),
                      //     style: GoogleFonts.aBeeZee(fontSize: 50, fontWeight: FontWeight.bold),
                      //   ),
                      // ],
                    ),
                  ],
                );
              }),
            ),
            Observer(builder: (context) {
              return ElevatedButton(
                  onPressed: () {
                    _watchVM.onClickOfStat();
                  },
                  child: Text(
                    _watchVM.buttonStatus,
                    style: GoogleFonts.aBeeZee(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ));
            })
            // Observer(builder: (context) {
            //   return MaterialButton(
            //       onPressed: () {
            //         _stopWatchVM.onClickOfStat();
            //       },
            //       child: Text(_stopWatchVM.buttonStatus));
            // }),
          ],
        ),
      )),
    ));
  }
}
