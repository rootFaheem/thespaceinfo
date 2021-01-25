import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/rocket.dart';

class RocketScreen extends StatelessWidget {
  static const routeName = "/rockets";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Rockets"),
        ),
        body: FutureBuilder(
          future: Provider.of<Rocket>(context, listen: false).getAllRockets(),
          builder: (ctx, dataSnapshot) {
            if (dataSnapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (dataSnapshot.error != null) {
              return Center(
                child: Container(
                  color: Colors.black,
                  child: Text('An error occured ${dataSnapshot.error} '),
                ),
              );
            } else {
              return Consumer<Rocket>(
                builder: (ctx, rocketData, child) => ListView.builder(
                  itemCount: rocketData.allRockets.length,
                  itemBuilder: (ctx, i) => InkWell(
                    highlightColor: Colors.transparent,
                    onTap: () => {
                      // Navigator.of(context).pushNamed(
                      //     RocketDetailsScreen.routeName,
                      //     arguments: rocketData.allRockets[i].id),
                    },
                    child: Card(
                      shadowColor: Colors.grey[800],
                      color: Theme.of(context).backgroundColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      elevation: 8.0,
                      child: Container(
                        padding: EdgeInsets.all(16.0),
                        child: ListTile(
                          leading: Image.network(
                            rocketData.allRockets[i].images[0],
                            fit: BoxFit.fill,
                          ),
                          title: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/temp/spacex.png',
                                    width: 75.0,
                                    height: 18.0,
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    rocketData.allRockets[i].name,
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                ],
                              ),
                              SizedBox(height: 9.0),
                            ],
                          ),

                          subtitle: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('Status'),
                                  Text('Cost per Launch'),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    rocketData.allRockets[i].status
                                        ? "Active"
                                        : "Inactive",
                                  ),
                                  Text(
                                    rocketData.allRockets[i].costPerLaunch
                                        .toString(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // trailing: Text('Rockets'),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }
          },
        ));
  }
}
