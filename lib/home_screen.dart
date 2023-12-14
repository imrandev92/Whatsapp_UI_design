import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Whatsapp'),
            bottom: TabBar(
                tabs: [
                  Tab(
                    child: Icon(Icons.camera_alt),
                  ),
                  Tab(
                    child: Text('Chats'),
                  ),
                  Tab(
                    child: Text('Status'),
                  ),
                  Tab(
                    child: Text('Calls'),
                  ),
                ],
            ),
            actions: [
              Icon(Icons.search),
              SizedBox(width: 10,),
              PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                  itemBuilder: (context,) => [
                    PopupMenuItem(
                      value: 1,
                      child: Text('New Group'),
                   ),
                    PopupMenuItem(
                      value: 2,
                      child: Text('Settings'),
                    ),
                    PopupMenuItem(
                      value: 3,
                      child: Text('Logout'),
                    ),
                  ],
              ),
              SizedBox(width: 10,),
            ],
          ),
          body: TabBarView(
              children: [
                Text('Camera'),
                ListView.builder(
                  itemCount: 100,
                    itemBuilder: (context, index){
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(''),
                        ),
                        title: Text('Imran Khan'),
                        subtitle: Text('you have done 100% for your nation'),
                        trailing: Text('10:34 PM'),
                      );
                    }
                ),
                ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index){
                      return ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.green,
                              width: 4,
                            ),
                          ),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage('https://www.istockphoto.com/photo/a-great-blue-heron-in-flight-carrying-a-twig-in-its-beak-gm1280777767-379003801?phrase=Imran%20Khan&searchscope=image%2Cfilm'),
                          ),
                        ),
                        title: Text('Imran Khan'),
                        subtitle: Text('33 mint ago'),
                      );
                    }
                ),
                ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index){
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage('https://www.istockphoto.com/photo/flying-birds-over-the-mosque-gm1197077400-341651336?phrase=lahore&searchscope=image%2Cfilm'),
                        ),
                        title: Text('Imran Khan'),
                        subtitle: Text(index /2 == 0 ? 'you missed audio call' : 'call time is 12:23'),
                        trailing: Icon(index /2 == 0 ? Icons.phone : Icons.video_call),
                      );
                    }
                ),
              ]
          ),
        ),
    );
  }
}
