class Solution {
  int maxNumberOfBalloons(String text) {
    final counter = <String, int>{};

    for(String letter in text.split("")){
      counter[letter] = (counter[letter] ?? 0) + 1;
    }

    int ballonCounter = 0;
    bool stop = false;

    while(!stop){
      for(String letter in ["b","a","l","l","o","o","n"]){
        if(counter[letter] == null){
          stop = true;
          break;
        }
        else if(counter[letter] == 1){
          counter.remove(letter);
        }
        else{
          counter[letter] = (counter[letter] ?? 0) - 1;
        }
      }
      if(!stop){
        ballonCounter += 1;
      }
    }

    return ballonCounter;
  }
}