import 'package:messaging_task/models/channel.dart';
import 'package:messaging_task/models/user.dart';

const List<Channel> channelList = [
  Channel(name: 'Tech News', description: 'Latest updates in technology.', imageUrl: 'https://img.freepik.com/free-vector/technology-background-with-earth-circuit-diagram_1017-19385.jpg?t=st=1730549944~exp=1730553544~hmac=3f3e1b74e08ead3c7b05821978cfa977f3a7da55e2b9a172d1d1f5937cbb1469&w=1380'),
  Channel(name: 'Sports Center', description: 'Daily sports news and events.', imageUrl: 'https://img.freepik.com/premium-vector/detailed-sports-center-esport-sport-logo-template_173356-99.jpg?w=826'),
  Channel(name: 'Travel Diaries', description: 'Explore amazing travel destinations.', imageUrl: 'https://i0.wp.com/travellingbuzz.com/wp-content/uploads/2017/02/travel-diaries-logo-home.png?ssl=1'),
  Channel(name: 'Cooking Channel', description: 'Delicious recipes and cooking tips.', imageUrl: 'https://img.freepik.com/premium-vector/cooking-logo-design_636083-140.jpg?w=996'),
  Channel(name: 'Fitness Zone', description: 'Health and fitness routines.', imageUrl: 'https://www.shutterstock.com/shutterstock/photos/1678983400/display_1500/stock-vector-fitness-center-logo-sport-and-fitness-logo-design-gym-logo-icon-design-vector-stock-fitness-1678983400.jpg'),
  Channel(name: 'Gaming Arena', description: 'Latest in gaming and eSports.', imageUrl: 'https://mir-s3-cdn-cf.behance.net/project_modules/1400/d19e2987201643.5db099914b2de.jpg'),
  Channel(name: 'Music World', description: 'Top charts and new music releases.', imageUrl: 'https://as2.ftcdn.net/v2/jpg/05/98/39/69/1000_F_598396991_nnR6yUZBoU6Ze8cqhmtNoxI6JL073fkR.jpg'),
  Channel(name: 'Science Today', description: 'Updates on scientific discoveries.', imageUrl: 'https://i0.wp.com/www.sciencenews.org/wp-content/uploads/2024/10/100524_cover_680.jpg?resize=445%2C575&ssl=1'),
  Channel(name: 'History Buffs', description: 'Learn fascinating historical facts.', imageUrl: 'https://m.media-amazon.com/images/M/MV5BODBmODg4NTgtY2QxZC00NzNiLWFkYWYtMDJjYWNjMGExZjgyXkEyXkFqcGc@._V1_.jpg')
];

final List<User> userList = [
  User('Alice'),
  User.withChannels(
      name: 'Bob',
      channels: [
        channelList[0],
        channelList[1],
        channelList[2],
        channelList[8],
      ]
  ),
  User('Charlie'),
  User.withChannels(
      name: 'Diana',
      channels: [
        channelList[5],
        channelList[3],
        channelList[4],
      ]
  ),
  User('Eve'),
  User.withChannels(
      name: 'Frank',
      channels: [
        channelList[8],
        channelList[7],
        channelList[6],
        channelList[1],
      ]
  ),
];

final user = userList[1];