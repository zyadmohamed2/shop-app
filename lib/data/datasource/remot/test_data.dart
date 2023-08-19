import 'package:shop/core/class/crud.dart';
import 'package:shop/linkapi.dart';

class TestData{
  Crud crud;
  TestData(this.crud);
  getData() async {
    var respons = await crud.postData(AppLink.test, {});
    respons.fold((l) => l, (r) => r);
  }
}