import 'package:flutter/material.dart';

class whatsapp extends StatefulWidget {
  const whatsapp({super.key});

  @override
  State<whatsapp> createState() => _whatsappState();
  }
class _whatsappState extends State<whatsapp> {

  @override
  Widget build(BuildContext context) { 
    var list1=["Ayesha", "Yusra","Nida", "Umna", "Urma", "Noor", "Marhama","Fatma","Laiba","Ramsha", "Hamza"];
     var list2=["hn shi hai","umna kahan hai", "ok","hn hn ok", "tum kahan ho", 
     "kahan ho","done","okkkk", "hn meine krdiya", "ary yrrr", "shi hai tm ajao"];
     var list3=["2:00pm","11:45pm","3:00am","6:30pm","5:00pm","4:10pm","9:10pm","1:40am","7:00pm","8:00pm","9:36pm",
     "3:55pm"];
     var list6=["Ayesha", "Yusra","Nida", "Umna", "Urma", "Noor", "Marhama","Fatma","Laiba","Ramsha", "Hamza"];
     var list7=["2:00pm","11:45pm","3:00am","6:30pm","5:00pm","4:10pm","9:10pm","1:40am","7:00pm","8:00pm","9:36pm",
     "3:55pm"];
    return  DefaultTabController(
      initialIndex: 1,length: 4,
      child: Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("WhatsApp",style: 
            TextStyle(color:Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
          ],
        ),






        actions: [Icon(Icons.search,color: Colors.white,),],
        centerTitle: true,
        backgroundColor: Colors.green,
        bottom: TabBar(
          isScrollable:true,
          indicatorColor:Colors.white,
          labelPadding: EdgeInsets.symmetric(horizontal: 100),
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white,
          tabs: [
          Tab(icon: Icon(Icons.camera_alt),),
          Tab(child: Text("Chats"),),
          Tab(child: Text("Status"),),
          Tab(child: Text("Calls"),),
         
          ],),),
          body:   TabBarView(children: [
                Center(child: Text("Camera")),


            ListView.builder(
              itemCount: list1.length,
              itemBuilder: (Context,index){
                return ListTile(
                  leading: CircleAvatar(radius: 30,backgroundImage:
                 AssetImage("assets/pic1.jpg"),),
                  title: Text(list1[index]),
                  subtitle: Text(list2[index]),
                  trailing: Text(list3[index]),
                  );
              } ),

                Column(children: [
                  ListTile(leading: CircleAvatar(radius: 30,backgroundImage:
                     AssetImage("assets/pic1.jpg")),title: Text("Status"),
                  subtitle: Text("Tap to add status updates"),),
                   ListTile(subtitle: Text("Viwed updates"),),
                   ListTile(leading: CircleAvatar(radius:30,backgroundImage:
                   AssetImage("assets/pic1,jpg"),),title: Text("Sara"),subtitle: Text("11:00AM"),),
                   ListTile(leading: CircleAvatar(radius: 30,backgroundImage:
                    AssetImage("assets/pic1.jpg"),),title: Text("Ramsha"),subtitle: Text("1 hour ago"),),
                   ListTile(leading: CircleAvatar(radius:30,backgroundImage: 
                   AssetImage("assets/pic1.jpg"),),title: Text("Yusra"),subtitle: Text("6 mins ago"),),
                   ListTile(leading: CircleAvatar(radius: 30,backgroundImage: 
                   AssetImage("assets/pic1.jpg"),),title: Text("Noor"),subtitle: Text("39 mins ago"),),
                   ListTile(subtitle: Text("Muted updates"),),
                ],),
      
              ListView.builder(itemCount: list6.length,
                itemBuilder: (Context,index){
                return ListTile(
                  leading: CircleAvatar(radius: 30,backgroundImage:
                  AssetImage("assets/pic1.jpg"),),
                 title: Text(list6[index]),
                 subtitle: Text(list7[index]),
                 trailing: Icon(Icons.call),
                );
              })
           ]),
    ));
           
      
      

     
  }
}