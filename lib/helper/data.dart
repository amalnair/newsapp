import 'package:flutter/material.dart';

import 'package:newsapp/models/categorymodel.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> category = List.empty(growable: true);
  CategoryModel categoryModel = CategoryModel();
  categoryModel.categoryName = 'Business';
  categoryModel.imageUrl =
      'https://images.unsplash.com/photo-1526304640581-d334cdbbf45e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80';
  category.add(categoryModel);
  categoryModel = CategoryModel();

  categoryModel.categoryName = 'Entertainment';
  categoryModel.imageUrl =
      'https://images.unsplash.com/photo-1543536448-1e76fc2795bf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1139&q=80';
  category.add(categoryModel);
  categoryModel = CategoryModel();

  categoryModel.categoryName = 'General';
  categoryModel.imageUrl =
      'https://images.unsplash.com/photo-1451187580459-43490279c0fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80';
  category.add(categoryModel);
  categoryModel = CategoryModel();

  categoryModel.categoryName = 'Health';
  categoryModel.imageUrl =
      'https://images.unsplash.com/photo-1610315593257-1c1692997d9c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80';
  category.add(categoryModel);
  categoryModel = CategoryModel();

  categoryModel.categoryName = 'Sports';
  categoryModel.imageUrl =
      'https://images.unsplash.com/photo-1649196555707-0d09bf8524e8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80';
  category.add(categoryModel);
  categoryModel = CategoryModel();

  categoryModel.categoryName = 'Tech World';
  categoryModel.imageUrl =
      'https://images.unsplash.com/photo-1458862768540-8b091824fe2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80';
  category.add(categoryModel);
  categoryModel = CategoryModel();

  return category;
}
