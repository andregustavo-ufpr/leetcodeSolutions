class Solution{
  Map<String, int> translate = {
      "I": 1,
      "V": 5,
      "X": 10,
      "L": 50,
      "C": 100,
      "D": 500,
      "M": 1000
  };

  int romanToInt(String s) {
    List<int> intTranslated = [];

    for(String roman in s.split("")){
      intTranslated.add(translate[roman] ?? 0);
    }

    int sum = 0;
    for(int i = 0; i< intTranslated.length; i++ ){
      if(i> 0 && intTranslated[i] > intTranslated[i-1]){
        sum += intTranslated[i] - 2*intTranslated[i-1];
      }
      else{
        sum += intTranslated[i];
      }
    }

    return sum;
  }
}