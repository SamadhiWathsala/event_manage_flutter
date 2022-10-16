import 'package:flutter/material.dart';

class PastEventList extends StatelessWidget {
  const PastEventList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 3,
        itemBuilder: (context,index){
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width/20),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(size.width/30)),
              ),
              elevation: 3,
              child: Row(
                children: [
                  Container(
                    width: size.width/3.5,
                    height: size.height/6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(size.width/30),
                            bottomLeft: Radius.circular(size.width/30)
                        ),
                        image: const DecorationImage(image: AssetImage('assets/images/banner_2.jpg'),fit: BoxFit.fill)
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: size.width/30),
                      child: SizedBox(
                        height: size.height/6,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Name of the event',style: Theme.of(context).textTheme.headline6,overflow: TextOverflow.ellipsis,),
                            const Text('2022-09-07',overflow: TextOverflow.ellipsis,),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height/6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border_outlined,color: Colors.red,)),
                        Text('23',style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Colors.red),),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }
    );
  }
}
