import 'package:flutter/material.dart';
import 'package:plant_app/components/home/components/featuredPants.dart';
import 'package:plant_app/constants.dart';
import 'header_with_searchbox.dart';
import 'recomend_plants.dart';
import 'title_with_more_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height and with of our screen
    // Nos proverá altura total e com nossa tela
    Size size = MediaQuery.of(context).size;
    // It enable scrolling on small device
    // Permite rolagem em dispositivos pequenos
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recomendado",
            press: () {},
          ),
          RecomendedPlants(),
          TitleWithMoreBtn(
            title: "Destaque",
            press: () {},
          ),
          FeaturedPlants(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
