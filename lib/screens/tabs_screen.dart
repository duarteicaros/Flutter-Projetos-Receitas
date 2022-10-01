import 'package:flutter/material.dart';

import 'categories_screen.dart';
import 'favorite_screen.dart';
import '../components/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreenIndex = 0;
  final List<Map<String, dynamic>> _screens = [
    {'title': 'Lista de Categorias', 'screen': const CategoriesScreen()},
    {'title': 'Meus Favoritos', 'screen': const FavoriteScreen()},
  ];

  _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _screens[_selectedScreenIndex]['title'],
        ),
      ),
      drawer: const MainDrawer(),
      body: _screens[_selectedScreenIndex]['screen'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        currentIndex: _selectedScreenIndex,
        //Cria uma animação entre as trocas da aba atual para as demais, porem é preciso colocar o backgroundcolor em cada bottomnavigationBarItem para que ele fique correto
        // type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(
            // backgroundColor: Theme.of(context).colorScheme.primary,
            icon: Icon(Icons.category),
            label: 'Categorias',
          ),
          BottomNavigationBarItem(
            // backgroundColor: Theme.of(context).colorScheme.primary,
            icon: Icon(Icons.star),
            label: 'Favoritos',
          ),
        ],
      ),
    );
  }
}

// 1 FORMA DE CRIAR O APP BAR
    //   return DefaultTabController(
    //     length: 2,
    //     /*Essa propriedade mostra qual aba deve ser aberta por padrão, 1 igual a segunda aba e assim sucessivamente*/
    //     // initialIndex: 1,
    //     child: Scaffold(
    //       appBar: AppBar(
    //         title: const Text('Vamos Cozinhar?'),
    //         bottom: const TabBar(
    //           tabs: [
    //             Tab(
    //               icon: Icon(Icons.category),
    //               text: 'Categorias',
    //             ),
    //             Tab(
    //               icon: Icon(Icons.star),
    //               text: 'Favoritos',
    //             ),
    //           ],
    //         ),
    //       ),
    //       body: const TabBarView(children: [
    //         CategoriesScreen(),
    //         FavoriteScreen(),
    //       ]),
    //     ),
    //   );
    // }
