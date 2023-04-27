import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationAndAlarm extends StatelessWidget {
  const NotificationAndAlarm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Notifications And Alarms'),
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: listView()));
  }

  Row headerBottomBarWidget() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Expanded(
          child: Icon(
            CupertinoIcons.time,
            color: Colors.white,
            size: 28,
          ),
        ),
        Expanded(
          child: Icon(
            CupertinoIcons.bell,
            color: Colors.white,
            size: 28,
          ),
        ),
      ],
    );
  }

  Widget headerWidget(BuildContext context) {
    return Container(
      // color: Colors.blue,
      // child: Center(
      //   child: Text(
      //     "Wekeni some information",
      //     style: Theme.of(context)
      //         .textTheme
      //         .headline3!
      //         .copyWith(color: Colors.white70),
      //   ),
      // ),
    );
  }

  ListView listView() {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 0),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      shrinkWrap: true,
      itemBuilder: (context, index) => SizedBox(
        height: 140,
        child: Card(
          color: Colors.white70,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
              Text('Time : 00:00 '),
              Text('Signal : blah blah '),
            ],),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      'Message :',
                      style: TextStyle(),
                    ),
                    Text(
                      'blah blah bla kabig',
                      softWrap: true,
                      maxLines: 2,
                      style: TextStyle(),
                    )
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
