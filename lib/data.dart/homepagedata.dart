class choices {
  static final product = [
    choice(
      name: 'Previous Year Question Papers',
      image: 'assets/images/pyq.png',
      dis: 'Wish for it and get it',
    ),
    choice(
      dis: 'Practice till you get it',
      image: 'assets/images/model_papers.png',
      name: 'Model Papers',
    ),
    choice(
      name: 'Upload Notes',
      image: 'assets/images/notes.png',
      dis: 'Sharing is caring',
    ),
    choice(
      name: 'Notes',
      image: 'assets/images/Upload_notes.png',
      dis: 'Professor.pdf',
    )
  ];
}

class choice {
  final String name;
  final String image;
  final String dis;

  choice({required this.name, required this.image, required this.dis})
      : assert(name != null),
        assert(image != null);
}
