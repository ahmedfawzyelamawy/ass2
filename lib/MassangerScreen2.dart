import 'package:flutter/material.dart';
import 'MessangerUsers.dart';
import 'model/messangerusers.dart';
class MessangerScreen2 extends StatelessWidget {
  final UserScreen users;
  const MessangerScreen2({required this.users,super.key});
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        IntrinsicHeight(
          child: IntrinsicWidth(
            child: Stack(
                children:[ CircleAvatar(
                  backgroundImage: Image.asset('${users.Image??''}').image,
                  radius: 30,
                ),
                  if(users.Status==true)
                    Visibility(
                      visible: true,
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.green,
                        ),
                      ),
                    ),
                ]
            ),
          ),
        ),

        SizedBox(width: 10,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("${users.name??''}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 12,
                ),
              ) ,
              Text("${users.title??''}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
                textAlign: TextAlign.end,
              )

            ],
          ),
        ),
        SizedBox(width: 100,),
        Text("${users.time??''}",
          style: TextStyle(
            color: Colors.white54,
          ),
          textAlign: TextAlign.end,
        ),
      ],
    ) ;;
  }
}
