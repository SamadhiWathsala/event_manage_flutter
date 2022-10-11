import 'package:event_manage/screens/components/event_card.dart';
import 'package:event_manage/screens/components/evet_list.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const Expanded(
      child: EventList()
    ),
    const Expanded(
        child: EventList()
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: size.width/20,bottom: size.height/40,right: size.width/20,top: size.height/25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Welcome back,',style: Theme.of(context).textTheme.subtitle1,),
                        Text('Samadhi Wathsala,',style: Theme.of(context).textTheme.headline6,overflow: TextOverflow.ellipsis,)
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: size.width/18,
                    backgroundColor: Colors.grey.shade50,
                    child: Icon(Icons.notifications_active,color: Colors.blue.shade800,),
                    // backgroundImage: const AssetImage('assets/images/profile.jpg'),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width/20),
              child: Text('Ongoing events',style: Theme.of(context).textTheme.subtitle1!.copyWith(fontWeight: FontWeight.w500),),
            ),
            SizedBox(
              height: size.height/3.5,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context,index){
                    return const EventCard();
                  }
              ),
            ),
            _widgetOptions.elementAt(_selectedIndex)

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Future event',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_available),
            label: 'Past event',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue.shade800,
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: const Icon(Icons.add),
        backgroundColor: Colors.blue.shade800,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
