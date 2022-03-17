class groupchoices {
  static final select = [
    groupchoice(
      name: 'First Group name',
      image: 'assets/images/groupicon.png',
    ),
    groupchoice(
      name: 'Second Group name',
      image: 'assets/images/groupicon.png',
    ),
    groupchoice(
      name: 'Third Group name',
      image: 'assets/images/groupicon.png',
    ),
    groupchoice(
      name: 'Fourth Group name',
      image: 'assets/images/groupicon.png',
    ),
  ];
}

class groupchoice {
  final String name;
  final String image;
  groupchoice({required this.name, required this.image})
      : assert(name != null),
        assert(image != null);
}
