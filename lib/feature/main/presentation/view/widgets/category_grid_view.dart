import 'package:doctors_app/feature/main/domain/entites/categories_entity.dart';
import 'package:doctors_app/feature/main/presentation/view/widgets/custom_category_item_widget.dart';
import 'package:flutter/material.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: categoriesList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        final item = categoriesList[index];
        return CustomCategoryItemWidget(category: item);
      },
    );
  }
}
