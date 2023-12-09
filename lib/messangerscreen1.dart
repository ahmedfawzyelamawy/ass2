import 'package:flutter/material.dart';
import 'MessengetUsers.dart';
import 'model/messangerusers.dart';

class MessngerScreen1 extends StatelessWidget {
  final UserScreen users;

  const MessngerScreen1({required this.users, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
          Text("${users.name ?? ''}",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ]
    );
  }
}
