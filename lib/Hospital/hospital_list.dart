import 'package:flutter/material.dart';
import 'package:flutterapp/Hospital/hospital_details.dart';
import 'package:flutterapp/common/apis.dart';

class HospitalList extends StatefulWidget {
  @override
  _HospitalList createState() => _HospitalList();
}

class _HospitalList extends State<HospitalList> {
  List<dynamic> hospitals = [];
  List<dynamic> originalHospitals = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      dynamic data = await Apis.getHospitals();
      this.originalHospitals = data;
      setState(() {
        this.hospitals = data;
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.pinkAccent,
      //   title: Text(
      //     'Hospitals List',
      //     style: TextStyle(
      //       fontSize: 20.0,
      //       fontWeight: FontWeight.bold,
      //       // fontFamily: Utils.ubuntuRegularFont
      //     ),
      //   ),
      //   centerTitle: true,
      // ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              _searchBar(),
              ...hospitals.map<Widget>((item) {
                return _listItem(
                  item,
                  // item["medical_org"]["pic_url"],
                  // item["medical_org"]["name"],
                  // item["medical_org"]["address"],
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }

  _searchBar() {
    return (Container(
      margin: EdgeInsets.all(20),
      child: TextField(
        decoration: InputDecoration(hintText: "search for hospital"),
        onChanged: (txt) {
          this.hospitals = [];
          this.originalHospitals.forEach((hospital) {
            if (hospital["medical_org"]["name"]
                .toString()
                .toLowerCase()
                .contains(txt)) {
              this.hospitals.add(hospital);
            }
          });
          setState(() {
            this.hospitals = this.hospitals;
          });
        },
      ),
    ));
  }

  _listItem(
    dynamic hospitalItem,
  ) {
    // String imgUrl, String hospitalTitle, String hosAddress) {
    return Card(
        child: new InkWell(
      onTap: () {
        Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (context) => HospitalDetails(),
                settings: RouteSettings(
                  arguments: hospitalItem,
                )));
      },
      child: Padding(
        padding: const EdgeInsets.only(
            top: 32.0, bottom: 32.0, left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 100,
              width: 350,
              child: Image.network(
                hospitalItem["medical_org"]["pic_url"],
                fit: BoxFit.fitWidth,
              ),
            ),
            Text(
              hospitalItem["medical_org"]["name"] ?? 'null bygib null kda ',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              hospitalItem["medical_org"]["address"] ?? 'tony',
              style: TextStyle(color: Colors.grey.shade600),
            ),
          ],
        ),
      ),
    ));
  }
}
