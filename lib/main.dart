import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'row_of_offers.dart';

void main() {
  runApp(const WrapExample());
}

class WrapExample extends StatelessWidget {
  const WrapExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DevicePreview(
      tools: const [
        DeviceSection(),
      ],
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        builder: DevicePreview.appBuilder,
        locale: DevicePreview.locale(context),
        title: 'Responsive and adaptive UI in Flutter',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text('Row of Offers'),
          ),
          body: const SafeArea(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(child: RowOfOffers()),
            ),
          ),
        ),
      ),
    );
  }
}