import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:holytea_slicing_ui/widgets/panelwidget.dart';
import 'package:holytea_slicing_ui/utils/themes.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  final PanelController _panelController = PanelController();

  @override
  Widget build(BuildContext context) {
    final panelHeightOpen = MediaQuery.of(context).size.height * .9;
    final panelHeightClosed = MediaQuery.of(context).size.height * .15;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: Title(
          color: Colors.white,
          child: Center(
            child: Text(
              "Track Location",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: SlidingUpPanel(
        controller: PanelController(),
        maxHeight: panelHeightOpen,
        minHeight: panelHeightClosed,
        parallaxEnabled: true,
        parallaxOffset: .5,
        body: Container(
          // color: Colors.blue,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/image_map.png"),
                  fit: BoxFit.cover)),
          // height: MediaQuery.of(context).size.height,
        ),
        panelBuilder: (controller) => PanelWidget(
            controller: controller, panelController: _panelController),
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
    );
  }
}
