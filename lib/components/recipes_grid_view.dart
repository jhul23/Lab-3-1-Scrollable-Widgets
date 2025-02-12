import 'package:flutter/material.dart';
import '../components/components.dart';
import '../models/models.dart';

class RecipesGridView extends StatelessWidget {
  // 1
  final List<SimpleRecipe> recipes;
  const RecipesGridView({
    super.key,
    required this.recipes,
  });
  @override
  Widget build(BuildContext context) {
    // 2
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
      ),
      // 3
      child: GridView.builder(
        // 4
        itemCount: recipes.length,
        // 5
        gridDelegate:
            const SliverGridDelegateWithMaxCrossAxisExtent(
               maxCrossAxisExtent: 700.0, // Maximum width of each grid item
              mainAxisSpacing: 10.0, // Spacing between rows
              crossAxisSpacing: 10.0, // Spacing between columns
              childAspectRatio: 1.0,
              ),
        
        itemBuilder: (context, index) {
          // 6
          final simpleRecipe = recipes[index];
          return RecipeThumbnail(recipe: simpleRecipe);
        },
      ),
    );
  }
}
