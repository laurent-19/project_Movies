import 'package:flutter/material.dart';
import 'package:project_Movies/containers/movie_container.dart';
import 'package:project_Movies/models/movie.dart';

class MovieDetail extends StatelessWidget {
  const MovieDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MovieContainer(
      builder: (BuildContext context, Movie movie) {
        return Scaffold(
          appBar: AppBar(
            title: Text(movie.title),
          ),
          body: Image.network(movie.largeCoverImage),
        );
      },
    );
  }
}
