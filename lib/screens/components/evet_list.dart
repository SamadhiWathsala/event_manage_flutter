import 'package:flutter/material.dart';

class EventList extends StatelessWidget {
  const EventList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 5,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  image: const DecorationImage(image: AssetImage('assets/images/banner_2.jpg'),fit: BoxFit.fill),
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
                          Text('Event name here',style: Theme.of(context).textTheme.subtitle2,),
                          Text('2022-08-09',style: Theme.of(context).textTheme.subtitle1,)
                        ],
                      ),
                    ),
                  )
                ],
              ),
              // width: MediaQuery.of(context).size.width/1.5,
              // height: MediaQuery.of(context).size.height/3.5,
            ),
          );
        }
    );
  }
}
