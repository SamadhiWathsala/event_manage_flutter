import 'package:flutter/material.dart';

class EventList extends StatelessWidget {
  const EventList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  image: const DecorationImage(image: AssetImage('assets/images/profile.jpg'),fit: BoxFit.fill),
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        offset: const Offset(3,2),
                        color: Colors.grey.shade400
                    )
                  ]
              ),
              // width: MediaQuery.of(context).size.width/1.5,
              // height: MediaQuery.of(context).size.height/3.5,
            ),
          );
        }
    );
  }
}
