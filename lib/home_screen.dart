import 'package:flutter/material.dart';
import 'package:flutter_firebase_notifications/notifications_services.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}



class _HomeScreenState extends State<HomeScreen> {
  NotificationServices notificationServices = NotificationServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    notificationServices.requestNotificationsPermissions();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
