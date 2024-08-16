import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/assets.dart';
import 'package:responsive_dashboard/Domain/Models/product_model.dart';

class CustomDrawerController extends ChangeNotifier {
  ValueNotifier<int> index = ValueNotifier(0);
  final List<DrawerModel> drawerData = [
    DrawerModel(iconUrl: Assets.home, title: 'Dashboard'),
    DrawerModel(iconUrl: Assets.cart, title: 'NFT Marketplace'),
    DrawerModel(iconUrl: Assets.table, title: 'Tables'),
    DrawerModel(iconUrl: Assets.menu, title: 'Kanban'),
    DrawerModel(iconUrl: Assets.person, title: 'Profile'),
    DrawerModel(iconUrl: Assets.lock, title: 'Sign In'),
  ];
}
