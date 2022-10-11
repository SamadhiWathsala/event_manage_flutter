import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage('assets/images/banner.png'),
                fit: BoxFit.fill
            ),
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
        width: size.width/1.5,
        height: size.height/3.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: size.height/(3.5 * 5),
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width/80),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Event name here',style: Theme.of(context).textTheme.subtitle2,),
                        const CircleAvatar(radius: 5,backgroundColor: Colors.green,),
                      ],
                    ),
                    Text('NOW',style: Theme.of(context).textTheme.subtitle1,)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
