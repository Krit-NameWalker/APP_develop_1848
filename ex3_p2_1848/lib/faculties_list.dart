import 'package:flutter/material.dart';
import './faculties_data_model.dart';
import './faculties_detail.dart';

class FacultyList extends StatefulWidget {
  const FacultyList({Key? key}) : super(key: key);

  @override
  _FacultyState createState() => _FacultyState();
}

class _FacultyState extends State<FacultyList> {
  static List<String> facultyName =
  ['Engineering', 'Medicine', 'Architecture'];

  static List<String> facultyWesite =
  ['https://www.en.kku.ac.th/web/',
    'https://md.kku.ac.th/',
    'https://arch.kku.ac.th/web/'];

  static List<String> facultyThaiName =
  ['วิศวกรรมศาสตร์', 'แพทย์ศาสตร์', 'สถาปัตยกรรมศาสตร์'];


  static List url =
  ['https://www.en.kku.ac.th/web/wp-content/uploads/2018/06/DSC_0476%E0%B9%81%E0%B8%81%E0%B9%893000.jpg',
    'https://fvm.kku.ac.th/img/slides/4f890-untitled-1.jpg',
    'https://arch.kku.ac.th/web/wp-content/uploads/2019/11/arch.jpg'];


  final List<FacultyDataModel> facultyData = List.generate(
      facultyName.length,
          (index)
      => FacultyDataModel(facultyName[index], facultyWesite[index], facultyThaiName[index], '${url[index]}',));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('KKU Faculties'),),
      body: ListView.builder(
          itemCount: facultyData.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                  title: Text(facultyData[index].name),
                  leading: const Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                        FacultyDetail(facultyDataModel: facultyData[index],)));
                  }
              ),
            );
          }
      ),
    );
  }
}