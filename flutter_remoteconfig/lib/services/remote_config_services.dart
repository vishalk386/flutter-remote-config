
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

import '../models/themedata_model.dart';

Future<FirebaseRemoteConfig> setupRemoteConfig() async {
  await Firebase.initializeApp();
  var remoteConfig = FirebaseRemoteConfig.instance;

  remoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(seconds: 200),
      minimumFetchInterval: const Duration(minutes: 30)));
  remoteConfig.setDefaults(<String, dynamic>{
    'theme_data': jsonEncode({
      'backgroundColor': 0xFFB71000,
      'primaryColor': 0xFFB74093,
      'appbarColor': 0xFFB71000,
      'accentColor': 0xFFB71000,
      'primaryColorLight':0xFFB71000,
      'primaryColorDark': 0xFFB71000,
      'highlightColor': 0xFFB71000,
      'theme': 'system',
      'enableCustomFlag': false,
      'textFontSize': 10,
    }),
  });

  try {
    await remoteConfig.setConfigSettings(RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 10),
        minimumFetchInterval: Duration.zero));
    await remoteConfig.fetchAndActivate();
    Map<String, dynamic> themedata = await (jsonDecode(remoteConfig.getString('themedata')));
    ThemeDataModel themeDataModel = ThemeDataModel.fromJson(themedata);
    if (themeDataModel.enableCustomFlag) {
      switch (themeDataModel.theme) {
        case 'dark':
          {
            Get.changeTheme(ThemeData.dark().copyWith(
              appBarTheme: AppBarTheme(color: Color(themeDataModel.appbarColor)),
              primaryColor: Color(themeDataModel.primaryColor),
              bottomAppBarColor: Color(themeDataModel.primaryColor),
              textTheme:  const TextTheme(
                bodyText1: TextStyle(),
                bodyText2: TextStyle(),
              ).apply(
                bodyColor: Color(themeDataModel.primaryColor),
                displayColor: Color(themeDataModel.backgroundColor),
              ),
            ));
          }
          break;

        case 'light':
          {
            Get.changeTheme(ThemeData.light().copyWith(
              appBarTheme: AppBarTheme(color: Color(themeDataModel.primaryColor)),
              primaryColor: Color(themeDataModel.primaryColor),
              bottomAppBarColor: Color(themeDataModel.primaryColor),
              textTheme: const TextTheme(
                bodyText1: TextStyle(),
                bodyText2: TextStyle(),
              ).apply(
                bodyColor: Color(themeDataModel.primaryColorDark),
                displayColor: Color(themeDataModel.primaryColorDark),
              ),
            ));
          }
          break;
        default:
          {
            //statements;
          }
          break;
      }
    }
  } on PlatformException catch (exception) {
    print(exception);
  } catch (exception) {
    print('Unable to fetch remote config. Cached or default values will be used');
  }
  return remoteConfig;
}