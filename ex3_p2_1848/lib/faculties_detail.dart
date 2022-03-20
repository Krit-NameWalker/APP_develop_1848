import 'package:flutter/material.dart';
import './faculties_data_model.dart';

class FacultyDetail extends StatelessWidget {
  final FacultyDataModel facultyDataModel;
  const FacultyDetail({Key? key, required this.facultyDataModel}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(facultyDataModel.name),),
      body: Column(
        children: [
          Container(
            width: 250,
            height: 25,
            margin: const EdgeInsets.only(top: 30, bottom: 30),
            color: Colors.grey[300],
            child: Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(facultyDataModel.website, textAlign: TextAlign.center,),
            ),
          ),
          Text(facultyDataModel.thaiName, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          Image.network(facultyDataModel.imageUrl),
        ],
      ),
    );
  }
}