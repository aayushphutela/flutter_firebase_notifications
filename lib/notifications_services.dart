import 'package:firebase_messaging/firebase_messaging.dart';
class NotificationServices{
FirebaseMessaging messaging = FirebaseMessaging.instance;

void requestNotificationsPermissions()async{
  NotificationSettings settings= await messaging.requestPermission(
    alert: true,
    announcement: true,
    badge: true,
    carPlay: true,
    criticalAlert: true,
    provisional: true,
    sound: true,
  );
  if (settings.authorizationStatus == AuthorizationStatus.authorized){
    print('user granted permission');
  } else if (settings.authorizationStatus == AuthorizationStatus.authorized){
    print('provisional permission granted');
  }else('user denied permission');{

  }
}
}