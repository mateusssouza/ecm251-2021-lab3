import '../models/location.dart';
import '../models/location_fact.dart';

mixin MockLocation implements Location {
  static final List<Location> items = [
    Location(
        name: 'Arashiyama Bamboo Grove',
        url:
            'https://cdn-images-1.medium.com/max/2000/1*vdJuSUKWl_SA9Lp-32ebnA.jpeg',
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
                  'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm'),
          LocationFact(
              title: 'How to Get There',
              text:
                  'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.')
        ]),
    Location(
        name: 'Mount Fuji',
        url:
            'https://img3.goodfon.ru/original/1920x1080/a/a5/fuji-peizazh-iaponiia-gora-tsvety-nebo.jpg',
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
                  'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm'),
          LocationFact(
              title: 'How to Get There',
              text:
                  'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.')
        ]),
    Location(
        name: 'Kiyomizu-dera',
        url:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Kiyomizu-dera_in_Kyoto-r.jpg/800px-Kiyomizu-dera_in_Kyoto-r.jpg',
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
                  'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm'),
          LocationFact(
              title: 'How to Get There',
              text:
                  'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.')
        ]),
    Location(
        name: 'Kinkaku-ji',
        url:
            'https://th.bing.com/th/id/R.a806af4f8ab0619510df993598388ddf?rik=Ef26xEw5Nt9EQA&riu=http%3a%2f%2fstatic.thousandwonders.net%2fKinkaku-ji.original.10969.jpg&ehk=7DHBuRGJ5lBB09d9DKUmhmP%2fCm9rjn7p1a222ab%2btVU%3d&risl=&pid=ImgRaw&r=0',
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
                  'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm'),
          LocationFact(
              title: 'How to Get There',
              text:
                  'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.')
        ]),
    Location(
        name: 'Odaiba',
        url: 'https://www.yhunter.ru/wp-content/uploads/2015/06/DSC1876.jpg',
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
                  'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm'),
          LocationFact(
              title: 'How to Get There',
              text:
                  'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.')
        ]),
  ];
  static Location fetchAny() {
    return items[0];
  }

  static List<Location> fetchAll() {
    return items;
  }
}