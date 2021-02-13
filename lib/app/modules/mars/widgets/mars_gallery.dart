import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/mars_rover_image.dart';
// import '../../shared/widgets/image_viewer.dart';

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
    print(imageData);

    Widget _customText(String title, dynamic text) {
      return Column(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('$title:', textScaleFactor: 1.2),
            Text('$text', textScaleFactor: 1.2)
          ],
        ),
        SizedBox(height: 5.0)
      ]);
    }

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              OutlineButton.icon(
                  highlightedBorderColor: Theme.of(context).accentColor,
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
            child: imageData.length <= 0 && isLoading == false
                ? Container(
                    margin: EdgeInsets.only(top: 30.0),
                    color: Colors.black,
                    child: Center(
                        child: Text(
                      'Please select a date to see images!',
                      textScaleFactor: 1.1,
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.grey[400],
                      ),
                    )),
                  )
                : isLoading == true
                    ? Container(
                        color: Colors.black,
                        child: Center(child: CircularProgressIndicator()),
                      )
                    : Container(
                        color: Colors.black,
                        child: ListView.builder(
                          itemCount: imageData.length,
                          itemBuilder: (ctx, i) => Container(
                            color: Colors.black,
                            margin: EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () => {}
                              // Navigator.pushNamed(
                              //     context, ImageViewer.routeName,
                              //     arguments: imageData[i].imgUrl)
                              ,
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(30.0)),
                                child: Card(
                                  shadowColor: Colors.grey[700],
                                  color: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  elevation: 15,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20.0)),
                                          child: Image.network(
                                            imageData[i].imgUrl,
                                            fit: BoxFit.fitWidth,
                                          ),
                                        ),
                                        SizedBox(height: 10.0),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 15.0, right: 15.0),
                                            child: Column(
                                              children: [
                                                _customText('Rover Name',
                                                    imageData[i].rover['name']),
                                                _customText(
                                                    'Rover Status',
                                                    imageData[i]
                                                        .rover['status']),
                                                _customText(
                                                    'Camera Used',
                                                    imageData[i]
                                                        .camera['name']),
                                                _customText('Earth Date',
                                                    imageData[i].earthDate),
                                              ],
                                            ))
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
