import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'Chatbot.dart';
import 'ScheduleNext.dart';
class ScheduleNext extends StatefulWidget {
  @override
  RadioGroupWidget createState() => RadioGroupWidget();
}
 
class ScheduleList {
  String name;
  int index;
  ScheduleList({this.name, this.index});
}
 
class RadioGroupWidget extends State {
 
  // Default Radio Button Item
  String radioItem = '';
 
  // Group Value for Radio Button.
  int id = 1;
 
  List<ScheduleList> fList = [
    ScheduleList(
      index: 1,
      name: "2020",
    ),
    ScheduleList(
      index: 2,
      name: "2021",
    ),
    ScheduleList(
      index: 3,
      name: "2022",
    ),
    ScheduleList(
      index: 4,
      name: "2023",
    ),
    
  ];
 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Schedule",style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor
              ),
        
        ),
        backgroundColor: Color(0xFF0091EA),
      ),
      body: Container(
        padding: EdgeInsets.only( right: 20.0, left: 20.0 ),
        
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("lib/img/bg.jpg"), 
        fit: BoxFit.cover),),
        
         child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          
          
           Padding(
            padding : EdgeInsets.only( right: 20.0, left: 20.0),
            /*child: Text('$radioItem', style: TextStyle(fontSize: 23.0,color: Colors.white,))*/
              ),
              Image.asset('lib/img/logo.png',height: 100.0,width: 150.0,), 
              Text(
              "For which year you want the Schedule ?",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor
              ),
            ),
 
           Expanded(
            child: Container(
            height: 350.0,
            child: Column(
              children: 
                fList.map((data) => RadioListTile(
                  title: Text("${data.name}",style: TextStyle(fontSize: 23.0,color: Colors.white,)),
                  groupValue: id,
                  value: data.index,
                  onChanged: (val) {
                    setState(() {
                      radioItem = data.name ;
                      id = data.index;
                    });
                  },
                )).toList(),
               
            ),
            
          )),
          SizedBox(height: 40.0,),
            
           SubmitButton()
        ],
        
    ),
      ),
    ); 
  }
}
/*............................Button code.........................................*/
class SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
         
         
        child: Column(
          
          
          mainAxisAlignment: MainAxisAlignment.center,
          
          
          children: <Widget>[
          
            RaisedButton(
              
              textColor: Colors.white,
              color: Color(0xFF0D47A1),
              
               shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
          
              child: Text('SUBMIT'),
              
              
              onPressed: () {
                navigateToSubPage(context);
              },
            )
          ],
        ),
      );
    
  }
  Future navigateToSubPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ScheduleNext()));
  }
}

    
    

  
  

  
  



  

 





