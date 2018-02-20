public void setup() 
{
  String[] lines = loadStrings("words.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
        //not used
}
public int findFirstVowel(String word){
  for (int i = 0; i < word.length(); i ++) {
    if (("a".equals(word.substring(i, i+1)))||
    ("e".equals(word.substring(i, i+1)))||
    ("i".equals(word.substring(i, i+1)))||
    ("o".equals(word.substring(i, i+1)))||
    ("u".equals(word.substring(i, i+1)))) {
     return i; 
    }
    
  }
  return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  else if (findFirstVowel(sWord) == 0)
  {
    return sWord + "way";
  }
  else if (findFirstVowel(sWord) == 1 && sWord.substring(0,1).equals("q") && sWord.substring(1,2).equals("u")) 
  {
    return sWord.substring(2)+"quay";
  }
  else {
    return sWord.substring(findFirstVowel(sWord))+sWord.substring(0,findFirstVowel(sWord))+"ay";
  }
}