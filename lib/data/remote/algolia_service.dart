import 'package:algoliasearch/algoliasearch_lite.dart';

class AlgoliaService {
  late final SearchClient client;

  late final String packsIndex;
  late final List<String> packsFacets;

  late final String flashcardsIndex;
  late final List<String> flashcardsFacets;

  AlgoliaService({required bool isDev}) {
    packsIndex = isDev ? "dev_PACKS" : "prod_PACKS";
    packsFacets = ['tags'];

    flashcardsIndex = isDev ? "dev_FLASHCARDS" : "prod_FLASHCARDS";
    flashcardsFacets = ['tags'];

    // the api key is just search api kay, it only has search permissions
    client = SearchClient(
      appId: "ZDAF7THAOU",
      apiKey: "de4bb3c20e7b105e7121a9219bec5cf5",
    );
  }

  void dispose() {
    client.dispose();
  }
}

extension TagStringListX on List<String> {
  /// It gives you algolia facet query where it combines every element of the list with the AND logic operator
  ///
  /// You just give it the name of the facet in the algolia index.
  List<List<String>> buildTagsAndQuery(String facetName) {
    // facetFilters can be list of lists [[tag1, tag2], [category1, category2]];
    // inner lists are combined with OR and outer with AND operator
    // resulting with this ((tag1 OR tag2) AND (category1 OR category2))
    // here we want to combine everything with AND so each item in the list
    // needs to be a list of 1 item resulting in [[tag1], [tag2], [tag3]].
    // to be (tag1 AND tag2 AND tag3)
    return map((id) => ['$facetName:$id']).toList();
  }
}
