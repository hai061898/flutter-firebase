import 'package:e_commerce_firebase/models/category_model.dart';
import 'package:e_commerce_firebase/models/product_model.dart';
import 'package:e_commerce_firebase/service/home_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool> _loading = ValueNotifier(false);

  List<CategoryModel> get categoryModel => _categoryModel;
  List<CategoryModel> _categoryModel = [];

  List<ProductModel> get productModel => _productModel;
  List<ProductModel> _productModel = [];

  HomeScreen(){
    getCategory();
  }
 

  getCategory() async{
    _loading.value = true;
    HomeService().getCategory().then((value){
      for(int i = 0 ; i< value.length; i++)
      {
        _categoryModel.add(CategoryModel.fromJson(value[i].data()));
        _loading.value = false;
      }
      update();
    });
  }

  getBestSellingProducts() async {
    _loading.value = true;
    HomeService().getBestSelling().then((value) {
      for (int i = 0; i < value.length; i++) {
        _productModel.add(ProductModel.fromJson(value[i].data()));
        _loading.value = false;
      }
      print(_productModel.length);
      update();
    });
  }


// final MyRepository repository;
// HomeController({@required this.repository}) : assert(repository != null);

//   final _obj = ''.obs;
//   set obj(value) => this._obj.value = value;
//   get obj => this._obj.value;
}