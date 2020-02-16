import 'package:travel_bug/logics/base_bloc.dart';

class CameraBloc extends BaseBloc {
  List<String> get categories {
    List<String> cats = [];
    cameraSettings.forEach((c) {
      if (!cats.contains(c.category)) cats.add(c.category);
    });
    return cats;
  }

  List<CameraSetting> getSettingsForCategory(String category) {
    return cameraSettings.where((s) => s.category == category).toList();
  }
}

class CameraSetting {
  final String path;
  final bool get;
  final bool post;
  final bool put;
  final bool delete;

  static const String baseUrl = 'http://192.168.1.2:8080/ccapi/ver100/';

  const CameraSetting({this.path, this.get, this.post, this.put, this.delete});

  String get url => baseUrl + path;

  String get category {
    return path.split('/')[0];
  }
}

const List<CameraSetting> cameraSettings = [
  const CameraSetting(
      path: "deviceinformation",
      get: true,
      post: false,
      put: false,
      delete: false),
  const CameraSetting(
      path: "devicestatus/storage",
      get: true,
      post: false,
      put: false,
      delete: false),
  const CameraSetting(
      path: "devicestatus/battery",
      get: true,
      post: false,
      put: false,
      delete: false),
  const CameraSetting(
      path: "devicestatus/temperature",
      get: true,
      post: false,
      put: false,
      delete: false),
  const CameraSetting(
      path: "functions/registeredname/copyright",
      get: true,
      post: false,
      put: true,
      delete: true),
  const CameraSetting(
      path: "functions/registeredname/author",
      get: true,
      post: false,
      put: true,
      delete: true),
  const CameraSetting(
      path: "functions/registeredname/ownername",
      get: true,
      post: false,
      put: true,
      delete: true),
  const CameraSetting(
      path: "functions/registeredname/nickname",
      get: true,
      post: false,
      put: true,
      delete: true),
  const CameraSetting(
      path: "functions/datetime",
      get: true,
      post: false,
      put: true,
      delete: false),
  const CameraSetting(
      path: "functions/cardformat",
      get: false,
      post: true,
      put: false,
      delete: false),
  const CameraSetting(
      path: "functions/beep", get: true, post: false, put: true, delete: false),
  const CameraSetting(
      path: "functions/displayoff",
      get: true,
      post: false,
      put: true,
      delete: false),
  const CameraSetting(
      path: "functions/autopoweroff",
      get: true,
      post: false,
      put: true,
      delete: false),
  const CameraSetting(
      path: "functions/wificonnection",
      get: false,
      post: true,
      put: false,
      delete: false),
  const CameraSetting(
      path: "functions/wifisetting",
      get: true,
      post: false,
      put: false,
      delete: false),
  const CameraSetting(
      path: "functions/wifisetting/set1",
      get: true,
      post: false,
      put: true,
      delete: true),
  const CameraSetting(
      path: "functions/wifisetting/set2",
      get: true,
      post: false,
      put: true,
      delete: true),
  const CameraSetting(
      path: "functions/wifisetting/set3",
      get: true,
      post: false,
      put: true,
      delete: true),
  const CameraSetting(
      path: "contents", get: true, post: true, put: true, delete: true),
  const CameraSetting(
      path: "shooting/control/shutterbutton",
      get: false,
      post: true,
      put: false,
      delete: false),
  const CameraSetting(
      path: "shooting/control/shutterbutton/manual",
      get: false,
      post: true,
      put: false,
      delete: false),
  const CameraSetting(
      path: "shooting/control/moviemode",
      get: true,
      post: true,
      put: false,
      delete: false),
  const CameraSetting(
      path: "shooting/control/recbutton",
      get: false,
      post: true,
      put: false,
      delete: false),
  const CameraSetting(
      path: "shooting/control/zoom",
      get: true,
      post: true,
      put: false,
      delete: false),
  const CameraSetting(
      path: "shooting/control/af",
      get: false,
      post: true,
      put: false,
      delete: false),
  const CameraSetting(
      path: "shooting/settings",
      get: true,
      post: false,
      put: false,
      delete: false),
  const CameraSetting(
      path: "shooting/settings/shootingmodedial",
      get: true,
      post: false,
      put: false,
      delete: false),
  const CameraSetting(
      path: "shooting/settings/av",
      get: true,
      post: false,
      put: true,
      delete: false),
  const CameraSetting(
      path: "shooting/settings/tv",
      get: true,
      post: false,
      put: true,
      delete: false),
  const CameraSetting(
      path: "shooting/settings/iso",
      get: true,
      post: false,
      put: true,
      delete: false),
  const CameraSetting(
      path: "shooting/settings/exposure",
      get: true,
      post: false,
      put: true,
      delete: false),
  const CameraSetting(
      path: "shooting/settings/wb",
      get: true,
      post: false,
      put: true,
      delete: false),
  const CameraSetting(
      path: "shooting/settings/afoperation",
      get: true,
      post: false,
      put: false,
      delete: false),
  const CameraSetting(
      path: "shooting/settings/afmethod",
      get: true,
      post: false,
      put: true,
      delete: false),
  const CameraSetting(
      path: "shooting/settings/stillimagequality",
      get: true,
      post: false,
      put: true,
      delete: false),
  const CameraSetting(
      path: "shooting/settings/stillimageaspectratio",
      get: true,
      post: false,
      put: true,
      delete: false),
  const CameraSetting(
      path: "shooting/settings/flash",
      get: true,
      post: false,
      put: true,
      delete: false),
  const CameraSetting(
      path: "shooting/settings/metering",
      get: true,
      post: false,
      put: true,
      delete: false),
  const CameraSetting(
      path: "shooting/settings/drive",
      get: true,
      post: false,
      put: true,
      delete: false),
  const CameraSetting(
      path: "shooting/settings/aeb",
      get: true,
      post: false,
      put: true,
      delete: false),
  const CameraSetting(
      path: "shooting/settings/wbshift",
      get: true,
      post: false,
      put: true,
      delete: false),
  const CameraSetting(
      path: "shooting/settings/wbbracket",
      get: true,
      post: false,
      put: true,
      delete: false),
  const CameraSetting(
      path: "shooting/settings/moviequality",
      get: true,
      post: false,
      put: true,
      delete: false),
  const CameraSetting(
      path: "shooting/settings/soundrecording",
      get: true,
      post: false,
      put: true,
      delete: false),
  const CameraSetting(
      path: "shooting/settings/soundrecording/level",
      get: true,
      post: false,
      put: true,
      delete: false),
  const CameraSetting(
      path: "shooting/settings/soundrecording/windfilter",
      get: true,
      post: false,
      put: true,
      delete: false),
  const CameraSetting(
      path: "shooting/settings/soundrecording/attenuator",
      get: true,
      post: false,
      put: true,
      delete: false),
  const CameraSetting(
      path: "shooting/information/recordable",
      get: true,
      post: false,
      put: false,
      delete: false),
  const CameraSetting(
      path: "shooting/liveview",
      get: false,
      post: true,
      put: false,
      delete: false),
  const CameraSetting(
      path: "shooting/liveview/flip",
      get: true,
      post: false,
      put: false,
      delete: false),
  const CameraSetting(
      path: "shooting/liveview/flipdetail",
      get: true,
      post: false,
      put: false,
      delete: false),
  const CameraSetting(
      path: "shooting/liveview/scroll",
      get: true,
      post: false,
      put: false,
      delete: true),
  const CameraSetting(
      path: "shooting/liveview/scrolldetail",
      get: true,
      post: false,
      put: false,
      delete: true),
  const CameraSetting(
      path: "shooting/liveview/rtp",
      get: true,
      post: true,
      put: false,
      delete: false),
  const CameraSetting(
      path: "shooting/liveview/rtpsessiondesc",
      get: true,
      post: false,
      put: false,
      delete: false),
  const CameraSetting(
      path: "shooting/liveview/angleinformation",
      get: false,
      post: true,
      put: false,
      delete: false),
  const CameraSetting(
      path: "event/polling", get: true, post: false, put: false, delete: true),
  const CameraSetting(
      path: "event/monitoring",
      get: true,
      post: false,
      put: false,
      delete: true)
];