import 'package:brawl1/usuario.dart';

import '../testando.dart';
import '../models/review.dart';

mixin MockUser implements User {
  static final User items = 
    User(
        name: 'Maria',
        url:
            'https://cdn-images-1.medium.com/max/2000/1*vdJuSUKWl_SA9Lp-32ebnA.jpeg',
        brawlerFavorito: "Ash",
    );
}