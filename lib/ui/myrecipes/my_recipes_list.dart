import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MyRecipesList extends StatefulWidget {
  @override
  _MyRecipesListState createState() => _MyRecipesListState();
}

class _MyRecipesListState extends State<MyRecipesList> {
  // TODO 1
  List<String> recipes = [];

  // TODO 2
  @override
  void initState() {
    super.initState();
    recipes = <String>[];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: _buildRecipeList(context),
    );
  }

  Widget _buildRecipeList(BuildContext context) {
    // TODO 3
    return ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (BuildContext context, int index) {
          // TODO 4
          return SizedBox(
            height: 100,
            child: Slidable(
              startActionPane: ActionPane(
                motion: ScrollMotion(),
                children: [
                  Card(
                    elevation: 1.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.white,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: CachedNetworkImage(
                            // TODO 5
                            imageUrl:
                                'http://www.seriouseats.com/recipes/2011/12/chicken-vesuvio-recipe.html',
                            height: 120,
                            width: 60,
                            fit: BoxFit.cover),
                        // TODO 6
                        title: Text('Chicken Vesuvio'),
                      ),
                    ),
                  ),
                ],
              ),

              endActionPane: ActionPane(
                motion: ScrollMotion(),
                children: [
                  SlidableAction(
                    label: 'Delete',
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.black,
                    icon: Icons.delete,
                    onPressed: (BuildContext context) {
                      //TODo 7
                    },
                  ),
                  SlidableAction(
                    label: 'Delete',
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.black,
                    icon: Icons.delete,
                    onPressed: (BuildContext context) {
                      //TODo 8
                    },
                  ),
                ],
              ),
              child: ListTile(
                title: Text('Slide me'),
              ),
              // actions: <Widget>[
              //   IconSlideAction(
              //       caption: 'Delete',
              //       color: Colors.transparent,
              //       foregroundColor: Colors.black,
              //       iconWidget: Icon(Icons.delete, color: Colors.red),
              //       // TODO 7
              //       onTap: () {})
              // ],
              // secondaryActions: <Widget>[
              //   IconSlideAction(
              //       caption: 'Delete',
              //       color: Colors.transparent,
              //       foregroundColor: Colors.black,
              //       iconWidget: Icon(Icons.delete, color: Colors.red),
              //       // TODO 8
              //       onTap: () {})
              // ],
            ),
          );
        });
    // TODO 9
  }
}
