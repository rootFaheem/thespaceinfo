import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/mars_rover_image.dart';

class MarsGallery extends StatefulWidget {
  static const routeName = "/mars-rover-images";

  @override
  _MarsGalleryState createState() => _MarsGalleryState();
}

List<String> days = [
  'Sunday',
  'Monday',
  'Tuesday',
  'Wednesday',
  'Thursday',
  'Friday',
  'Saturday',
];

List<String> months = [
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December'
];

class _MarsGalleryState extends State<MarsGallery> {
  bool isLoading;
  DateTime selectedDate;

  @override
  void initState() {
    super.initState();
    isLoading = false;
    selectedDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    final imageData = Provider.of<MarsRoverImage>(context).allImages;
    if (imageData.length >= 1) {
      setState(() {
        isLoading = false;
      });
    }

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              OutlinedButton.icon(
                  // highlightedBorderColor: Theme.of(context).accentColor,
                  icon: Icon(Icons.calendar_today_outlined),
                  label: Text(
                    months[DateTime.parse(selectedDate.toString()).month - 1]
                            .toString() +
                        ' ' +
                        DateTime.parse(selectedDate.toString()).day.toString() +
                        ', ' +
                        DateTime.parse(selectedDate.toString()).year.toString(),
                  ),
                  onPressed: () {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2012, 9, 1),
                      lastDate: DateTime.now(),
                    ).then((value) {
                      if (value != null) {
                        Provider.of<MarsRoverImage>(context, listen: false)
                            .getMarsRoverImages(value);

                        setState(() => {
                              selectedDate = value,
                              isLoading = true,
                            });
                      }
                    });
                  }),
            ],
          ),
          Container(
            height: 300.0,
            child:
                imageData != null && imageData.length <= 0 && isLoading == false
                    ? Container(
                        margin: EdgeInsets.only(top: 30.0),
                        color: Theme.of(context).backgroundColor,
                        child: Center(
                            child: Text(
                          'Please select a date to see images...',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Theme.of(context).backgroundColor,
                          ),
                        )),
                      )
                    : isLoading == true
                        ? Container(
                            color: Theme.of(context).backgroundColor,
                            child: Center(child: CircularProgressIndicator()),
                          )
                        : Container(
                            height: 200.0,
                            color: Theme.of(context).backgroundColor,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: imageData.length,
                              itemBuilder: (ctx, i) => Container(
                                color: Theme.of(context).backgroundColor,
                                margin: EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () => {print(imageData[i].imgUrl)},
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(30.0),
                                    ),
                                    child: Card(
                                      color: Theme.of(context).backgroundColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      elevation: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Image.network(
                                              imageData[i].imgUrl,
                                              fit: BoxFit.fitHeight,
                                              height: 180.0,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
          ),
        ],
      ),
    );
  }
}
