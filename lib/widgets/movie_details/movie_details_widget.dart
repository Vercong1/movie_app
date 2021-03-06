import 'package:flutter/material.dart';

import 'movie_details_main_info_widget.dart';

class MovieDetailsWidget extends StatefulWidget {
  final int movieId;
  MovieDetailsWidget({Key? key, required this.movieId}) : super(key: key);

  @override
  State<MovieDetailsWidget> createState() => _MovieDetailsWidgetState();
}

class _MovieDetailsWidgetState extends State<MovieDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Имя фильма'), 
      ),
         body: ColoredBox(
          color: Color.fromRGBO(24, 23, 27, 1.0) ,
           child: ListView (
            children: [
              MovieDetailsMainInfo(),
            ],
                 ),
         )
    );
  }
}