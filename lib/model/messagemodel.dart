class ChatProfile {
  late String profilePicture;
  late String name;
  late String subTitle;
  late String date;
  late String path;

  ChatProfile(
      {required this.profilePicture,
      required this.name,
      required this.subTitle,
      required this.date,
      required this.path});
}

List<ChatProfile> chatProfiles = [
  ChatProfile(
      profilePicture: "assets/profile.png",
      name: 'HolyTea admin',
      subTitle: 'Halo!',
      date: '10/19/23',
      path: 'FirstPage()'),
  ChatProfile(
      profilePicture: "assets/profile.png",
      name: 'Sarwo edi',
      subTitle: 'Pesanan telah sampai tujuan',
      date: '10/19/23',
      path: 'Get.to()'),
  ChatProfile(
      profilePicture: "assets/profile.png",
      name: 'Pay',
      subTitle: 'Di tugu ya mas',
      date: '10/19/23',
      path: 'Get.to()'),
  ChatProfile(
      profilePicture: "assets/profile.png",
      name: 'Putro',
      subTitle: 'Terima kasih',
      date: '10/19/23',
      path: 'Get.to()'),
  ChatProfile(
      profilePicture: "assets/profile.png",
      name: 'Hovischosh',
      subTitle: 'eh iya maaf,,,',
      date: '10/19/23',
      path: 'Get.to()'),
];
