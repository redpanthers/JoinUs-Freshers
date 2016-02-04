# Questions

1. Do you have your own personal computer?
yes
2. Describe your present development enviornment (We are talking abour your dev machine, like OS, RAM, Screen Resolution)
Sony VAIO, WINDOWS 8, 2GB RAM, i3 Processor
3. Describe your ideal development enviornment

**Social links**

1. Link to your github account

2. Link to your stackoverflow account

3. Link to your Blog/Tumblr/Personal Website

4. Link to you Linkedin Account

**All the questions below are related to your development enviornment**

4. Write the steps you need to do to find a `string` from a group of files
First open the file
the string we want to search  sto re it in pattern as case insensitive
then find match for that word in entire document using pattern matcher
if found display the positions
do these steps for each line
5. Which all programming languages are installed in your system.
java, html, php, mysql 
6. How long will it take you to install or re-setup your development enviornment from scratch? Have you done any automation on it
minimum 2 hrs
**Programming Languages**

7. The languages in which you have written over 1000 lines of code
java android
8. The languages you learned which were not part of your course.
php
9. Programming question 1 (You may use a programming language of your choice, the code and instruction on how to run it should be included in your pull request)

  * Create a file with 1000 lines (Place random sentence and text in those lines using character 'a'..'z', 'A'..'Z'). Each line should have a sentence. Make sure everything is random, the file should have minimum of 5000 words.

  * Create a program that takes the file you made above as input, and then extract words from that file and place them into saperate files. The words that start with A, should be placed in a file called 'word_a.txt', those with B in 'word_b.txt'. (The extraction is case-insentive)
  * 
  
  package test;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class sort {
public static class MyComparator implements Comparator<String>{
    @Override
    public int compare(String o1, String o2) {  
      if (o1.length() > o2.length()) {
         return 1;
      } else if (o1.length() < o2.length()) {
         return -1;
      }
      return o1.compareTo(o2);
    }
}
public static void main(String[] args) throws Exception {

    String inputFile = "D:/test.txt";
    String outputFile = "sort.txt";

    FileReader fileReader = new FileReader(inputFile);
    BufferedReader bufferedReader = new BufferedReader(fileReader);
    String inputLine;
    List<String> lineList = new ArrayList<String>();
    while ((inputLine = bufferedReader.readLine()) != null) {
        lineList.add(inputLine);
    }
    fileReader.close();

    Collections.sort(lineList,String.CASE_INSENSITIVE_ORDER);

    FileWriter fileWriter = new FileWriter(outputFile);
    PrintWriter out = new PrintWriter(fileWriter);
    for (String outputLine : lineList) {
        out.println(outputLine);
    }   

//    //Collections.sort(lineList, new MyComparator());
//
//    FileWriter Fw = new FileWriter(outputFile);
//    PrintWriter pw = new PrintWriter(fileWriter);
//    for (String outputLine : lineList) {
//        out.println(outputLine);
//    }       
    out.flush();
    out.close();
    fileWriter.close();

}
}
  
  The program writes words of files test in file sort as sorted order

10. Programming question 2

  * Create a comand line twitter client, that lets you send tweet to your twitter profile form the command line.
  * The code has to be object oriented
