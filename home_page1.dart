import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sample_app1/page1.dart';
import 'package:sample_app1/page2.dart';
import 'package:sample_app1/page3.dart';
import 'package:sample_app1/page4.dart';
import 'package:sample_app1/page5.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Colors.white,
        drawer: Drawer(
          //backgroundColor: Colors.red,
          child: Container(
            color: Colors.blueGrey,
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color(0xFF172032),
                  ),
                  child: Center(
                    child: Text(
                      " adZdj ",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                ),
                ListTile(
                    leading: Icon(Icons.category),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                    title: Text('Category'),
                    onTap:(){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Page1()));
                    }
                ),

                ListTile(
                    leading: Icon(Icons.notifications),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                    title: Text('Notification',
                    ),
                    onTap:(){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Page2()));
                    }
                ),

                ListTile(
                    leading: Icon(Icons.settings),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                    title: Text('Settings',
                    ),
                    onTap:(){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Page3()));
                    }
                ),

                ListTile(
                    leading: Icon(Icons.privacy_tip_outlined),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                    title: Text('Privacy policy',
                    ),
                    onTap:(){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Page4()));
                    }
                ),
                ListTile(
                    leading: Icon(Icons.feedback),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                    title: Text('Feedback',
                    ),
                    onTap:(){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Page5()));
                    }
                )
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: const Text(' adZdj '),
          backgroundColor: Colors.blue,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: (){
                  showSearch(
                      context: context,
                      delegate: CustomSearchDelegate (),
                    );
                  },
                 icon:const Icon(Icons.search),
            ),
          ],
        ),
        body: CustomScrollView(

          primary: false,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20),
              sliver: SliverGrid.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[

                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green[100],
                    child: const Text("He'd have you all unravel at the"),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green[200],
                    child: const Text('Heed not the rabble'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green[300],
                    child: const Text('Sound of screams but the'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green[400],
                    child: const Text('Who scream'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green[500],
                    child: const Text('Revolution is coming...'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green[600],
                    child: const Text('Revolution, they...'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green[600],
                    child: const Text('Revolution, they...'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green[600],
                    child: const Text('Revolution, they...'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green[600],
                    child: const Text('Revolution, they...'),
                  ),Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green[600],
                    child: const Text('Revolution, they...'),
                  ),Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green[600],
                    child: const Text('Revolution, they...'),
                  ),Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green[600],
                    child: const Text('Revolution, they...'),
                  ),


                ],
              ),
            ),
          ],
        ),
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        /*floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.add),
          backgroundColor: Colors.blueGrey,
          foregroundColor: Colors.yellow,
          //mini: true,
        ),*/
          bottomNavigationBar: GNav(
            backgroundColor: Colors.blue,
            color: Colors.white,
            activeColor: Colors.black,
            //tabBackgroundColor: Colors.grey,
            gap: 8,
            tabs: const [
              GButton(
                  icon: Icons.home,
                  text: "Home"),

              GButton(
                  icon: Icons.add,
                  text: "Add"),
              GButton(
                  icon: Icons.location_on,
                  text: "Location"),
              GButton(
                  icon: Icons.person,
                  text: "Profile"),
            ],
          ),
      ),
    );
  }
}

//SEARCH BAR...
class CustomSearchDelegate extends SearchDelegate{
  List<String> searchTerms =[
    //keyword list...
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon:const Icon(Icons.clear),
        onPressed: (){
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: (){
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery =[];
    for (var fruit in searchTerms){
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery =[];
    for (var fruit in searchTerms){
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}