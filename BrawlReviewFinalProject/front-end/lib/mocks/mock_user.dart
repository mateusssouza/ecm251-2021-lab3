import 'package:brawl1/user.dart';

import '../main_screen.dart';
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