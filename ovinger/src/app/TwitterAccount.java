package app;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class TwitterAccount {
	
	private String name;
	private List<TwitterAccount> followers = new ArrayList<>();
	private List<TwitterAccount> following = new ArrayList<>();
	private List<Tweet> tweets = new ArrayList<>();
	
	public TwitterAccount(String name) {
		this.name = name;
	}
	
	public String getUserName() {
		return this.name;
	}
	
	private void addFollower(TwitterAccount account) {
		this.followers.add(account);
	}
	
	private void removeFollower(TwitterAccount account) {
		this.followers.remove(account);
	}
	
	public int getFollowerCount() {
		return followers.size();
	}
	
	public void follow(TwitterAccount account) {
		this.following.add(account);
		account.addFollower(this);
	}
	
	public void unfollow(TwitterAccount account) {
		this.following.remove(account);
		account.removeFollower(this);
	}
	
	public boolean isFollowing(TwitterAccount account) {
		return this.following.contains(account);
	}
	
	public boolean isFollowedBy(TwitterAccount account) {
		return this.followers.contains(account);
	}
	
	public void tweet(String text) {
		new Tweet(this, text);
	}
	
	public void retweet(Tweet tweet) {
		new Tweet(this, tweet);
	}
	
	public void tweet(Tweet tweet) {
		this.tweets.add(0, tweet);
	}
	
	public Tweet getTweet(int i) {
		return this.tweets.get(i-1);
	}
	
	public int getTweetCount() {
		return this.tweets.size();
	}
	
	public int getRetweetCount() {
		int retweets = 0;
		for (Tweet tweet : this.tweets) {
			if (tweet.getOriginalTweet().getOwner() == this) {
				retweets += tweet.getRetweetCount();
			}
		}
		return retweets;
	}
	
	public List<TwitterAccount> getFollowers(Comparator<TwitterAccount> comparator) {
		if (comparator == null) {
			return followers;
		}
		List<TwitterAccount> sortedFollowers = new ArrayList<>();
		sortedFollowers.addAll(followers);
		Collections.sort(sortedFollowers, comparator);
		return sortedFollowers;
	}
	
	@Override
	public String toString() {
		return this.name;
	}
	
	public static void main(String[] args) {
		TwitterAccount ta1 = new TwitterAccount("Lars");
		TwitterAccount ta2 = new TwitterAccount("Jens");
		
		Tweet t1 = new Tweet(ta1, "Hei");
		Tweet t2 = new Tweet(ta2, "På");
		Tweet t3 = new Tweet(ta2, t1);
		
		System.out.println(ta1.getRetweetCount());
	}
}
