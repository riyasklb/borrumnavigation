import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(app1());
}

class app1 extends StatelessWidget {
  const app1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: bottumnavigation(),
    );
  }
}

class bottumnavigation extends StatefulWidget {
  const bottumnavigation({super.key});

  @override
  State<bottumnavigation> createState() => _bottumnavigationState();
}

class _bottumnavigationState extends State<bottumnavigation> {
  int currentstate = 0;
  final list = [person(), message(), tab()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: list[currentstate],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentstate,
          onTap: (_value) {
            setState(() {
              currentstate = _value;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'person'),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: 'message'),
            BottomNavigationBarItem(icon: Icon(Icons.tab), label: 'tab')
          ],
        ));
  }
}

class person extends StatelessWidget {
  const person({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('person')),
    );
  }
}

class message extends StatelessWidget {
  message({super.key});
  final List = ['car', 'bike', 'plane'];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: DropdownButtonFormField(
              hint: Text('select any one'),
              onChanged: (value) {
                print(value);
              },
              items: List.map((e) {
                return DropdownMenuItem(value: e, child: Text(e));
              }).toList())),
    );
  }
}

class tab extends StatelessWidget {
  const tab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('tab')),
    );
  }
}
