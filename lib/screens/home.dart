import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    Expanded(
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5,
                          offset: Offset(3,2),
                          color: Colors.grey.shade400
                      )
                    ]
                ),
                // width: MediaQuery.of(context).size.width/1.5,
                // height: MediaQuery.of(context).size.height/3.5,
              ),
            );
          }
      ),
    ),
    Text(
      'Past event going here',
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
        child: Container(
          child: Column(
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
                      backgroundImage: const AssetImage('assets/images/profile.jpg'),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: size.height/3.5,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                offset: Offset(3,2),
                                color: Colors.grey.shade400
                              )
                            ]
                          ),
                          width: size.width/1.5,
                          height: size.height/3.5,
                        ),
                      );
                    }
                ),
              ),
              _widgetOptions.elementAt(_selectedIndex)

            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Future',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_available),
            label: 'Past',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
