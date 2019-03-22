class ItemModel {
  int _page;
  int _total_results;
  int _total_pages;
  List<_Result> _results = [];

  ItemModel.fromJson(Map<String, dynamic> json) {
    print(json['results'].length);
    _page = json['page'];
    _total_results = json['total_results'];
    List<_Result> temp = [];
    for (int i = 0; i < json['results'].length; i++) {
      _Result result = _Result(json['results'][i]);
      temp.add(result);
    }
    _results = temp;
  }

  List<_Result> get result {
    return _results;
  }

  int get total_pages {
    return _total_pages;
  }

  int get total_results {
    return _total_results;
  }

  int get page {
    return _page;
  }
}

class _Result {
  int _vote_count;
  int _id;
  bool _video;
  var _vote_average;
  String _title;
  double _popularity;
  String _poster_path;
  String _original_language;
  String _original_title;
  List<int> _genre_ids = [];
  String _backdrop_path;
  bool _adult;
  String _overview;
  String _release_date;

  _Result(result) {
    _vote_count = result['vote_count'];
    _id = result['id'];
    _video = result['video'];
    _vote_average = result['vote_average'];
    _title = result['title'];
    _popularity = result['popularity'];
    _poster_path = result['poster_path'];
    _original_language = result['original_language'];
    _original_title = result['original_title'];
    for (int i = 0; i < result['genre_ids'].length; i++) {
      _genre_ids.add(result['genre_ids'][i]);
    }
    _backdrop_path = result['backdrop_path'];
    _adult = result['adult'];
    _overview = result['overview'];
    _release_date = result['release_date'];
  }

  String get release_date {
    return _release_date;
  }

  String get overview {
    return _overview;
  }

  bool get adult {
    return _adult;
  }

  String get backdrop_path {
    return _backdrop_path;
  }

  String get original_title {
    return _original_title;
  }

  String get original_language {
    return _original_language;
  }

  String get poster_path {
    return _poster_path;
  }

  double get popularity {
    return _popularity;
  }

  String get title {
    return _title;
  }

  double get vote_average {
    return vote_average;
  }

  bool get video {
    return _video;
  }

  int get id {
    return _id;
  }

  int get vote_count {
    return _vote_count;
  }


}
