import 'package:flutter/material.dart';

class HomeSearch extends StatefulWidget{

  State<HomeSearch> createState() => HomeSearchState();
}

class HomeSearchState extends State<HomeSearch>{

  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        Expanded(child: Padding(
          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Поиск',
              contentPadding: EdgeInsets.only(left: 15),
              suffixIcon: Icon(Icons.search),
              hintStyle: TextStyle(fontSize: 19.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
          ),
        ),),
        SizedBox(width: 16.0),
        ElevatedButton(onPressed: () {print('hello');}, child: Icon(Icons.filter_list))
      ],
    );
  }
}