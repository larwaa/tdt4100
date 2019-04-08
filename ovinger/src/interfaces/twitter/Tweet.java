package interfaces.twitter;

public class Tweet {
	
	private String text;
	private TwitterAccount owner;
	private Tweet originalTweet;
	private int retweets;
	
	public Tweet(TwitterAccount twitterAccount, String text) {
		this.text = text;
		this.owner = twitterAccount;
		this.originalTweet = this;
		twitterAccount.tweet(this);
	}
	
	public Tweet(TwitterAccount twitterAccount, Tweet tweet) {
		if (tweet.getOwner() == twitterAccount) {
			throw new IllegalStateException();
		}
		
		this.originalTweet = tweet.getOriginalTweet();
		
		this.text = tweet.getText();
		this.owner = twitterAccount;
		
		if (this.getOriginalTweet() != null) {
			this.getOriginalTweet().iterateRetweet();
		}
		twitterAccount.tweet(this);
	}
	
	private void iterateRetweet() {
		this.retweets++;
	}

	public String getText() {
		return this.text;
	}
	
	public TwitterAccount getOwner() {
		return this.owner;
	}
	
	public Tweet getOriginalTweet() {
		return originalTweet;
	}
	
	public int getRetweetCount() {
		return this.retweets;
	}
	
	@Override
	public String toString() {
		if (this.originalTweet == null) {
			return String.format("\n********\nTweet: %s\nAccount: %s\nRetweets: %s\n********\n", text, owner, retweets); 
		}
		return String.format("Tweet: %s\nAccount: %s\n--------\nOriginal Tweet: %s", text, owner, this.getOriginalTweet());
	}
	
	public static void main(String[] args) {
		TwitterAccount ta1 = new TwitterAccount("Lars");
		TwitterAccount ta2 = new TwitterAccount("Anne Marte");
		TwitterAccount ta3 = new TwitterAccount("Jens");
		TwitterAccount ta4 = new TwitterAccount("Sofia");
		Tweet t1 = new Tweet(ta1, "Hei");
		Tweet t2 = new Tweet(ta2, t1);
		Tweet t3 = new Tweet(ta3, t2);
		Tweet t4 = new Tweet(ta4, t3);
		//System.out.println(t1);
		System.out.println(t2);
		System.out.println(t3);
		System.out.println(t4);
		
	}
}
