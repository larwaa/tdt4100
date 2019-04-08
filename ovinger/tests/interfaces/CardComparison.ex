<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="CardContainer">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Card class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="interfaces.Card"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the CardComparator class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="interfaces.CardComparator"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Card class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="interfaces.Card"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the CardComparator class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="interfaces.CardComparator"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the CardComparatorTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="interfaces.CardComparatorTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="interfaces.Card*" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551171476722" resourcePath="/ovinger/src/interfaces/Card.java" sizeMeasure="48" warningCount="1" className="interfaces.Card">
          <edit xsi:type="exercise:StringEdit" storedString="package interfaces;&#xA;&#xA;import java.util.List;&#xA;&#xA;public class Card {&#xA;&#x9;&#xA;&#x9;private char suit;&#xA;&#x9;private int face;&#xA;&#x9;&#xA;&#x9;public Card(char suit, int face) {&#xA;&#x9;&#x9;this.setSuit(suit);&#xA;&#x9;&#x9;this.setFace(face);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private void setSuit(char suit) {&#xA;&#x9;&#x9;List&lt;Character> legalChars = List.of('S', 'H', 'C', 'D');&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if (! (legalChars.contains(suit))) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Illegal color&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;this.suit = suit;&#xA;&#x9;}&#xA;&#xA;&#x9;private void setFace(int face) {&#xA;&#x9;&#x9;if (face &lt; 1 || face > 13) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Illegal number&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;this.face = face;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public char getSuit() {&#xA;&#x9;&#x9;return this.suit;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getFace() {&#xA;&#x9;&#x9;return this.face;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return String.format(&quot;%s%s&quot;, getSuit(), getFace());&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Card c1 = new Card('H', 5);&#xA;&#x9;}&#xA;}&#xA;"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="46" charStart="814" charEnd="816" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551350869843" resourcePath="/ovinger/src/interfaces/Card.java" sizeMeasure="59" errorCount="4" warningCount="2" className="interfaces.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="implements Comparable {&#xA;&#x9;&#xA;&#x9;private char suit;&#xA;&#x9;private int face;&#xA;&#x9;&#xA;&#x9;public Card(char suit, int face) {&#xA;&#x9;&#x9;this.setSuit(suit);&#xA;&#x9;&#x9;this.setFace(face);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private void setSuit(char suit) {&#xA;&#x9;&#x9;List&lt;Character> legalChars = List.of('S', 'H', 'C', 'D');&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if (! (legalChars.contains(suit))) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Illegal color&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;this.suit = suit;&#xA;&#x9;}&#xA;&#xA;&#x9;private void setFace(int face) {&#xA;&#x9;&#x9;if (face &lt; 1 || face > 13) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Illegal number&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;this.face = face;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public char getSuit() {&#xA;&#x9;&#x9;return this.suit;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getFace() {&#xA;&#x9;&#x9;return this.face;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return String.format(&quot;%s%s&quot;, getSuit(), getFace());&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Card c1 = new Card('H', 5);&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int compareTo(Object o) {&#xA;&#x9;&#x9;if (o instanceof Card) {&#xA;&#x9;&#x9;&#x9;Card o = ((Card) o);&#xA;&#x9;&#x9;&#x9;if (this.getSuit() == o {&#xA;&#x9;&#x9;&#x9;&#x9;if (this.getFace() > )&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return 0" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="63" end="-8"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="53" charStart="966" charEnd="985" severity="2" problemCategory="40" problemType="16777231"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551351115654" resourcePath="/ovinger/src/interfaces/Card.java" sizeMeasure="69" errorCount="1" warningCount="1" className="interfaces.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="c = ((Card) o);&#xA;&#x9;&#x9;&#x9;if (this.getSuit() == c.getSuit()) {&#xA;&#x9;&#x9;&#x9;&#x9;return this.getFace() - c.getFace();&#xA;&#x9;&#x9;&#x9;} else if (this.getSuit() == 'S') {&#xA;&#x9;&#x9;&#x9;&#x9;return 1;&#xA;&#x9;&#x9;&#x9;} else if (c.getSuit() == 'S') {&#xA;&#x9;&#x9;&#x9;&#x9;return -1;&#xA;&#x9;&#x9;&#x9;} else if (this.getSuit() == 'H') {&#xA;&#x9;&#x9;&#x9;&#x9;return 1;&#xA;&#x9;&#x9;&#x9;} else if (c.getSuit() == 'H') {&#xA;&#x9;&#x9;&#x9;&#x9;return -1; &#xA;&#x9;&#x9;&#x9;} else if (this.getSuit() == 'C') {&#xA;&#x9;&#x9;&#x9;&#x9;return 1;&#xA;&#x9;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;&#x9;return -1;&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="943" end="-7"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="69" charStart="1336" charEnd="1337" severity="2" problemCategory="20" problemType="1610612976"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551351179090" resourcePath="/ovinger/src/interfaces/Card.java" sizeMeasure="71" warningCount="2" className="interfaces.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;}&#xA;&#x9;&#x9;} &#xA;&#x9;&#x9;else throw new IllegalArgumentException();" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="1331" end="-7"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="46" charStart="836" charEnd="838" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551351839457" resourcePath="/ovinger/src/interfaces/Card.java" sizeMeasure="71" warningCount="2" className="interfaces.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="D" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="1282" end="-107"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="46" charStart="836" charEnd="838" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551447521012" resourcePath="/ovinger/src/interfaces/Card.java" sizeMeasure="75" errorCount="2" warningCount="2" className="interfaces.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;System.out.println(&quot;test&quot;);&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="1387" end="-3"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="72" charStart="1409" charEnd="1428" severity="2" problemCategory="50" problemType="67109219"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551447530154" resourcePath="/ovinger/src/interfaces/Card.java" sizeMeasure="71" warningCount="2" className="interfaces.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="1387" end="-2"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="46" charStart="836" charEnd="838" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551447541957" resourcePath="/ovinger/src/interfaces/Card.java" sizeMeasure="72" warningCount="2" className="interfaces.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;System.out.println(&quot;test&quot;);&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="860" end="-530"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="5" charStart="74" charEnd="84" severity="1" problemCategory="130" problemType="16777788"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551443380190" resourcePath="/ovinger/src/interfaces/CardComparator.java" sizeMeasure="5" className="interfaces.CardComparator">
          <edit xsi:type="exercise:StringEdit" storedString="package interfaces;&#xA;&#xA;public class CardComparator {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551443993572" resourcePath="/ovinger/src/interfaces/CardComparator.java" sizeMeasure="33" warningCount="5" className="interfaces.CardComparator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.ArrayList;&#xA;import java.util.Collection;&#xA;import java.util.Comparator;&#xA;import java.util.List;&#xA;&#xA;public class CardComparator implements Comparator&lt;Card> {&#xA;&#x9;&#xA;&#x9;private boolean ace;&#xA;&#x9;private char trump;&#xA;&#xA;&#x9;public CardComparator(boolean ace, char trump) {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private void setAce(boolean ace) {&#xA;&#x9;&#x9;this.ace = ace;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private void setTrupm(char trump) {&#xA;&#x9;&#x9;Collection&lt;Character> legalSuits = List.of('S', 'H', 'C', 'D');&#xA;&#x9;&#x9;if (legalSuits.contains(trump)) {&#xA;&#x9;&#x9;&#x9;this.trump = trump;&#xA;&#x9;&#x9;} &#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public int compare(Card o1, Card o2) {&#xA;&#x9;&#x9;return 0;&#xA;&#x9;}&#xA;&#x9;" edit="/1/@proposals.0/@proposals.1/@attempts.0/@edit" start="21" end="-4"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="11" charStart="227" charEnd="232" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551444344358" resourcePath="/ovinger/src/interfaces/CardComparator.java" sizeMeasure="52" warningCount="2" className="interfaces.CardComparator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this.setAce(ace);&#xA;&#x9;&#x9;this.setTrump(trump);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private void setAce(boolean ace) {&#xA;&#x9;&#x9;this.ace = ace;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private void setTrump(char trump) {&#xA;&#x9;&#x9;Collection&lt;Character> legalSuits = List.of('S', 'H', 'C', 'D');&#xA;&#x9;&#x9;if (legalSuits.contains(trump)) {&#xA;&#x9;&#x9;&#x9;this.trump = trump;&#xA;&#x9;&#x9;} &#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public int compare(Card o1, Card o2) {&#xA;&#x9;&#x9;if (o1.getSuit() == o2.getSuit()) {&#xA;&#x9;&#x9;&#x9;return o1.getFace() - o2.getFace();&#xA;&#x9;&#x9;} else if (o1.getSuit() == trump) {&#xA;&#x9;&#x9;&#x9;return 1;&#xA;&#x9;&#x9;} else if (o2.getSuit() == trump) {&#xA;&#x9;&#x9;&#x9;return -1;&#xA;&#x9;&#x9;} else if (o1.getSuit() == 'S') {&#xA;&#x9;&#x9;&#x9;return 1;&#xA;&#x9;&#x9;} else if (o2.getSuit() == 'S') {&#xA;&#x9;&#x9;&#x9;return -1;&#xA;&#x9;&#x9;} else if (o1.getSuit() == 'H') {&#xA;&#x9;&#x9;&#x9;return 1;&#xA;&#x9;&#x9;} else if (o2.getSuit() == 'H') {&#xA;&#x9;&#x9;&#x9;return -1;&#xA;&#x9;&#x9;} else if (o1.getSuit() == 'D') {&#xA;&#x9;&#x9;&#x9;return 1;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return o1.getFace() - o2.getSuit()" edit="/1/@proposals.0/@proposals.1/@attempts.1/@edit" start="287" end="-10"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="10" charStart="208" charEnd="211" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551444604190" resourcePath="/ovinger/src/interfaces/CardComparator.java" sizeMeasure="62" className="interfaces.CardComparator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Collection;&#xA;import java.util.Comparator;&#xA;import java.util.List;&#xA;&#xA;public class CardComparator implements Comparator&lt;Card> {&#xA;&#x9;&#xA;&#x9;private boolean ace;&#xA;&#x9;private char trump;&#xA;&#xA;&#x9;public CardComparator(boolean ace, char trump) {&#xA;&#x9;&#x9;this.setAce(ace);&#xA;&#x9;&#x9;this.setTrump(trump);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private void setAce(boolean ace) {&#xA;&#x9;&#x9;this.ace = ace;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private void setTrump(char trump) {&#xA;&#x9;&#x9;Collection&lt;Character> legalSuits = List.of('S', 'H', 'C', 'D');&#xA;&#x9;&#x9;if (legalSuits.contains(trump)) {&#xA;&#x9;&#x9;&#x9;this.trump = trump;&#xA;&#x9;&#x9;} &#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public int compare(Card o1, Card o2) {&#xA;&#x9;&#x9;int o1Face = o1.getFace();&#xA;&#x9;&#x9;int o2Face = o2.getFace();&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if (ace &amp;&amp; o1Face == 1) {&#xA;&#x9;&#x9;&#x9;o1Face = 14;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if (ace &amp;&amp; o2Face == 1) {&#xA;&#x9;&#x9;&#x9;o2Face = 14;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if (o1.getSuit() == o2.getSuit()) {&#xA;&#x9;&#x9;&#x9;return o1Face - o2Face;&#xA;&#x9;&#x9;} else if (o1.getSuit() == trump) {&#xA;&#x9;&#x9;&#x9;return 1;&#xA;&#x9;&#x9;} else if (o2.getSuit() == trump) {&#xA;&#x9;&#x9;&#x9;return -1;&#xA;&#x9;&#x9;} else if (o1.getSuit() == 'S') {&#xA;&#x9;&#x9;&#x9;return 1;&#xA;&#x9;&#x9;} else if (o2.getSuit() == 'S') {&#xA;&#x9;&#x9;&#x9;return -1;&#xA;&#x9;&#x9;} else if (o1.getSuit() == 'H') {&#xA;&#x9;&#x9;&#x9;return 1;&#xA;&#x9;&#x9;} else if (o2.getSuit() == 'H') {&#xA;&#x9;&#x9;&#x9;return -1;&#xA;&#x9;&#x9;} else if (o1.getSuit() == 'D') {&#xA;&#x9;&#x9;&#x9;return 1;&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;return -1;&#xA;&#x9;&#x9;}&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.1/@attempts.2/@edit" start="38" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551447557852" resourcePath="/ovinger/src/interfaces/CardComparator.java" sizeMeasure="66" className="interfaces.CardComparator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;System.out.println(&quot;test&quot;);&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.1/@attempts.3/@edit" start="1200" end="-3"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551447564150" resourcePath="/ovinger/src/interfaces/CardComparator.java" sizeMeasure="62" className="interfaces.CardComparator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}" edit="/1/@proposals.0/@proposals.1/@attempts.4/@edit" start="1200" end="-2"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1551447520905" mode="run" className="interfaces.Card">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.Card</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1551447531583" mode="run" className="interfaces.Card">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.Card</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1551447541872" mode="run" className="interfaces.Card">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.Card</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>test
</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.3/@q" answer="/0/@parts.0/@tasks.3/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1551447557746" mode="run" className="interfaces.CardComparator">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.CardComparator</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>test
</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.4/@q" answer="/0/@parts.0/@tasks.4/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551447431077" completion="1.0" testRunName="interfaces.CardComparatorTest" successCount="3">
          <successTests>testAceIsHighest</successTests>
          <successTests>testDiamondIsTrumph</successTests>
          <successTests>testNormal</successTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a">
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551447460543" elementId="interfaces.CardDeck" action="suspend.breakpoint"/>
      </proposals>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a">
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
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a">
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
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a">
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
