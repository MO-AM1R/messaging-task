import 'package:messaging_task/models/channel.dart';
import 'package:flutter/material.dart';

class ChannelCard extends StatelessWidget {
  final Function(bool, int) onSubscribeChange;
  final bool isSubscribed;
  final Channel channel;
  final int index;

  const ChannelCard({
    super.key,
    required this.channel,
    required this.isSubscribed,
    required this.index,
    required this.onSubscribeChange,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 10,
        color: Colors.white,
        child: Container(
          width: 350,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                elevation: 10,
                shape: const CircleBorder(),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                    channel.imageUrl,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                channel.name,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                channel.description,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500,
                    ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Switch(
                  activeColor: Colors.white,
                  activeTrackColor: Colors.amber,
                  inactiveTrackColor: Colors.white,
                  value: isSubscribed,
                  onChanged: (value) {
                    onSubscribeChange(value, index);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
