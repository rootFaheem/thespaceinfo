import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/rocket.dart';

class RocketDetailScreen extends StatelessWidget {
  static const routeName = "/rocket-detail";

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final String vehicleId =
        ModalRoute.of(context).settings.arguments as String;

    final rocketDetails = Provider.of<Rocket>(context, listen: false)
        .getSingleRocketDetails(vehicleId);

    final List<Widget> imageSliders = rocketDetails.images
        .map((item) => Container(
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.network(item, fit: BoxFit.cover, width: 1000.0),
                      ],
                    )),
              ),
            ))
        .toList();

    print(rocketDetails);
    return Scaffold(
      appBar: AppBar(
        title: Text(rocketDetails.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CarouselSlider(
              items: imageSliders,
              options: CarouselOptions(enlargeCenterPage: true, height: 200),
              carouselController: _controller,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ...Iterable<int>.generate(rocketDetails.images.length).map(
                  (int pageIndex) => Flexible(
                    child: InkWell(
                      onTap: () => _controller.animateToPage(pageIndex),
                      child: Image.network(
                        rocketDetails.images[pageIndex],
                        fit: BoxFit.cover,
                        width: 92.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[Text(rocketDetails.name)]),
          ],
        ),
      ),
    );
  }
}
