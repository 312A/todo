import 'package:flutter/material.dart';
import 'package:todo_ui/widgets/task.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      // backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          "Todo App",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        
        children: [
          Expanded(
            flex: 1,
            child: Container(
              // height: screenHeight* 0.5,
              color: Colors.red,
              width: double.infinity,
            ),
          ),
          Expanded(
            flex: 2,
            
            child: const Positioned(
              top:100,
              left: 0,
              right: 0,
              bottom: 0,
              
              child: SingleChildScrollView(
                
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Task(
                      title: "Today",
                      desc: "4 Tasks",
                      icon: Icon(
                        Icons.abc_outlined,
                        size: 45,
                      ),
                      ficons: Icon(Icons.more_vert),
                    ),
                    Task(
                      title: "Today",
                      desc: "4 Tasks",
                      icon: Icon(
                        Icons.abc_outlined,
                        size: 45,
                      ),
                      ficons: Icon(Icons.more_vert),
                    ),
                    Task(
                      title: "Planned",
                      desc: "2 Tasks",
                      icon: Icon(
                        Icons.abc_outlined,
                        size: 45,
                      ),
                      ficons: Icon(Icons.more_vert),
                    ),
                    Task(
                      title: "Personal",
                      desc: "6 Tasks",
                      icon: Icon(
                        Icons.abc_outlined,
                        size: 45,
                      ),
                      ficons: Icon(Icons.more_vert),
                    ),
                    Task(
                      title: "Work",
                      desc: "5 Tasks",
                      icon: Icon(
                        Icons.abc_outlined,
                        size: 45,
                      ),
                      ficons: Icon(Icons.more_vert),
                    ),
                    Task(
                      title: "Shopping",
                      desc: "8 Tasks",
                      icon: Icon(
                        Icons.abc_outlined,
                        size: 45,
                      ),
                      ficons: Icon(Icons.more_vert),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
