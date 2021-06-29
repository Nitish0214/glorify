//!This file is used for Shared preferences and its methods only.

import 'package:glorify/helpers/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String LANGUAGE_CODE = 'language_code';
const String SHOW_WELCOME_SCREEN = 'show_welcome_screen';
const String SHOW_CHOOSE_LANGUAGE = 'show_choose_language';
const String SHOW_IS_RESIDENT = "show_is_resident";
const String SHOW_CHOOSE_SOCIETY = 'show_choose_society';
const String SHOW_LOGIN_SCREEN = 'show_login_screen';
const String SHOW_DASHBOARD = 'show_dashboard';
const String PROFILE_PRIVACY_STATUS = "profile_privacy_status";
const CACHE_IS_DEVICE_INFO_SAVED = 'IsDeviceInfoSaved';
const CACHE_AUTH_DETAILS = "authDetails";
const CACHE_LOGIN_DATA = "loginData";
const CACHE_USER_DATA = "userInfo";
const CACHE_SOCIETY_NAME = "societyName";
const CACHE_PROPERTY_TYPE = "propertyType";
const CACHE_CONTACT_NUMBER = "phoneNumber";
const CACHE_USER_ID = "userId";
const CACHE_RESIDENT_NAME = "residentName";
const CACHE_RESIDENT_EMAIL = "residentEmail";
const CACHE_LANGUAGE = "language";
const CACHE_BASEURL = "baseUrl";
const CACHE_ADRESPONSE = "adresponse";
const CACHE_SELLER = "seller_signup_id";
const CACHE_RESIDENT = "is_resident";
const CACHE_EXISTING_USER = "is_existing_user";
const CACHE_CITY = "city";
const CACHE_AREA = "area";
const CACHE_IS_SOCIETY = "isSociety";
const CACHE_IS_HOSTEL = "isHostel";

void setStringIntoCache(String key, String value) async {
  SharedPreferences _sharedPreferences = await SharedPreferences.getInstance();
  _sharedPreferences.setString(key, value);
}

void setListIntoCache(String key, List<String> value) async {
  SharedPreferences _sharedPreferences = await SharedPreferences.getInstance();
  _sharedPreferences.setStringList(key, value);
}

void removeStringFromCache(String key) async {
  SharedPreferences _sharedPreferences = await SharedPreferences.getInstance();
  await _sharedPreferences.remove(key);
}

void setBooleanIntoCache(String key, bool value) async {
  SharedPreferences _sharedPreferences = await SharedPreferences.getInstance();
  await _sharedPreferences.setBool(key, value);
}

void setIntIntoCache(String key, int value) async {
  SharedPreferences _sharedPreferences = await SharedPreferences.getInstance();
  await _sharedPreferences.setInt(key, value);
}

void setSocietyUrlIntoCache(String societyUrl) async {
  SharedPreferences _sharedPreferences = await SharedPreferences.getInstance();
  await _sharedPreferences.setString('baseUrl', societyUrl);
}

Future<String> getStringFromCache(String key) async {
  SharedPreferences _sharedPreferences = await SharedPreferences.getInstance();
  return _sharedPreferences.getString(key) ?? '';
}

Future<List<String>> getListFromCache(String key) async {
  SharedPreferences _sharedPreferences = await SharedPreferences.getInstance();
  return _sharedPreferences.getStringList(key);
}

Future<int> getIntFromCache(String key) async {
  SharedPreferences _sharedPreferences = await SharedPreferences.getInstance();
  return _sharedPreferences.getInt(key) ?? 0;
}

Future<bool> getBooleanFromCache(String key) async {
  SharedPreferences _sharedPreferences = await SharedPreferences.getInstance();
  return _sharedPreferences.getBool(key) ?? true;
}

Future<String> getSocietyUrl() async {
  SharedPreferences _sharedPreferences = await SharedPreferences.getInstance();
  return _sharedPreferences.getString('baseUrl');
}

Future<LanguageChoosen> getChoosenLanguage() async {
  SharedPreferences _sharedPreferences = await SharedPreferences.getInstance();
  switch (_sharedPreferences.get(CACHE_LANGUAGE)) {
    case HINDI:
      return LanguageChoosen.HINDI;
    case MARATHI:
      return LanguageChoosen.MARATHI;
    default:
      return LanguageChoosen.ENGLISH;
  }
}

void setLanguageIntoCache(LanguageChoosen languageChoosen) async {
  SharedPreferences _sharedPreferences = await SharedPreferences.getInstance();
  await _sharedPreferences.setString(
      CACHE_LANGUAGE, languageChoosen.toString());
}
