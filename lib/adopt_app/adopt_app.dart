import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mi_primera_app/adopt_app/bloc/animal_bloc.dart';
import 'package:mi_primera_app/adopt_app/widgets/adopt_appbar.dart';
import 'package:mi_primera_app/adopt_app/widgets/adopt_filter.dart';
import 'package:mi_primera_app/adopt_app/widgets/adopt_list.dart';

class AdoptAppPage extends StatelessWidget {
  const AdoptAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AnimalBloc()..add(LoadAnimals()),
      child: const Body(), 
    );
  }
}


class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFDBE8DF),
        body: const Column(
          children: [
            AdoptAppbarWidget(),
            AdoptFilterWidget(),
            AdoptListWidget(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_rounded),
              label: "Favoritos",
            ),
          ],
        ),
      );
  }
}




// backgroundColor: #DBE8DF
// orange: #EE6D2D
// brown: #3C2F20
// brownLight: #8E8E81
// blueLight: #91C9B9