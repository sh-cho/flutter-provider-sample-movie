import 'package:flutter/material.dart';
import 'package:flutter_provider_sample/src/provider/bottom_navigation_provider.dart';
import 'package:flutter_provider_sample/src/ui/count_home_widget.dart';
import 'package:provider/provider.dart';

import 'ui/movie_list_widget.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  late BottomNavigationProvider _bottomNavigationProvider;

  Widget _navigationBody() {
    switch (_bottomNavigationProvider.index) {
      case 0:
        return CountHomeWidget();

      case 1:
        return MovieListWidget();
    }

    return Container();
  }

  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _bottomNavigationProvider.index,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.movie), label: "Movie"),
      ],
      selectedItemColor: Colors.red,
      onTap: (index) {
        /// Provider navigation state
        _bottomNavigationProvider.updateCurrentIndex(index);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("[Home] build!");
    _bottomNavigationProvider = Provider.of<BottomNavigationProvider>(context);

    return Scaffold(
      body: _navigationBody(),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }
}
