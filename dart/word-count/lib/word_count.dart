class WordCount {
  Map<String, int> countWords(String inputPhrase) {
    var phraseAsList = cleanPhrase(inputPhrase);

    Map<String, int> wordCounterMap = {};
    phraseAsList.forEach((element) {
      if (!wordCounterMap.containsKey(element)) {
        wordCounterMap[element] = 1;
      } else
        wordCounterMap[element] = wordCounterMap[element]! + 1;
    });

    return wordCounterMap;
  }

  //turns inout string into an all lowercase, non-punctuated list of strings
  List<String> cleanPhrase(String inputPhrase) {
    var stripSymbols = new RegExp(r"[^\w\s',]");
    var stripQuotes = new RegExp(r"^\'|\'$");
    var whitespaceComma = new RegExp(r"[\s,]");

    inputPhrase = inputPhrase.toLowerCase(); //to lowercase
    inputPhrase =
        inputPhrase.replaceAll(stripSymbols, ''); // strip symbols & puncutation

    List<String> phraseAsList =
        inputPhrase.split(whitespaceComma); //split into list

    phraseAsList
        .removeWhere((element) => element == ''); //remove empty indicies
    for (int i = 0; i < phraseAsList.length; i++) {
      //remove quotation marks
      phraseAsList[i] = phraseAsList[i].replaceAll(stripQuotes, '');
    }
    return phraseAsList;
  }
}
