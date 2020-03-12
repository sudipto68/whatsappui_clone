import 'package:flutter/material.dart';
import 'package:whatsapp_clone/chat_model.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

 



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      
      itemCount: dummyData.length,
      itemBuilder: (contex,index){
        return Column(
          children: <Widget>[
            Divider(height:10.0),
            ListTile(
          leading: CircleAvatar(
            foregroundColor: Theme.of(context).primaryColor,
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(dummyData[index].url),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(dummyData[index].name,style: TextStyle(fontWeight: FontWeight.bold),),
              Text(dummyData[index].time,style: TextStyle(fontSize: 14.0,color: Colors.grey),),
            ],
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(dummyData[index].message,style: TextStyle(fontSize: 15.0,color: Colors.grey),),
              Row(
                children: <Widget>[
              Icon(Icons.check,size: 11.0,color: Colors.blue,),
              Icon(Icons.check,size: 11.0,color: Colors.blue,),
                ],
              ),
            ],
          ),
        ),
          ],
        );
        
      },
      );
      
  }
}