import 'package:bloc_example/src/blocs/home/home_bloc.dart';
import 'package:bloc_example/src/responses/films_results.dart';
import 'package:bloc_example/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<Results> filmsResults;
  bool isLoading = false;
  getFilms() {
    BlocProvider.of<HomeBloc>(context).add(GetFilmsEvent());
  }

  @override
  void initState() {
    filmsResults = [];
    getFilms();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state is HomeInitial) {
          setState(() {
            isLoading = true;
          });
        }
        if (state is GetFilmsState) {
          setState(() {
            isLoading = false;
            filmsResults = state.filmsResults.results;
          });
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Films"),
        ),
        body: (isLoading == true)
            ? Utils().buildLoadingWidgetWithText("Cargando contenido!!")
            : buildListFilms(filmsResults),
      ),
    );
  }

  Widget buildListFilms(List<Results> filmsResults) {
    return ListView.builder(
        itemCount: filmsResults.length,
        itemBuilder: (context, index) {
          return itemRowFilm(filmsResults[index]);
        });
  }

  Widget itemRowFilm(Results filmsResult) {
    return Card(
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                "Nombre: ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(filmsResult.title),
            ],
          ),
          Row(
            children: [
              const Text(
                "Episodio: ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(filmsResult.episodeId.toString()),
            ],
          ),
          Row(
            children: [
              const Text(
                "Director: ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(filmsResult.director),
            ],
          ),
        ],
      ),
    );
  }
}
