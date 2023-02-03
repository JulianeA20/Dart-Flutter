// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore
import 'package:exemplo/pages/pageViews/one_page.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();

  int indexBottomNavigationBar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar'),
        backgroundColor: Color.fromARGB(255, 73, 73, 88),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(255, 64, 66, 85)),
              accountName: Text('Juliane Almeida'),
              accountEmail: Text('+55 (71) 8677-8077'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color.fromARGB(206, 31, 31, 41),
                child: Text('J'),
              ),
            ),
            ListTile(
              title: Text('Novo Grupo'),
              leading: Icon(Icons.people_outlined),
              onTap: () {
                _pageController.jumpToPage(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Contatos'),
              leading: Icon(Icons.person_outlined),
              onTap: () {
                _pageController.jumpToPage(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Chamadas'),
              leading: Icon(Icons.call_outlined),
              onTap: () {
                _pageController.jumpToPage(3);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Pessoas Próximas'),
              leading: Icon(Icons.contactless_outlined),
              onTap: () {
                _pageController.jumpToPage(4);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Mensagens Salvas'),
              leading: Icon(Icons.turned_in_not_outlined),
              onTap: () {
                _pageController.jumpToPage(5);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Configurações'),
              leading: Icon(Icons.settings_outlined),
              onTap: () {
                _pageController.jumpToPage(6);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          OnePage(),
          Container(),
        ],
      ),

      /* bottomNavigationBar: BottomNavigationBar(

          currentIndex: indexBottomNavigationBar,
          onTap: (int page) {
            setState(() {
              indexBottomNavigationBar = page;
            });
            _pageController.animateToPage(
              page,
              duration: Duration(milliseconds: 400),
              curve: Curves.ease,
            );
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Contatos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Mensagens',
           )
        ],
      )*/
    );
  }
}
