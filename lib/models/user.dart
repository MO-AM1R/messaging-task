import 'package:messaging_task/models/channel.dart';

class User{
  final String name;
  late List<Channel> channels;

  User(this.name){
    channels = [];
  }
  User.withChannels({required this.name, required this.channels});
}