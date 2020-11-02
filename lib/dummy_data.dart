import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DummyData extends StatelessWidget {
  const DummyData();

  @override
  Widget build(BuildContext context) {
    final List<String> languages = [
      'English Language',
      'Chinese Language',
      'German Language',
      'Russian Language',
      'French Language',
      'Korean Language',
    ];
    final List<String> languageFlag=[
      'images/united-kingdom.png',
      'images/china.png',
      'images/germany.png',
      'images/russia.png',
      'images/france.png',
      'images/south-korea.png',
    ];
    return ListView.builder(itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.fromLTRB(12, 12, 12,0),
        child: Container(
          height: 80,
          width: double.infinity,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: const Color(0xffe8e9ec),
            borderRadius: BorderRadius.all(Radius.circular(12))
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               Padding(
                 padding: const EdgeInsets.only(left: 8,right: 12),
                 child: Image.asset(languageFlag[index],width: 42,height: 42,),
               ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(languages[index],style: TextStyle(
                      color: Colors.black54,
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                  ),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text('8 course available',style: TextStyle(
                      color: Colors.black45
                    ),),
                  )
                ],
              )
            ],
          ),
        ),
      );
    },
    itemCount: languages.length,
    );
  }
}
