import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      
      appBar: AppBar(
        title: Text("Maderial Text"),
        backgroundColor: Colors.green,
        
        actions: <Widget>[
          
          IconButton(
              icon: Icon(Icons.add), 
              onPressed: null 
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: null,
          )
        ],
      ),
      
      body: ListView(
        children: <Widget>[
          
          Container(
            
            child: Column(
              children: <Widget>[

                dataitem(context, "I got Salary", "Early of this month i got my salary", "56000")

              ],
            ),
            
          ),
          
          
        ],
      ),
      
      
    );
  }
  
  Widget dataitem(BuildContext context, String name,String des, String amount){
    return Card(
      elevation: 10.0,
      margin: EdgeInsets.all(10.0),
      shape: RoundedRectangleBorder(
        
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: Container(
        height: 100.0,
        margin: EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            
            
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  
                  CircleAvatar(
                    child: Text(name[0]),
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  
                  SizedBox(width: 10.0,),
                  
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        Text(name,
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black
                          ),
                        ),

                        Text(des,
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.black
                          ),
                        )
                        
                        
                      ],
                    ),
                  ),
                  
                  
                  
                  
                ],
              ),
            ),
            
            Container(
              child: Text("\$"+amount,
              style: TextStyle(
                
                fontSize: 20.0,
                color: Colors.amber
                
              ),
              ),
            )
            
            
            
            
          ],
        ),
        
      ),
    );
  }
  
}


