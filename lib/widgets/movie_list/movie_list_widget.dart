import 'package:flutter/material.dart';
import 'package:movie_app/resources/resources.dart';

class Movie {
  final int id;
  final String imageName;
  final String title;
  final String time;
  final String description;

  Movie({
     required this.id,required this.imageName, required this.title, required this.time, required this.description
    });
}


class MovieListWidget extends StatefulWidget {

   MovieListWidget({Key? key}) : super(key: key);

  @override
  State<MovieListWidget> createState() => _MovieListWidgetState();
}

class _MovieListWidgetState extends State<MovieListWidget> {
  final _movies = [
    Movie(
      id: 1,
      imageName: AppImages.movie1, 
      title: 'Смертельная битва', 
      time: 'April 7,2021', 
      description: 'Описание Описание Описание',
      ),
        Movie(
            id: 2,
      imageName: AppImages.movie1, 
      title: 'Qwe битва', 
      time: 'April 7,2021', 
      description: 'Описание Описание Описание',
      ),
       Movie(
              id: 3,
      imageName: AppImages.movie1, 
      title: 'Wqeвы битва', 
      time: 'April 7,2021', 
      description: 'Описание Описание Описание',
      ),
       Movie(
              id: 4,
      imageName: AppImages.movie1, 
      title: 'qqqы битва', 
      time: 'April 7,2021', 
      description: 'Описание Описание Описание',
      ),
       Movie(
              id: 5,
      imageName: AppImages.movie1, 
      title: 'wwвы битва', 
      time: 'April 7,2021', 
      description: 'Описание Описание Описание',
      ),
       Movie(
              id: 6,
      imageName: AppImages.movie1, 
      title: 'eeeвы битва', 
      time: 'April 7,2021', 
      description: 'Описание Описание Описание',
      ),
      
  ];
  var _filtredMovies = <Movie>[];
  final _SearchController = TextEditingController();

  void _searchMovies(){
    final query = _SearchController.text;
    if (query.isNotEmpty) {
      _filtredMovies = _movies.where((Movie movie){
        return movie.title.toUpperCase().contains(query.toUpperCase());
      }) .toList();
    }
    else {
      _filtredMovies = _movies;
    }
    setState(() {});
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _filtredMovies = _movies;
    _SearchController.addListener(_searchMovies);
  }

void _onMovieTab(int index) {
  final id = _movies[index].id;
  Navigator.of(context).pushNamed('/main_screen/movie_details', arguments: id);
}


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          padding: EdgeInsets.only(top: 70),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemCount: _filtredMovies.length,
          itemExtent: 163,
          itemBuilder: (BuildContext context, int index){
            final movie = _filtredMovies [index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black.withOpacity(0.2)),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 8,
                        offset: Offset (0,2),
                      )
                    ],
           ),
           clipBehavior: Clip.hardEdge,
                child: Row(
                  children: [
                  Image(image: AssetImage(movie.imageName)),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Text(movie.title,
                        maxLines: 1, 
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height: 5),
                        Text(movie.time,
                        maxLines: 1, 
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.grey),),
                        SizedBox(height: 20),
                        Text(movie.description, 
                        maxLines: 2, 
                        overflow: TextOverflow.ellipsis,),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                ],
                ),
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    onTap: () => _onMovieTab(index)
                  ),
                ),
              ],
            ),
          );
        }),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            controller:_SearchController,
            decoration: InputDecoration(
              labelText: 'Поиск',
              filled: true,
              fillColor: Colors.white.withAlpha(235),
              border: OutlineInputBorder(), 
            ),
          ),
        ),
      ],
    );
  }
}