import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
        child: Scaffold(
            appBar: AppBar(
              title: Text('WhatsApp'),
              bottom: const TabBar(
                tabs: [
                  Tab(child: Icon(Icons.camera_alt)),
                  Tab(child: Text('Chats')),
                  Tab(child: Text('Status')),
                  Tab(child: Text('Call')),
                ]
              ),
              actions:  [
                const Icon(Icons.search),
                const SizedBox(width: 10),
                 PopupMenuButton(
                   icon: const Icon(Icons.more_vert_outlined),
                   itemBuilder: (context) => [
                   const PopupMenuItem(
                     value: 1,
                     child: Text('New Group'),),
                     const PopupMenuItem(
                       value: 2,
                       child: Text('New Broadcast'),),
                     const PopupMenuItem(
                       value: 3,
                       child: Text('Linked Devices'),),
                     const PopupMenuItem(
                       value: 4,
                       child: Text('Starred Message'),),
                     const PopupMenuItem(
                       value: 4,
                       child: Text('Setting'),)
                 ]),
                const SizedBox(width: 10),

              ],
            ),
          body: TabBarView(
            children: [
              Tab( child: Icon(Icons.camera_alt),),
              ListView.builder(
                  itemCount: 50,
                  itemBuilder: (context, index){
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/4308937/pexels-photo-4308937.jpeg?cs=srgb&dl=pexels-juan-martin-lopez-4308937.jpg&fm=jpg'),
                    ),
                    title: Text('Cillian Murphy'),
                    subtitle: Text('message from Cillian Murphy'),
                    trailing: Text('6:36 PM'),
                  );
                  }),
              ListView.builder(
                  itemCount: 50,
                  itemBuilder: (context, index){

                    if(index == 0){
                      return Column(
                        children: [
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.green,
                                  width: 4,
                                )
                              ),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(index / 2 == 0 ? 'https://images.pexels.com/photos/4308937/pexels-photo-4308937.jpeg?cs=srgb&dl=pexels-juan-martin-lopez-4308937.jpg&fm=jpg'
                                    : 'https://images.pexels.com/photos/3078404/pexels-photo-3078404.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
                                ),
                              ),
                            ),
                            title: Text(index / 2 == 0 ? 'My Status' : 'Wahaj Ahmed'),
                            subtitle: Text(index / 2 == 0 ? 'Today, 4:35 PM ' : '5 Minutes Ago'),
                            trailing: Icon( index / 2 == 0 ? Icons.more : null),

                          ),

                        ],
                      );
                    }
                    else{
                      return Column(
                        children: [
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 4,
                                  )
                              ),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(index / 2 == 0 ? 'https://images.pexels.com/photos/4308937/pexels-photo-4308937.jpeg?cs=srgb&dl=pexels-juan-martin-lopez-4308937.jpg&fm=jpg'
                                    : 'https://images.pexels.com/photos/3078404/pexels-photo-3078404.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
                                ),
                              ),
                            ),
                            title: Text(index / 2 == 0 ? 'My Status' : 'Wahaj Ahmed'),
                            subtitle: Text(index / 2 == 0 ? 'Today, 4:35 PM ' : '5 Minutes Ago'),
                            trailing: Icon( index / 2 == 0 ? Icons.more_horiz_outlined : null),

                          ),

                        ],
                      );
                    }


                  }),
    ListView.builder(
    itemCount: 50,
    itemBuilder: (context, index){
    return ListTile(
    leading: CircleAvatar(
    backgroundImage: NetworkImage('https://images.pexels.com/photos/4308937/pexels-photo-4308937.jpeg?cs=srgb&dl=pexels-juan-martin-lopez-4308937.jpg&fm=jpg'),
    ),
    title: Text('Cillian Murphy'),
    subtitle: Text(index / 2 == 0 ? 'You Missed a Video Call' : 'You Missed Audio Call'),
    trailing: Icon( index / 2 == 0 ? Icons.missed_video_call : Icons.phone_missed_sharp),
    );
    }),
            ],
          ),

      ),
    );
  }
}
