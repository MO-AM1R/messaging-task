import 'package:messaging_task/components/channel_list_tile.dart';
import 'package:messaging_task/constants.dart';
import 'package:flutter/material.dart';

class SubscribedChannels extends StatefulWidget {
  const SubscribedChannels({super.key});

  @override
  State<SubscribedChannels> createState() => _SubscribedChannelsState();
}

class _SubscribedChannelsState extends State<SubscribedChannels> {
  void onUnSubscribe(int index) {
    user.channels.remove(user.channels[index]);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Subscribed Channel',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: user.channels.length,
                  itemBuilder: (context, index) {
                    return ChannelListTile(
                      channel: user.channels[index],
                      index: index,
                      onUnSubscribe: onUnSubscribe,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}