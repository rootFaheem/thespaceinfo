import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/mars_rover_image.dart';
// import '../../shared/widgets/image_viewer.dart';

class MarsGallery extends StatefulWidget {
  static const routeName = "/mars-rover-images";

  @override
  _MarsGalleryState createState() => _MarsGalleryState();
}

class _MarsGalleryState extends State<MarsGallery> {
  bool isLoading;

  @override
  void initState() {
    super.initState();
    isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    final imageData = Provider.of<MarsRoverImage>(context).allImages;
    if (imageData.length >= 1) {
      setState(() {
        isLoading = false;
      });
    }

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

    return Scaffold(
        appBar: AppBar(
          title: Text('Mars Rover Images'),
          elevation: 10.0,
          shadowColor: Colors.grey[700],
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                  child: Text('Select Date'),
                  onPressed: () {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2012, 9, 1),
                      lastDate: DateTime.now(),
                    ).then((value) {
                      Provider.of<MarsRoverImage>(context, listen: false)
                          .getMarsRoverImages(value);

                      setState(() => isLoading = true);
                    });
                  }),
            )
          ],
        ),
        body: imageData.length <= 0 && isLoading == false
            ? Container(
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
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30.0)),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                            _customText('Rover Status',
                                                imageData[i].rover['status']),
                                            _customText('Camera Used',
                                                imageData[i].camera['name']),
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
                  ));
  }
}
