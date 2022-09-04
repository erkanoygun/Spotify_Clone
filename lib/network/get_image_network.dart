import 'dart:math';

class RandomImageGenerator {
  final String BASE_URL =
      'https://cdn.lorem.space/images/album/.cache/350x350/';
  final String IMAGE_TYPE = '.jpg';
  final _random = Random();
  List imageNameList = [
    'i-wanna-thank-me_snoop-dogg',
    '21_adele',
    'oral-fixation_shakira',
    'caution_marriah-carey',
    'smile_katy-perry',
    'badlands_halsey',
    'take-care_drake',
    'my-beautiful-dark-twisted-fantasy_kanye-west',
    'astroworld_travis-scott'
  ];
  String randomImageUrl() {
    String imageUrl = BASE_URL +
        imageNameList[_random.nextInt(imageNameList.length)] +
        IMAGE_TYPE;
    return imageUrl;
  }
}
