import 'package:flutter/material.dart';

class DrawerData extends StatelessWidget {
  const DrawerData();
  @override
  Widget build(BuildContext context) {
    final List<DrawerItem> drawer=[
      DrawerItem('Profile',Icons.account_circle),
      DrawerItem('Messages',Icons.message),
      DrawerItem('Activity',Icons.compare_arrows),
      DrawerItem('Bookmarks',Icons.bookmark),
      DrawerItem('Sign Out',Icons.exit_to_app),
    ];
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 48, 24, 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('images/language-learning.png'),
          Text('Settings',style: Theme.of(context).textTheme.headline4,),
         const Divider(
            color: Colors.white54,
          ),
          ListView.builder(
              itemCount: drawer.length,
              shrinkWrap: true,
              itemBuilder: (_,index){
            return Padding(
              padding: const EdgeInsets.only(bottom: 12,left: 12),
              child: InkWell(
                onTap: (){},
                child: Container(
                  height: 48,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(drawer[index].icon),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(drawer[index].name,style: TextStyle(
                          fontSize: 16
                        ),),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),

          const Divider(
            color: Colors.white54,
          ),
          Container(
            height: 48,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.share),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text('Tell a Friend',style: TextStyle(
                      fontSize: 16
                  ),),
                )
              ],
            ),
          ),
          Container(
            height: 48,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.help_outline),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text('Help and Feedback',style: TextStyle(
                      fontSize: 16
                  ),),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DrawerItem{
  final String name;
  final IconData icon;

  const DrawerItem(this.name, this.icon);
}