void main() {
  Map<String, dynamic> filmStarWars = {"title": "Star Wars", "year": 1977};
  Map<String, dynamic> filmEmpire = {
    "title": "The Empire Strikes Back",
    "year": 1980
  };
  Map<String, dynamic> filmJedi = {
    "title": "The Return of the Jedi",
    "year": 1983
  };

  List listFilms = [filmStarWars, filmEmpire, filmJedi];

  Map<String, dynamic> currentFilm = listFilms[0];

  print(currentFilm);
  print(currentFilm['title']);
}
