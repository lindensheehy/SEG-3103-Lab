public class Twitter {

  public String loadTweet()
  {

    /*
     * I will not be waiting 4 seconds every time to test. Thanks though!
     */

    // try {
    //   Thread.sleep(4000);
    // } catch (InterruptedException e) {}

    double r =  Math.random();
    if (r <= 0.45) {
      return "I am tweet that likes to talk about @me";
    } else if (r <= 0.9) {
      return "Hello to @you";
    } else {
      return null;
    }
  }

  public boolean isMentionned(String name) {
    String tweet = loadTweet();
    boolean option1 = tweet.contains("@" + name + " ");
    boolean option2 = tweet.indexOf('@') + name.length() == tweet.length() - 1;
    return option1 || option2;
  }

}