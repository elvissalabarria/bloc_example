class FilmsResults {
  late int count;
  dynamic next;
  dynamic previous;
  late List<Results> results;

  FilmsResults({required this.count, this.next, this.previous, required this.results});

  FilmsResults.fromJson(Map<String, dynamic> json) {
    if (json["count"] is int) {
      count = json["count"];
    }
    next = json["next"];
    previous = json["previous"];
    if (json["results"] is List) {
      results = (json["results"] == null
          ? null
          : (json["results"] as List).map((e) => Results.fromJson(e)).toList())!;
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["count"] = count;
    data["next"] = next;
    data["previous"] = previous;
    data["results"] = results.map((e) => e.toJson()).toList();
    return data;
  }
}

class Results {
  late String title;
  late int episodeId;
  late String openingCrawl;
  late String director;
  late String producer;
  late String releaseDate;
  late List<String> characters;
  late List<String> planets;
  late List<String> starships;
  late List<String> vehicles;
  late List<String> species;
  late String created;
  late String edited;
  late String url;

  Results(
      {required this.title,
      required this.episodeId,
      required this.openingCrawl,
      required this.director,
      required this.producer,
      required this.releaseDate,
      required this.characters,
      required this.planets,
      required this.starships,
      required this.vehicles,
      required this.species,
      required this.created,
      required this.edited,
      required this.url});

  Results.fromJson(Map<String, dynamic> json) {
    if (json["title"] is String) {
      title = json["title"];
    }
    if (json["episode_id"] is int) {
      episodeId = json["episode_id"];
    }
    if (json["opening_crawl"] is String) {
      openingCrawl = json["opening_crawl"];
    }
    if (json["director"] is String) {
      director = json["director"];
    }
    if (json["producer"] is String) {
      producer = json["producer"];
    }
    if (json["release_date"] is String) {
      releaseDate = json["release_date"];
    }
    if (json["characters"] is List) {
      characters = (json["characters"] == null ? null : List<String>.from(json["characters"]))!;
    }
    if (json["planets"] is List) {
      planets = (json["planets"] == null ? null : List<String>.from(json["planets"]))!;
    }
    if (json["starships"] is List) {
      starships = (json["starships"] == null ? null : List<String>.from(json["starships"]))!;
    }
    if (json["vehicles"] is List) {
      vehicles = (json["vehicles"] == null ? null : List<String>.from(json["vehicles"]))!;
    }
    if (json["species"] is List) {
      species = (json["species"] == null ? null : List<String>.from(json["species"]))!;
    }
    if (json["created"] is String) {
      created = json["created"];
    }
    if (json["edited"] is String) {
      edited = json["edited"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["title"] = title;
    data["episode_id"] = episodeId;
    data["opening_crawl"] = openingCrawl;
    data["director"] = director;
    data["producer"] = producer;
    data["release_date"] = releaseDate;
    data["characters"] = characters;
    data["planets"] = planets;
    data["starships"] = starships;
    data["vehicles"] = vehicles;
    data["species"] = species;
    data["created"] = created;
    data["edited"] = edited;
    data["url"] = url;
    return data;
  }
}
