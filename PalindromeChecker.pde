public void setup() {
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) {
    if(palindrome(lines[i])==true) {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word) {
  //System.out.println("--palindrome word before sanitize: " + word);
  word = sanitizeString(word);
  //System.out.println("--palindrome word after sanitize: " + word);
 
  for (int i = 0; i < Math.floor(word.length()/2); i++) {
    char initChar = word.charAt(i);
    char finalChar = word.charAt(word.length() - 1 - i);

    if (initChar != finalChar) {
      return false;
    }
  }
  
  return true;
}

public String reverse(String str) {
    String sNew = new String();

    return sNew;
}

public String sanitizeString(String word) {
  word = word.replace(" ", "");
  word = word.replace(".", "");
  word = word.replace(",", "");
  word = word.replace("!", "");
  word = word.replace("'", "");
  word = word.toLowerCase();
  //System.out.println("--*sanitize String Word: " + word);
  return word;
}


