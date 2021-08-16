import 'package:flutter/material.dart';
import 'package:yoo_rider_account_page/models/order_model.dart';
import 'package:yoo_rider_account_page/screens/order_details_page.dart';

class OrderCompletedItem extends StatefulWidget {
  final String TransactionID;
  final String Schedule;
  final String Time;
  final String Pickup;
  final String DropOff;
  final String Vehicle;
  final double Rate;
  final String Status;

  OrderCompletedItem(this.TransactionID, this.Schedule, this.Time, this.Pickup,
      this.DropOff, this.Vehicle, this.Rate, this.Status);

  @override
  _State createState() => _State();
}

class _State extends State<OrderCompletedItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      //Text("Scheduled: "),
                      Text(widget.Schedule),
                      Text(widget.Time)
                    ],
                  ),
                ],
              ),
            ),
            subtitle: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.circle_outlined),
                      Text(' ' + widget.Pickup),
                      Spacer()
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.circle_outlined),
                      Text(' ' + widget.DropOff),
                      Spacer()
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.directions_car_filled),
                      Text(' ' + widget.Vehicle),
                      Spacer(),
                      Icon(Icons.money),
                      Text(
                        ' PHP ' + widget.Rate.toStringAsFixed(2),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => OrderDetailsPage(
                          widget.TransactionID,
                          widget.Schedule,
                          widget.Time,
                          widget.Pickup,
                          widget.DropOff,
                          widget.Vehicle,
                          widget.Rate,
                          widget.Status)));
            },
          )
        ],
      ),
    );
  }
}
