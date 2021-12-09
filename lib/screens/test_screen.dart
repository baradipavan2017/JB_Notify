import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 6.0),
          child: ListView(
            children: [
              ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 15.0),
                title: Text(
                  'Placement Officer',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.brown),
                ),
                subtitle: Text(
                    'Samsung Noids:Schedule for PPT final submittion',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                trailing: Text('Sept 05,18'),
              ),
              Divider(indent: 10.0,endIndent: 10.0,thickness: 1.0,),
              ListTile(
                //contentPadding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 15.0),
                title: Text(
                  'Exam Branch',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.red),
                ),
                subtitle: Text(
                    'Exams for 2nd Year 2nd Semester are going to begin from 4-4-21',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                trailing: Text('Sept 05,18'),
              ),
              Divider(indent: 10.0,endIndent: 10.0,thickness: 1.0,),
              ListTile(
                //contentPadding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 15.0),
                title: Text(
                  'Admin',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.green),
                ),
                subtitle: Text(
                    'All the students are requested to pay the college fee by 2-12-2021.',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                trailing: Text('Sept 05,18'),
              ),
              Divider(indent: 10.0,endIndent: 10.0,thickness: 1.0,),
              ListTile(
                //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
               //tileColor: Colors.brown[200],
                //contentPadding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 15.0),
                title: Text(
                  'Central Library',
                  style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w600,
                    color: Colors.orange
                      ),
                ),
                subtitle: Text(
                    'Books for students are to be given from 2/12/21.Please find the link for the books given list wise',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                trailing: Text('Sept 05,18'),
              ),
              Divider(indent: 10.0,endIndent: 10.0,thickness: 1.0,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Central Library',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange),
                    ),
                    Text('09:15 AM Sept 05,18'),
                    Text(
                        'Books for students are to be given from 2/12/21.Please find the link for the books given list wise',
                        style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                  ],
                ),
              ),
              Divider(indent: 10.0,endIndent: 10.0,thickness: 1.0,),


              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Central Library',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black45),
                    ),
                    Text('09:15 AM Sept 05,18',style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45),),
                    Text(
                        'Books for students are to be given from 2/12/21. Please find the link for the books given list wise',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.black)),
                  ],
                ),
              ),
              Divider(indent: 10.0,endIndent: 10.0,thickness: 1.0,),

            ],
          ),
        ),
      ),
    );
  }
}
