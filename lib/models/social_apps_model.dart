class SocialAppsModel {
  final String name;
  final String imageUrl;
  final String balance;
  final String date;
  final String time;

  SocialAppsModel(
      {required this.name,
      required this.imageUrl,
      required this.balance,
      required this.date,
      required this.time});
}

List<SocialAppsModel> socialApps = [
  SocialAppsModel(
      name: 'Dribbble',
      imageUrl: 'assets/images/dribble.png',
      balance: '-\$102,24',
      date: '13 jan 22',
      time: '3:24 PM'),
  SocialAppsModel(
      name: 'Amazone Shopping',
      imageUrl: 'assets/images/amazone.png',
      balance: '-\$32.24',
      date: '13 jan 22',
      time: '3:24 PM'),
  SocialAppsModel(
      name: 'YouTube Tv',
      imageUrl: 'assets/images/youtube.png',
      balance: '-\$20',
      date: '13 jan 22',
      time: '3:24 PM'),
  SocialAppsModel(
      name: 'Paypal',
      imageUrl: 'assets/images/paypal.png',
      balance: '-\$80',
      date: '13 jan 22',
      time: '3:24 PM'),
  SocialAppsModel(
      name: 'Dribbble',
      imageUrl: 'assets/images/dribble.png',
      balance: '-\$102,24',
      date: '13 jan 22',
      time: '3:24 PM'),
  SocialAppsModel(
      name: 'Amazone Shopping',
      imageUrl: 'assets/images/amazone.png',
      balance: '-\$32.24',
      date: '13 jan 22',
      time: '3:24 PM'),
  SocialAppsModel(
      name: 'YouTube Tv',
      imageUrl: 'assets/images/youtube.png',
      balance: '-\$20',
      date: '13 jan 22',
      time: '3:24 PM'),
  SocialAppsModel(
      name: 'Paypal',
      imageUrl: 'assets/images/paypal.png',
      balance: '-\$80',
      date: '13 jan 22',
      time: '3:24 PM'),
];
