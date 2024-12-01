import 'package:messaging_task/components/channel_card.dart';
import 'package:messaging_task/constants.dart';
import 'package:flutter/material.dart';

class ChannelsPage extends StatefulWidget {
  const ChannelsPage({super.key});

  @override
  State<ChannelsPage> createState() => _ChannelsPageState();
}

class _ChannelsPageState extends State<ChannelsPage> {
  void onSubscribeChange(bool value, int index) {
    if (value) {
      user.channels.add(channelList[index]);
    } else {
      user.channels.remove(channelList[index]);
    }

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
                'Channels',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
              ),
              const SizedBox(height: 10,),
              Expanded(
                child: ListView.builder(
                  itemCount: channelList.length,
                  itemBuilder: (context, index) {
                    return ChannelCard(
                      channel: channelList[index],
                      index: index,
                      isSubscribed: user.channels.contains(
                        channelList[index],
                      ),
                      onSubscribeChange: onSubscribeChange,
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