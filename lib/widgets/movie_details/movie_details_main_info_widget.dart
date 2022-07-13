import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../resources/resources.dart';
import '../elements/radial_score.dart';


class MovieDetailsMainInfo extends StatelessWidget {
  const MovieDetailsMainInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
    _TopPosterWidget(),
    Padding(
      padding: const EdgeInsets.all(20.0),
      child: _MovieNameWidget (), ),

      _ScoreWidget(),
      
      _FilmInfoWidget(),

      Padding(
        padding: const EdgeInsets.all(10.0),
        child: _OverwViewWidger(),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: _DescriptionWidget(),
      ),
           SizedBox(height: 30,),
      _NamePeople(),
      ],
    );
  }

  Text _OverwViewWidger() {
    return Text('Overwiew',
       style:  TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 16,));
  }
}

class _DescriptionWidget extends StatelessWidget {
  const _DescriptionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Описание Описание Описание Описание Описание Описание ',   style:  TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 16,
                )
                );
  }
}

class _TopPosterWidget extends StatelessWidget {
  const _TopPosterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(image: AssetImage(AppImages.imgTop)),
        Positioned(
          top: 20,
          left: 20,
          bottom: 20,
          child: Image(image: AssetImage(AppImages.movie1)),
        ),

        
      ],
    );
  }
}
class _MovieNameWidget extends StatelessWidget {
  const _MovieNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: 3,
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
        TextSpan(
          text: 'Name Film',
          style:  TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17,
            ),
        ),
        TextSpan(
          text: ' (2021)',
          style:  TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            )
        )
      ]),
    );
  }
}
class _ScoreWidget extends StatelessWidget {
  const _ScoreWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(onPressed: (){}, child: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(
              width: 40,
              height: 40,
              child: RadialPercentWidget(     
              child: Text('72'),
              percent: 0.72,
              fillColor: Color.fromARGB(255, 10, 23, 25),
              lineColor: Color.fromARGB(255, 37, 203, 103),
              freeColor: Color.fromARGB(255, 25, 54, 31),
              lineWidth: 3
              ),
            ),
            SizedBox(width: 10),
            Text('User Score'),
          ],
        )),
        Container(
          width: 1,
          height: 15,
          color: Colors.grey,
        ),
        TextButton(onPressed: (){}, child: Row(
          children: [
            Icon(Icons.play_arrow),
            Text('Play Trailler'),
          ],
        )),

      ],
    );
  }
}

class _FilmInfoWidget extends StatelessWidget {
  const _FilmInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Color.fromRGBO(22, 21, 25, 1.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:  10, horizontal: 70),
        child: Text('Original title: Thor: Love and Thunder 2022 FG-13 1h 58m',
              maxLines: 3,
              textAlign: TextAlign.center,
              style:  TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 16,)
        ),
      ),
    );
  }
}

class _NamePeople extends StatelessWidget {
  const _NamePeople({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameStyle =  TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 16,);
    final jobStyle =  TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 16,);
    return Column(
      children: [
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Name Name', style: nameStyle,),
              Text('Должность', style: jobStyle,),
            ],
          ),   
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Text('Name Name', style: nameStyle,),
             Text('Должность', style: jobStyle,),
            ],
          ),
        ],
      ),
      SizedBox(height: 20,),
      Row(
             mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
         Text('Name Name', style: nameStyle,),
             Text('Должность', style: jobStyle,),
            ],
          ),   
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Name Name', style: nameStyle,),
             Text('Должность', style: jobStyle,),
            ],
          ),
        ],
      )
      ],

    );
  }
}