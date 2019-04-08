<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Twitter">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Tweet class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="objectstructures.Tweet"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the TwitterAccount class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="objectstructures.TwitterAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Tweet class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="objectstructures.Tweet"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the TwitterAccount class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="objectstructures.TwitterAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the TweetTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="objectstructures.TweetTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the TwitterAccountTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="objectstructures.TwitterAccountTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug the Tweet class."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="objectstructures.Tweet" action="suspend.breakpoint"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug the TwitterAccount class."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="objectstructures.TwitterAccount" action="suspend.breakpoint"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the debug command Step Over"/>
        <a xsi:type="workbench:CommandExecutionAnswer" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the debug command Step Into"/>
        <a xsi:type="workbench:CommandExecutionAnswer" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the Variables view"/>
        <a xsi:type="workbench:PartTaskAnswer" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
      </tasks>
    </parts>
  </exercise:Exercise>
  <exercise:ExerciseProposals exercise="/0">
    <proposals exercisePart="/0/@parts.0">
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.0/@q" answer="/0/@parts.0/@tasks.0/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550485646387" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="5" className="objectstructures.Tweet">
          <edit xsi:type="exercise:StringEdit" storedString="package objectstructures;&#xA;&#xA;public class Tweet {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550487289574" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="62" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;private String text;&#xA;&#x9;private TwitterAccount owner;&#xA;&#x9;private Tweet originalTweet;&#xA;&#x9;private int retweets;&#xA;&#x9;&#xA;&#x9;public Tweet(TwitterAccount twitterAccount, String text) {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public Tweet(TwitterAccount twitterAccount, Tweet tweet) {&#xA;&#x9;&#x9;if (tweet.getOwner() == twitterAccount) {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;this.originalTweet = tweet;&#xA;&#x9;&#x9;this.text = tweet.getText();&#xA;&#x9;&#x9;this.owner = twitterAccount;&#xA;&#x9;&#x9;tweet.iterateRetweet();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private void iterateRetweet() {&#xA;&#x9;&#x9;this.retweets++;&#xA;&#x9;}&#xA;&#xA;&#x9;public String getText() {&#xA;&#x9;&#x9;return this.text;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public TwitterAccount getOwner() {&#xA;&#x9;&#x9;return this.owner;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public Tweet getOriginalTweet() {&#xA;&#x9;&#x9;if (this.originalTweet == null) {&#xA;&#x9;&#x9;&#x9;return this;&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;return this.originalTweet.getOriginalTweet();&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getRetweetCount() {&#xA;&#x9;&#x9;return this.retweets;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return String.format(&quot;Tweet: %s\nAccount: %s&quot;, text, owner);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;TwitterAccount ta1 = new TwitterAccount(&quot;Lars&quot;);&#xA;&#x9;&#x9;TwitterAccount ta2 = new TwitterAccount(&quot;Anne Marte&quot;);&#xA;&#x9;&#x9;Tweet t1 = new Tweet(ta1, &quot;Hei&quot;);&#xA;&#x9;&#x9;Tweet t2 = new Tweet(ta2, t1);&#xA;&#x9;&#x9;System.out.println(t1.getRetweetCount());&#xA;&#x9;&#x9;System.out.println(t2.getOriginalTweet());&#xA;&#x9;&#x9;System.out.println(t2.getOwner());&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="48" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550487384818" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="63" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this.text = text;&#xA;&#x9;&#x9;this.owner = twitterAccount;" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="220" end="-1120"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550487453745" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="67" warningCount="1" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="itterAccount ta3 = new TwitterAccount(&quot;Jens&quot;);&#xA;&#x9;&#x9;TwitterAccount ta4 = new TwitterAccount(&quot;Sofia&quot;);&#xA;&#x9;&#x9;Tweet t1 = new Tweet(ta1, &quot;Hei&quot;);&#xA;&#x9;&#x9;Tweet t2 = new Tweet(ta2, t1);&#xA;&#x9;&#x9;Tweet t3 = new Tweet(ta3, t2);&#xA;&#x9;&#x9;Tweet t4 = new Tweet(ta4, t3" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="1191" end="-135"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="62" charStart="1400" charEnd="1402" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550487480373" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="67" warningCount="1" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="his.getOriginalTweet()" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="515" end="-1038"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="62" charStart="1418" charEnd="1420" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550487499585" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="72" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;System.out.println(t1);&#xA;&#x9;&#x9;System.out.println(t2);&#xA;&#x9;&#x9;System.out.println(t3);&#xA;&#x9;&#x9;System.out.println(t4);&#xA;&#x9;&#x9;&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="1570" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550487582779" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="72" errorCount="1" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="--------\nTweet: %s\nAccount: %s\nOriginal Account: %s\n--------&quot;, text, owner, this.getOriginalTweet.getOwner()" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="1011" end="-635"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="51" charStart="1096" charEnd="1112" severity="2" problemCategory="50" problemType="33554502"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550487604882" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="72" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="()" edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="1112" end="-646"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550487634481" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="72" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="--------\nOriginal Tweet: %s\n--------&quot;, text, owner, this.getOriginalTweet" edit="/1/@proposals.0/@proposals.0/@attempts.7/@edit" start="1043" end="-637"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550487665090" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="72" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="//" edit="/1/@proposals.0/@proposals.0/@attempts.8/@edit" start="1644" end="-111"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550487748643" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="75" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (this.getOriginalTweet() == null) {&#xA;&#x9;&#x9;&#x9;String.format(&quot;--------\nTweet: %s\nAccount: %s--------\n&quot;, text, owner); &#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return String.format(&quot;--------\nTweet: %s\nAccount: %s--------\nOriginal Tweet: %s\n--------&quot;, text, owner, this.getOriginalTweet());&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;TwitterAccount ta1 = new TwitterAccount(&quot;Lars&quot;);&#xA;&#x9;&#x9;TwitterAccount ta2 = new TwitterAccount(&quot;Anne Marte&quot;);&#xA;&#x9;&#x9;TwitterAccount ta3 = new TwitterAccount(&quot;Jens&quot;);&#xA;&#x9;&#x9;TwitterAccount ta4 = new TwitterAccount(&quot;Sofia&quot;);&#xA;&#x9;&#x9;Tweet t1 = new Tweet(ta1, &quot;Hei&quot;);&#xA;&#x9;&#x9;Tweet t2 = new Tweet(ta2, t1);&#xA;&#x9;&#x9;Tweet t3 = new Tweet(ta3, t2);&#xA;&#x9;&#x9;Tweet t4 = new Tweet(ta4, t3);&#xA;&#x9;&#x9;System.out.println(t1.getRetweetCount());&#xA;&#x9;&#x9;System.out.println(t2.getOriginalTweet());&#xA;&#x9;&#x9;System.out.println(t2.getOwner());&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.9/@edit" start="989" end="-111"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550487758559" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="75" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="return " edit="/1/@proposals.0/@proposals.0/@attempts.10/@edit" start="1031" end="-847"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550487795100" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="75" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="originalTweet" edit="/1/@proposals.0/@proposals.0/@attempts.11/@edit" start="998" end="-869"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550487810552" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="75" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="\n--------" edit="/1/@proposals.0/@proposals.0/@attempts.12/@edit" start="1080" end="-790"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550487825716" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="75" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="\n" edit="/1/@proposals.0/@proposals.0/@attempts.13/@edit" start="1168" end="-712"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550487851986" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="72" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=")" edit="/1/@proposals.0/@proposals.0/@attempts.14/@edit" start="1666" end="-89"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550487871338" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="72" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="\n" edit="/1/@proposals.0/@proposals.0/@attempts.15/@edit" start="1048" end="-708"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550487895169" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="72" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&quot;" edit="/1/@proposals.0/@proposals.0/@attempts.16/@edit" start="1198" end="-547"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550487910917" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="72" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="T" edit="/1/@proposals.0/@proposals.0/@attempts.17/@edit" start="1138" end="-597"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550487937822" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="72" warningCount="1" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="//System.out.println(t2);&#xA;&#x9;&#x9;//System.out.println(t3);&#xA;&#x9;&#x9;//" edit="/1/@proposals.0/@proposals.0/@attempts.18/@edit" start="1651" end="-33"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="65" charStart="1598" charEnd="1600" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550487943605" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="72" warningCount="1" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="//System.out.println(t1);&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.19/@edit" start="1625" end="-89"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="65" charStart="1598" charEnd="1600" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550487975304" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="69" warningCount="1" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="r" edit="/1/@proposals.0/@proposals.0/@attempts.20/@edit" start="989" end="-625"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="62" charStart="1471" charEnd="1473" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550487986847" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="72" warningCount="1" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (this.originalTweet == null) {&#xA;&#x9;&#x9;&#x9;return String.format(&quot;\n--------\nTweet: %s\nAccount: %s\n--------&quot;, text, owner); &#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return String.format(&quot;Tweet: %s\nAccount: %s\n--------\nOriginal Tweet: %s" edit="/1/@proposals.0/@proposals.0/@attempts.21/@edit" start="989" end="-554"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="65" charStart="1600" charEnd="1602" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550488007328" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="72" warningCount="1" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="********\nTweet: %s\nAccount: %s\n********" edit="/1/@proposals.0/@proposals.0/@attempts.22/@edit" start="1050" end="-652"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="65" charStart="1600" charEnd="1602" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550488012105" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="72" warningCount="1" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="\n" edit="/1/@proposals.0/@proposals.0/@attempts.23/@edit" start="1092" end="-652"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="65" charStart="1602" charEnd="1604" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550488040368" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="72" warningCount="1" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Retweets: %s\n********\n&quot;, text, owner, retweets" edit="/1/@proposals.0/@proposals.0/@attempts.24/@edit" start="1084" end="-638"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="65" charStart="1626" charEnd="1628" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550488047749" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="72" warningCount="1" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="S" edit="/1/@proposals.0/@proposals.0/@attempts.25/@edit" start="1707" end="-60"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="65" charStart="1626" charEnd="1628" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550488057482" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="72" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="S" edit="/1/@proposals.0/@proposals.0/@attempts.26/@edit" start="1733" end="-32"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550497213838" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="72" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="null" edit="/1/@proposals.0/@proposals.0/@attempts.27/@edit" start="812" end="-950"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550497231567" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="72" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this" edit="/1/@proposals.0/@proposals.0/@attempts.28/@edit" start="812" end="-950"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550497320307" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="75" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="/*&#xA;&#x9;&#x9;if (this.originalTweet == null) {&#xA;&#x9;&#x9;&#x9;return this;&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;return this.originalTweet.getOriginalTweet();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;*/&#xA;&#x9;&#x9;return this.getOriginalTweet().getOriginalTweet();" edit="/1/@proposals.0/@proposals.0/@attempts.29/@edit" start="768" end="-885"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550497346483" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="75" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="originalTweet" edit="/1/@proposals.0/@proposals.0/@attempts.30/@edit" start="906" end="-905"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550497372868" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="72" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (this.originalTweet == null) {&#xA;&#x9;&#x9;&#x9;return this;&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;return this.originalTweet.getOriginalTweet();&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.31/@edit" start="768" end="-885"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550497549935" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="68" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=".getOriginalTweet();&#xA;&#x9;&#x9;this.text = tweet.getText();&#xA;&#x9;&#x9;this.owner = twitterAccount;&#xA;&#x9;&#x9;this.getOriginalTweet().iterateRetweet();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private void iterateRetweet() {&#xA;&#x9;&#x9;this.retweets++;&#xA;&#x9;}&#xA;&#xA;&#x9;public String getText() {&#xA;&#x9;&#x9;return this.text;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public TwitterAccount getOwner() {&#xA;&#x9;&#x9;return this.owner;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public Tweet getOriginalTweet() {&#xA;&#x9;&#x9;return originalTweet;" edit="/1/@proposals.0/@proposals.0/@attempts.32/@edit" start="448" end="-885"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550497655169" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="70" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (this.getOriginalTweet() != null) {&#xA;&#x9;&#x9;&#x9;this.getOriginalTweet().iterateRetweet();&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.33/@edit" start="533" end="-1119"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550497773114" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="75" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;&#x9;&#x9;this.originalTweet = tweet.getOriginalTweet();&#xA;&#x9;&#x9;if (this.getOriginalTweet() == null) {&#xA;&#x9;&#x9;&#x9;this.originalTweet = tweet;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;this.text = tweet.getText();&#xA;&#x9;&#x9;this.owner = twitterAccount;&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.34/@edit" start="422" end="-1209"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551449791284" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="77" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;twitterAccount.tweet(text);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public Tweet(TwitterAccount twitterAccount, Tweet tweet) {&#xA;&#x9;&#x9;if (tweet.getOwner() == twitterAccount) {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;this.originalTweet = tweet.getOriginalTweet();&#xA;&#x9;&#x9;if (this.getOriginalTweet() == null) {&#xA;&#x9;&#x9;&#x9;this.originalTweet = tweet;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;this.text = tweet.getText();&#xA;&#x9;&#x9;this.owner = twitterAccount;&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if (this.getOriginalTweet() != null) {&#xA;&#x9;&#x9;&#x9;this.getOriginalTweet().iterateRetweet();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;twitterAccount.retweet(tweet);" edit="/1/@proposals.0/@proposals.0/@attempts.35/@edit" start="270" end="-1119"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551450090575" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="77" errorCount="3" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="interfaces.twitter.TwitterAccount twitterAccount, Tweet tweet) {&#xA;&#x9;&#x9;this.text = tweet;&#xA;&#x9;&#x9;this.owner = twitterAccount;&#xA;&#x9;&#x9;twitterAccount.tweet(twee" edit="/1/@proposals.0/@proposals.0/@attempts.36/@edit" start="172" end="-1589"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="67" charStart="1668" charEnd="1689" severity="2" problemCategory="50" problemType="134217858"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551450097919" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="77" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="TwitterAccount twitterAccount, String text) {&#xA;&#x9;&#x9;this.text = text;&#xA;&#x9;&#x9;this.owner = twitterAccount;&#xA;&#x9;&#x9;twitterAccount.tweet(tex" edit="/1/@proposals.0/@proposals.0/@attempts.37/@edit" start="172" end="-1589"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551450105855" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="77" errorCount="1" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="interfaces.twitter" edit="/1/@proposals.0/@proposals.0/@attempts.38/@edit" start="8" end="-1860"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="1" charStart="8" charEnd="26" severity="2" problemCategory="60" problemType="536871240"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551450143462" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="77" errorCount="6" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Tweet tweet) {&#xA;&#x9;&#x9;this.text = tweet;&#xA;&#x9;&#x9;this.owner = twitterAccount;&#xA;&#x9;&#x9;twitterAccount.tweet(twee" edit="/1/@proposals.0/@proposals.0/@attempts.39/@edit" start="205" end="-1589"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="67" charStart="1651" charEnd="1672" severity="2" problemCategory="50" problemType="134217858"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551450184998" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="77" errorCount="5" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="objectstructures" edit="/1/@proposals.0/@proposals.0/@attempts.40/@edit" start="8" end="-1862"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="67" charStart="1649" charEnd="1670" severity="2" problemCategory="50" problemType="134217858"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550485663064" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="5" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:StringEdit" storedString="package objectstructures;&#xA;&#xA;public class TwitterAccount {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550487111904" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="19" warningCount="1" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;private String name;&#xA;&#x9;&#xA;&#x9;public TwitterAccount(String name) {&#xA;&#x9;&#x9;this.name = name;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void follow(TwitterAccount account) {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void unFollow(TwitterAccount account) {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.1/@attempts.0/@edit" start="57" end="-4"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="5" charStart="75" charEnd="79" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550487329717" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="23" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;@Override&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return this.name;&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.1/@attempts.1/@edit" start="255" end="-3"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550488105176" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="28" errorCount="2" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="private List&lt;TwitterAccount> followers = new ArrayList&lt;>();&#xA;&#x9;&#xA;&#x9;public TwitterAccount(String name) {&#xA;&#x9;&#x9;this.name = name;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getUserName() {&#xA;&#x9;&#x9;return this." edit="/1/@proposals.0/@proposals.1/@attempts.2/@edit" start="82" end="-185"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="6" charStart="127" charEnd="136" severity="2" problemCategory="40" problemType="16777218"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550493764067" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="31" warningCount="1" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.ArrayList;&#xA;import java.util.List;&#xA;&#xA;" edit="/1/@proposals.0/@proposals.1/@attempts.3/@edit" start="27" end="-410"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="9" charStart="163" charEnd="172" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550496669705" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="77" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="private List&lt;TwitterAccount> following = new ArrayList&lt;>();&#xA;&#x9;private List&lt;Tweet> tweets = new ArrayList&lt;>();&#xA;&#x9;&#xA;&#x9;public TwitterAccount(String name) {&#xA;&#x9;&#x9;this.name = name;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getUserName() {&#xA;&#x9;&#x9;return this.name;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private void addFollower(TwitterAccount account) {&#xA;&#x9;&#x9;this.followers.add(account);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private void removeFollower(TwitterAccount account) {&#xA;&#x9;&#x9;this.followers.remove(account);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void follow(TwitterAccount account) {&#xA;&#x9;&#x9;this.following.add(account);&#xA;&#x9;&#x9;account.addFollower(account);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void unFollow(TwitterAccount account) {&#xA;&#x9;&#x9;this.following.remove(account);&#xA;&#x9;&#x9;account.removeFollower(account);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean isFollowing(TwitterAccount account) {&#xA;&#x9;&#x9;return this.following.contains(account);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean isFollowedBy(TwitterAccount account) {&#xA;&#x9;&#x9;return this.followers.contains(account);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void tweet(String text) {&#xA;&#x9;&#x9;this.tweets.add(0, new Tweet(this, text));&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void retweet(Tweet tweet) {&#xA;&#x9;&#x9;this.tweets.add(0, new Tweet(this, tweet));&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public Tweet getTweet(int i) {&#xA;&#x9;&#x9;return this.tweets.get(i-1);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getTweetCount() {&#xA;&#x9;&#x9;return this.tweets.size();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getRetweetCount() {&#xA;&#x9;&#x9;int retweets = 0;&#xA;&#x9;&#x9;for (Tweet tweet : this.tweets) {&#xA;&#x9;&#x9;&#x9;if (tweet.getOriginalTweet().getOwner() == this) {&#xA;&#x9;&#x9;&#x9;&#x9;retweets += tweet.getRetweetCount();&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return retweets;&#xA;&#x9;}&#xA;&#x9;" edit="/1/@proposals.0/@proposals.1/@attempts.4/@edit" start="195" end="-66"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550496687796" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="77" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="f" edit="/1/@proposals.0/@proposals.1/@attempts.5/@edit" start="736" end="-895"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550496793540" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="77" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void unfollow(TwitterAccount account) {&#xA;&#x9;&#x9;this.following.remove(account);&#xA;&#x9;&#x9;account.removeFollower(this" edit="/1/@proposals.0/@proposals.1/@attempts.6/@edit" start="706" end="-797"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551449493281" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="88" warningCount="2" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;TwitterAccount ta1 = new TwitterAccount(&quot;Lars&quot;);&#xA;&#x9;&#x9;TwitterAccount ta2 = new TwitterAccount(&quot;Jens&quot;);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;Tweet t1 = new Tweet(ta1, &quot;Hei&quot;);&#xA;&#x9;&#x9;Tweet t2 = new Tweet(ta2, &quot;På&quot;);&#xA;&#x9;&#x9;Tweet t3 = new Tweet(ta2, t1);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;System.out.println(ta1.getRetweetCount());&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.1/@attempts.7/@edit" start="1623" end="-3"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="84" charStart="1851" charEnd="1853" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550487291630" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
Tweet: null
Account: null
objectstructures.TwitterAccount@1a968a59
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550487332000" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
Tweet: null
Account: null
Anne Marte
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550487384736" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
Tweet: Hei
Account: Lars
Anne Marte
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550487453681" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
Tweet: Hei
Account: Lars
Anne Marte
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550487480273" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>3
Tweet: Hei
Account: Lars
Anne Marte
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550487499520" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>3
Tweet: Hei
Account: Lars
Anne Marte
Tweet: Hei
Account: Lars
Tweet: Hei
Account: Anne Marte
Tweet: Hei
Account: Jens
Tweet: Hei
Account: Sofia
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550487606569" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>3
--------
Tweet: Hei
Account: Lars
Original Account: Lars
--------
Anne Marte
--------
Tweet: Hei
Account: Lars
Original Account: Lars
--------
--------
Tweet: Hei
Account: Anne Marte
Original Account: Lars
--------
--------
Tweet: Hei
Account: Jens
Original Account: Lars
--------
--------
Tweet: Hei
Account: Sofia
Original Account: Lars
--------
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550487634414" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>3
</consoleOutput>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.StackOverflowError
	at java.base/java.util.regex.Pattern$BmpCharProperty.match(Pattern.java:3950)
	at java.base/java.util.regex.Pattern$GroupHead.match(Pattern.java:4791)
	at java.base/java.util.regex.Pattern$Branch.match(Pattern.java:4736)
	at java.base/java.util.regex.Pattern$Branch.match(Pattern.java:4734)
	at java.base/java.util.regex.Pattern$Branch.match(Pattern.java:4734)
	at java.base/java.util.regex.Pattern$BranchConn.match(Pattern.java:4700)
	at java.base/java.util.regex.Pattern$GroupTail.match(Pattern.java:4850)
	at java.base/java.util.regex.Pattern$BmpCharPropertyGreedy.match(Pattern.java:4331)
	at java.base/java.util.regex.Pattern$GroupHead.match(Pattern.java:4791)
	at java.base/java.util.regex.Pattern$Branch.match(Pattern.java:4736)
	at java.base/java.util.regex.Pattern$Branch.match(Pattern.java:4734)
	at java.base/java.util.regex.Pattern$BmpCharProperty.match(Pattern.java:3951)
	at java.base/java.util.regex.Pattern$Start.match(Pattern.java:3606)
	at java.base/java.util.regex.Matcher.search(Matcher.java:1729)
	at java.base/java.util.regex.Matcher.find(Matcher.java:773)
	at java.base/java.util.Formatter.parse(Formatter.java:2702)
	at java.base/java.util.Formatter.format(Formatter.java:2655)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550487665018" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>3
Exception in thread &quot;main&quot; java.lang.StackOverflowError
	at java.base/java.util.regex.Pattern$GroupHead.match(Pattern.java:4791)
	at java.base/java.util.regex.Pattern$Branch.match(Pattern.java:4736)
	at java.base/java.util.regex.Pattern$Branch.match(Pattern.java:4734)
	at java.base/java.util.regex.Pattern$Branch.match(Pattern.java:4734)
	at java.base/java.util.regex.Pattern$BranchConn.match(Pattern.java:4700)
	at java.base/java.util.regex.Pattern$GroupTail.match(Pattern.java:4850)
	at java.base/java.util.regex.Pattern$BmpCharPropertyGreedy.match(Pattern.java:4331)
	at java.base/java.util.regex.Pattern$GroupHead.match(Pattern.java:4791)
	at java.base/java.util.regex.Pattern$Branch.match(Pattern.java:4736)
	at java.base/java.util.regex.Pattern$Branch.match(Pattern.java:4734)
	at java.base/java.util.regex.Pattern$BmpCharProperty.match(Pattern.java:3951)
	at java.base/java.util.regex.Pattern$Start.match(Pattern.java:3606)
	at java.base/java.util.regex.Matcher.search(Matcher.java:1729)
	at java.base/java.util.regex.Matcher.find(Matcher.java:773)
	at java.base/java.util.Formatter.parse(Formatter.java:2702)
	at java.base/java.util.Formatter.format(Formatter.java:2655)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
</consoleOutput>
          <consoleOutput>	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:51)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550487748555" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>3
Exception in thread &quot;main&quot; java.lang.StackOverflowError
	at java.base/java.util.regex.Pattern$BmpCharPredicate.lambda$union$2(Pattern.java:5687)
	at java.base/java.util.regex.Pattern$BmpCharPredicate.lambda$union$2(Pattern.java:5687)
	at java.base/java.util.regex.Pattern$BmpCharProperty.match(Pattern.java:3950)
	at java.base/java.util.regex.Pattern$GroupHead.match(Pattern.java:4791)
	at java.base/java.util.regex.Pattern$Branch.match(Pattern.java:4734)
	at java.base/java.util.regex.Pattern$Branch.match(Pattern.java:4734)
	at java.base/java.util.regex.Pattern$Branch.match(Pattern.java:4734)
	at java.base/java.util.regex.Pattern$BranchConn.match(Pattern.java:4700)
	at java.base/java.util.regex.Pattern$GroupTail.match(Pattern.java:4850)
	at java.base/java.util.regex.Pattern$BmpCharPropertyGreedy.match(Pattern.java:4331)
	at java.base/java.util.regex.Pattern$GroupHead.match(Pattern.java:4791)
	at java.base/java.util.regex.Pattern$Branch.match(Pattern.java:4736)
	at java.base/java.util.regex.Pattern$Branch.match(Pattern.java:4734)
	at java.base/java.util.regex.Pattern$BmpCharProperty.match(Pattern.java:3951)
	at java.base/java.util.regex.Pattern$Start.match(Pattern.java:3606)
	at java.base/java.util.regex.Matcher.search(Matcher.java:1729)
	at java.base/java.util.regex.Matcher.find(Matcher.java:773)
	at java.base/java.util.Formatter.parse(Formatter.java:2702)
	at java.base/java.util.Formatter.format(Formatter.java:2655)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550487759537" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>3
Exception in thread &quot;main&quot; java.lang.StackOverflowError
</consoleOutput>
          <consoleOutput>	at java.base/java.util.regex.Pattern$Branch.match(Pattern.java:4736)
	at java.base/java.util.regex.Pattern$BranchConn.match(Pattern.java:4700)
	at java.base/java.util.regex.Pattern$GroupTail.match(Pattern.java:4850)
	at java.base/java.util.regex.Pattern$BmpCharPropertyGreedy.match(Pattern.java:4331)
	at java.base/java.util.regex.Pattern$GroupHead.match(Pattern.java:4791)
	at java.base/java.util.regex.Pattern$Branch.match(Pattern.java:4736)
	at java.base/java.util.regex.Pattern$Branch.match(Pattern.java:4734)
	at java.base/java.util.regex.Pattern$BmpCharProperty.match(Pattern.java:3951)
	at java.base/java.util.regex.Pattern$Start.match(Pattern.java:3606)
	at java.base/java.util.regex.Matcher.search(Matcher.java:1729)
	at java.base/java.util.regex.Matcher.find(Matcher.java:773)
	at java.base/java.util.Formatter.parse(Formatter.java:2702)
	at java.base/java.util.Formatter.format(Formatter.java:2655)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
	at java.base/java.util.Formatter$FormatSpecifier.printString(Formatter.java:3031)
	at java.base/java.util.Formatter$FormatSpecifier.print(Formatter.java:2908)
	at java.base/java.util.Formatter.format(Formatter.java:2673)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Tweet.toString(Tweet.java:54)
</consoleOutput>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550487796269" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>3
--------
Tweet: Hei
Account: Lars--------

Anne Marte
--------
Tweet: Hei
Account: Lars--------

--------
Tweet: Hei
Account: Anne Marte--------
Original Tweet: --------
Tweet: Hei
Account: Lars--------

--------
--------
Tweet: Hei
Account: Jens--------
Original Tweet: --------
Tweet: Hei
Account: Lars--------

--------
--------
Tweet: Hei
Account: Sofia--------
Original Tweet: --------
Tweet: Hei
Account: Lars--------

--------
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550487812562" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>3
--------
Tweet: Hei
Account: Lars
--------
Anne Marte
--------
Tweet: Hei
Account: Lars
--------
--------
Tweet: Hei
Account: Anne Marte--------
Original Tweet: --------
Tweet: Hei
Account: Lars
--------
--------
--------
Tweet: Hei
Account: Jens--------
Original Tweet: --------
Tweet: Hei
Account: Lars
--------
--------
--------
Tweet: Hei
Account: Sofia--------
Original Tweet: --------
Tweet: Hei
Account: Lars
--------
--------
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550487826988" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>3
--------
Tweet: Hei
Account: Lars
--------
Anne Marte
--------
Tweet: Hei
Account: Lars
--------
--------
Tweet: Hei
Account: Anne Marte
--------
Original Tweet: --------
Tweet: Hei
Account: Lars
--------
--------
--------
Tweet: Hei
Account: Jens
--------
Original Tweet: --------
Tweet: Hei
Account: Lars
--------
--------
--------
Tweet: Hei
Account: Sofia
--------
Original Tweet: --------
Tweet: Hei
Account: Lars
--------
--------
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550487851910" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>--------
Tweet: Hei
Account: Lars
--------
--------
Tweet: Hei
Account: Anne Marte
--------
Original Tweet: --------
Tweet: Hei
Account: Lars
--------
--------
--------
Tweet: Hei
Account: Jens
--------
Original Tweet: --------
Tweet: Hei
Account: Lars
--------
--------
--------
Tweet: Hei
Account: Sofia
--------
Original Tweet: --------
Tweet: Hei
Account: Lars
--------
--------
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550487872195" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>
--------
Tweet: Hei
Account: Lars
--------
--------
Tweet: Hei
Account: Anne Marte
--------
Original Tweet: 
--------
Tweet: Hei
Account: Lars
--------
--------
--------
Tweet: Hei
Account: Jens
--------
Original Tweet: 
--------
Tweet: Hei
Account: Lars
--------
--------
--------
Tweet: Hei
Account: Sofia
--------
Original Tweet: 
--------
Tweet: Hei
Account: Lars
--------
--------
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550487895091" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>
--------
Tweet: Hei
Account: Lars
--------
--------
Tweet: Hei
Account: Anne Marte
--------
Original Tweet: 
--------
Tweet: Hei
Account: Jens
--------
Original Tweet: 
--------
Tweet: Hei
Account: Sofia
--------
Original Tweet: 
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550487910843" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>
--------
Tweet: Hei
Account: Lars
--------
Tweet: Hei
Account: Anne Marte
--------
Original Tweet: 
Tweet: Hei
Account: Jens
--------
Original Tweet: 
Tweet: Hei
Account: Sofia
--------
Original Tweet: 
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550487937744" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>
--------
Tweet: Hei
Account: Lars
--------
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550487943515" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Tweet: Hei
Account: Anne Marte
--------
Original Tweet: 
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550487975224" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Tweet: Hei
Account: Anne Marte
--------
Original Tweet: 
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550487986748" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Tweet: Hei
Account: Anne Marte
--------
Original Tweet: 
--------
Tweet: Hei
Account: Lars
--------
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550488007249" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Tweet: Hei
Account: Anne Marte
--------
Original Tweet: 
********
Tweet: Hei
Account: Lars
********
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550488012034" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Tweet: Hei
Account: Anne Marte
--------
Original Tweet: 
********
Tweet: Hei
Account: Lars
********

</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550488041267" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Tweet: Hei
Account: Anne Marte
--------
Original Tweet: 
********
Tweet: Hei
Account: Lars
Retweets: 3
********

</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550488048628" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Tweet: Hei
Account: Anne Marte
--------
Original Tweet: 
********
Tweet: Hei
Account: Lars
Retweets: 3
********

Tweet: Hei
Account: Jens
--------
Original Tweet: 
********
Tweet: Hei
Account: Lars
Retweets: 3
********

</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550488057404" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Tweet: Hei
Account: Anne Marte
--------
Original Tweet: 
********
Tweet: Hei
Account: Lars
Retweets: 3
********

Tweet: Hei
Account: Jens
--------
Original Tweet: 
********
Tweet: Hei
Account: Lars
Retweets: 3
********

Tweet: Hei
Account: Sofia
--------
Original Tweet: 
********
Tweet: Hei
Account: Lars
Retweets: 3
********

</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.3/@q" answer="/0/@parts.0/@tasks.3/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1551449493182" mode="run" className="objectstructures.TwitterAccount">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.TwitterAccount</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>0
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1551449525006" mode="debug" className="objectstructures.TwitterAccount">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.TwitterAccount</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1551449734746" mode="debug" className="objectstructures.TwitterAccount">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.TwitterAccount</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput></consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.4/@q" answer="/0/@parts.0/@tasks.4/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550497160348" completion="0.75" testRunName="objectstructures.TweetTest" successCount="3" failureCount="1">
          <successTests>testGetRetweetCount</successTests>
          <successTests>testConstructorNewTweet</successTests>
          <successTests>testConstructorRetweet</successTests>
          <failureTests>testGetOriginalTweet</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550497214317" completion="0.25" testRunName="objectstructures.TweetTest" successCount="1" errorCount="3">
          <successTests>testConstructorNewTweet</successTests>
          <errorTests>testGetRetweetCount</errorTests>
          <errorTests>testGetOriginalTweet</errorTests>
          <errorTests>testConstructorRetweet</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550497232128" completion="0.75" testRunName="objectstructures.TweetTest" successCount="3" failureCount="1">
          <successTests>testGetRetweetCount</successTests>
          <successTests>testConstructorNewTweet</successTests>
          <successTests>testConstructorRetweet</successTests>
          <failureTests>testGetOriginalTweet</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550497320797" completion="0.25" testRunName="objectstructures.TweetTest" successCount="1" errorCount="3">
          <successTests>testConstructorNewTweet</successTests>
          <errorTests>testGetRetweetCount</errorTests>
          <errorTests>testGetOriginalTweet</errorTests>
          <errorTests>testConstructorRetweet</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550497347093" completion="0.25" testRunName="objectstructures.TweetTest" successCount="1" errorCount="3">
          <successTests>testConstructorNewTweet</successTests>
          <errorTests>testGetRetweetCount</errorTests>
          <errorTests>testGetOriginalTweet</errorTests>
          <errorTests>testConstructorRetweet</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550497373371" completion="0.75" testRunName="objectstructures.TweetTest" successCount="3" failureCount="1">
          <successTests>testGetRetweetCount</successTests>
          <successTests>testConstructorNewTweet</successTests>
          <successTests>testConstructorRetweet</successTests>
          <failureTests>testGetOriginalTweet</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550497550446" completion="0.25" testRunName="objectstructures.TweetTest" successCount="1" errorCount="3">
          <successTests>testConstructorNewTweet</successTests>
          <errorTests>testGetRetweetCount</errorTests>
          <errorTests>testGetOriginalTweet</errorTests>
          <errorTests>testConstructorRetweet</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550497658762" completion="0.5" testRunName="objectstructures.TweetTest" successCount="2" failureCount="2">
          <successTests>testConstructorNewTweet</successTests>
          <successTests>testConstructorRetweet</successTests>
          <failureTests>testGetRetweetCount</failureTests>
          <failureTests>testGetOriginalTweet</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550497777938" completion="1.0" testRunName="objectstructures.TweetTest" successCount="4">
          <successTests>testGetRetweetCount</successTests>
          <successTests>testGetOriginalTweet</successTests>
          <successTests>testConstructorNewTweet</successTests>
          <successTests>testConstructorRetweet</successTests>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.5/@q" answer="/0/@parts.0/@tasks.5/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550496678271" completion="0.6666666666666666" testRunName="objectstructures.TwitterAccountTest" successCount="4" failureCount="1" errorCount="1">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testRetweet</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
          <failureTests>testFollow</failureTests>
          <errorTests>testUnfollow</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550496696994" completion="0.6666666666666666" testRunName="objectstructures.TwitterAccountTest" successCount="4" failureCount="2">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testRetweet</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
          <failureTests>testUnfollow</failureTests>
          <failureTests>testFollow</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550496794116" completion="1.0" testRunName="objectstructures.TwitterAccountTest" successCount="6">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testUnfollow</successTests>
          <successTests>testRetweet</successTests>
          <successTests>testFollow</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550497781570" completion="0.8333333333333334" testRunName="objectstructures.TwitterAccountTest" successCount="5" errorCount="1">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testUnfollow</successTests>
          <successTests>testFollow</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
          <errorTests>testRetweet</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551448365758" completion="0.8333333333333334" testRunName="objectstructures.TwitterAccountTest" successCount="5" errorCount="1">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testUnfollow</successTests>
          <successTests>testFollow</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
          <errorTests>testRetweet</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551449820140" completion="0.5" testRunName="objectstructures.TwitterAccountTest" successCount="3" errorCount="3">
          <successTests>testUnfollow</successTests>
          <successTests>testFollow</successTests>
          <successTests>testConstructor</successTests>
          <errorTests>testGetTweetIllegal</errorTests>
          <errorTests>testRetweet</errorTests>
          <errorTests>testNewTweet</errorTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a"/>
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a">
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551449525692" elementId="objectstructures.TwitterAccount" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551449735548" elementId="objectstructures.TwitterAccount" action="suspend.breakpoint"/>
      </proposals>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a">
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550484735565" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550484752980" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550484754782" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550484755035" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550484755254" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550484755467" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550484755655" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550484755825" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550484756014" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550484756371" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550484756803" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550484757360" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550484758524" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550512358119" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550512374560" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550512398074" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550512412372" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550512413046" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550512435447" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550512436238" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550512470821" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550512491826" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550512501577" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550512516435" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550512517884" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550512553563" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550512575342" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550512578239" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550512584034" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550512587183" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550512589137" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550744791456" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550744791610" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550744791803" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550744791938" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550744792137" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551447464918" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551447465655" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551447466195" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551449571812" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551449575586" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551449585476" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551449595499" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551449600437" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551449604243" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551449604917" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551449610999" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551449645248" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551449652206" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551449654075" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551449657396" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551449669000" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551449686690" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551449713174" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
      </proposals>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a">
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1549286203320" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1549286206507" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550512322032" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550512410890" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550512413905" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550512476953" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550512560233" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1550744790749" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551449548516" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551449616054" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551449647337" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551449672134" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
      </proposals>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.4/@q" answer="/0/@parts.1/@tasks.4/@a">
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1548700089318" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1550484729880" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1550484797541" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1550512267693" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1550512563813" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1550744794839" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1551447470232" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1551449531710" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1551449738024" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
      </proposals>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
