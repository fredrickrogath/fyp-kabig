import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:draggable_home/draggable_home.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'sub_pages/chart.dart';
import 'sub_pages/notification_and_alarm.dart';

class Data extends StatelessWidget {
  const Data({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableHome(
      leading: const Icon(Icons.arrow_back_ios),
      title: const Text("bla bla bla kabig"),
      actions: const [
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
      headerWidget: headerWidget(context),
      headerBottomBar: headerBottomBarWidget(context),
      body: [
        listView(),
      ],
      fullyStretchable: false,
      // expandedBody: const CameraPreview(),
      // backgroundColor: Colors.white,
      // appBarColor: Colors.teal,
    );
  }

  Row headerBottomBarWidget(context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Expanded(
          child: Icon(
            CupertinoIcons.time,
            color: Colors.white,
            size: 28,
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NotificationAndAlarm()),
              );
            }),
            child: const Icon(
              CupertinoIcons.bell,
              color: Colors.white,
              size: 28,
            ),
          ),
        ),
      ],
    );
  }

  Widget headerWidget(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Text(
          "Wekeni some information",
          style: Theme.of(context)
              .textTheme
              .headline3!
              .copyWith(color: Colors.white70),
        ),
      ),
    );
  }

  ListView listView() {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 0),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      shrinkWrap: true,
      itemBuilder: (context, index) => GestureDetector(
        onTap: (() {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Chart()),
          );
        }),
        child: SizedBox(
          height: 140,
          child: Card(
            color: Colors.white70,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircularPercentIndicator(
                    radius: 50.0,
                    lineWidth: 5.0,
                    percent: 0.8,
                    // header: Text("Icon header"),
                    center: const Icon(
                      CupertinoIcons.thermometer,
                      size: 50.0,
                      color: Colors.blue,
                    ),
                    backgroundColor: Colors.grey,
                    progressColor: Colors.blue,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          '32',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Temperature',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
