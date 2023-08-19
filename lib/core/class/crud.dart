import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:shop/core/class/statusrequest.dart';
import 'package:shop/core/functions/checkinternet.dart';
import 'package:http/http.dart' as http;
class Crud{
  Future<Either<StatusRequest, Map>> postData(String uri, Map data) async {
    try {
      if(await checkInternet()){
      var respons = await http.post(Uri.parse(uri), body: data);
      if (respons.statusCode == 200 || respons.statusCode == 201) {
        Map responsebody = jsonDecode(respons.body);
        return Right(responsebody);
      }
      else{
        return Left(StatusRequest.serverfailure);
      }
    }
    else{
      return const Left(StatusRequest.offlinefailure);
    }
    } catch (e) {
      return const Left(StatusRequest.serverfailure);
    }
  }
}