import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:successage/mentee/mentee_mentor_list.dart';
import 'package:successage/utils/app_info_list.dart';
import 'package:successage/utils/app_layouts.dart';

class HighlightedMentee extends StatelessWidget {
  final Map<String,dynamic> Mentor;
  const HighlightedMentee({Key? key,required this.Mentor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.circular(12)
      ),
      child: Row(
        children: [
          Container(
            height: 130,
            width: 350,
            child: Column(
              children: <Widget>[
                Center(
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: AssetImage(
                                    "assets/${Mentor['image']}"
                                )
                            )

                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(Mentor['name'],style: Styles.headline2,),
                          Text(Mentor['title'],style: Styles.headline3,),
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.orange,),
                              Icon(Icons.star,color: Colors.orange,),
                              Icon(Icons.star,color: Colors.orange,),
                              Icon(Icons.star,color: Colors.orange,),
                              Icon(Icons.star,color: Colors.orange,),
                              SizedBox(width: 5.0,),
                              Text(Mentor['rating'].toString())
                            ],

                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: (){},
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.blueAccent
                      ),
                      child: Text('View Profile',style: Styles.ButtonText,),
                    ),
                    ElevatedButton(
                      onPressed: (){},
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.lightBlue
                      ),
                      child: Text('Book Session',style: Styles.ButtonText,),
                    ),
                  ],
                ),

              ],
            ),

          )
        ],
      ),
    );
  }
}
