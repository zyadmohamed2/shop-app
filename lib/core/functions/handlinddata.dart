import 'package:flutter/material.dart';
import 'package:shop/core/class/statusrequest.dart';
handlingData(respons){
  if (respons is StatusRequest) {
    if (respons == StatusRequest.offlinefailure) {
      return respons;
    }
  }
  else{
    return StatusRequest.success;
  }
}