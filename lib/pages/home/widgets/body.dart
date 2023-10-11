import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/pages/home/widgets/search_box.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [searchBar(), CategoriesList()],
    );
  }
}

class CategoriesList extends StatefulWidget {
  const CategoriesList({super.key});

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  int itemSelected = 0;
  List catgories = ["All", "Sofa", "Park bench", "Armchair"];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: catgories.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              itemSelected = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            margin: EdgeInsets.only(
                left: kDefaultPadding,
                right: index == catgories.length - 1 ? kDefaultPadding : 0),
            decoration: BoxDecoration(
                color: itemSelected == index
                    ? Colors.white.withOpacity(0.4)
                    : null,
                borderRadius: BorderRadius.all(Radius.circular(4))),
            child: Text(catgories[index], ),
          ),
        ),
      ),
    );
  }
}
