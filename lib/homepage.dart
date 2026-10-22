import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"), //appbar er jonno

        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 128, 0, 32),
        foregroundColor: Colors.white, //appbar er colors cng hobe
        //leading: Icon(Icons.home),//home sign ashbe size color cng kora barite
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ], //multiple widget use kora jay icon buttons
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Name"),
              accountEmail: Text("Email"),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 166, 77, 104),
              ),
            ),

            ListTile(
              title: Text("Homepage"),
              leading: Icon(Icons.home),
              hoverColor: const Color.fromARGB(255, 234, 213, 213),
              onTap: () {},
            ),
            Divider(),
            Spacer(),

            ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.person),
              hoverColor: const Color.fromARGB(255, 217, 160, 172),
              onTap: () {},
            ),
          ],
        ),
      ), //aita dile leading cmnt kore rakhbo

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.end, onno side chole jay
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 217, 160, 172),
                      foregroundColor: const Color.fromARGB(255, 73, 48, 57),
                      fixedSize: Size(100, 20),
                      side: BorderSide(),
                      //elevation:10,
                    ),

                    child: Text("TextButton"),
                  ),
                  SizedBox(width: 10),

                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 234, 213, 213),
                      foregroundColor: const Color.fromARGB(255, 73, 48, 57),
                      fixedSize: Size(150, 20),
                      side: BorderSide(),
                    ),

                    child: Text("ElevatedButton"),
                  ),

                  OutlinedButton(
                    onPressed: () {},
                    child: Text("OutlineButton"),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.login)),
                ],
              ),
            ),
            Container(
              height: 200,
              width: 200,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(100),
              alignment: Alignment.bottomRight,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 247, 239, 234),
                border: Border.all(
                  width: 5,
                  color: const Color.fromARGB(255, 128, 0, 32),
                ),
                //borderRadius: BorderRadius.all(Radius.circular(20)),
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    const Color.fromARGB(255, 234, 213, 213),
                    const Color.fromARGB(255, 166, 77, 104),
                  ],
                ),
              ),
              child: Text("its body"),
            ),

          
            SizedBox(
              height: 200,
              width: 200,
              child: Card(
                margin: EdgeInsets.all(5),
                color: const Color.fromARGB(255, 234, 213, 213),
                shadowColor: const Color.fromARGB(255, 166, 77, 104),
                elevation: 20,
                shape: BeveledRectangleBorder(),
                child: Center(child: Text("Hello card")),
              ),
            ),
            
            Text("MY IMAGE IS BELOW"),
            Image.asset('assets/images/pic.png', height: 400, width: 1000),
            Image.network('/assets/images/pic.png'),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Add",
        foregroundColor: Colors.white,
        shape: BeveledRectangleBorder(),
        backgroundColor: const Color.fromARGB(255, 128, 0, 32),
        child: Icon(Icons.add),
      ),
    );
  }
}
