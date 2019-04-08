<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="StringGridImpl">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Copy the source code for the StringGrid interface."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="interfaces.StringGrid"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the StringGridImpl class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="interfaces.StringGridImpl"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the StringGridImpl class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="interfaces.StringGridImpl"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="StringGridIterator">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the StringGridIterator class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="interfaces.StringGridIterator"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the StringGridIterator class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="interfaces.StringGridIterator"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the StringGridTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="interfaces.StringGridTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="interfaces.StringGrid*" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551709520673" resourcePath="/ovinger/src/interfaces/StringGrid.java" sizeMeasure="5" className="interfaces.StringGrid">
          <edit xsi:type="exercise:StringEdit" storedString="package interfaces;&#xA;&#xA;public interface StringGrid {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551709552639" resourcePath="/ovinger/src/interfaces/StringGrid.java" sizeMeasure="10" className="interfaces.StringGrid">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;public int getRowCount();&#xA;&#x9;public int getColumnCount();&#xA;&#x9;public String getElement(int row, int column);&#xA;&#x9;public void setElement(int row, int column, String element);&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="51" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551714375814" resourcePath="/ovinger/src/interfaces/StringGrid.java" sizeMeasure="10" className="interfaces.StringGrid">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="extends Iterable&lt;String> " edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="49" end="-175"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551709564852" resourcePath="/ovinger/src/interfaces/StringGridImpl.java" sizeMeasure="5" className="interfaces.StringGridImpl">
          <edit xsi:type="exercise:StringEdit" storedString="package interfaces;&#xA;&#xA;public class StringGridImpl {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551710303051" resourcePath="/ovinger/src/interfaces/StringGridImpl.java" sizeMeasure="38" errorCount="1" className="interfaces.StringGridImpl">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.ArrayList;&#xA;import java.util.List;&#xA;&#xA;public class StringGridImpl implements StringGrid {&#xA;&#x9;&#xA;&#x9;List&lt;List&lt;String>> grid = new ArrayList&lt;>(ArrayList&lt;>());&#xA;&#x9;&#xA;&#x9;public StringGridImpl(int rows, int columnCount) {&#xA;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int getRowCount() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return 0;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int getColumnCount() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return 0;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String getElement(int row, int column) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return null;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void setElement(int row, int column, String element) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.1/@attempts.0/@edit" start="21" end="-5"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="8" charStart="180" charEnd="181" severity="2" problemCategory="20" problemType="1610612971"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551710338380" resourcePath="/ovinger/src/interfaces/StringGridImpl.java" sizeMeasure="39" errorCount="1" className="interfaces.StringGridImpl">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Arrays;&#xA;import java.util.List;&#xA;&#xA;public class StringGridImpl implements StringGrid {&#xA;&#x9;&#xA;&#x9;List&lt;List&lt;String>> grid = new ArrayList&lt;>(Arrays.asList(ArrayList&lt;>()" edit="/1/@proposals.0/@proposals.1/@attempts.1/@edit" start="66" end="-487"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="9" charStart="219" charEnd="220" severity="2" problemCategory="20" problemType="1610612971"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551710498784" resourcePath="/ovinger/src/interfaces/StringGridImpl.java" sizeMeasure="38" className="interfaces.StringGridImpl">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="List;&#xA;&#xA;public class StringGridImpl implements StringGrid {&#xA;&#x9;&#xA;&#x9;List&lt;List&lt;String>> grid = new ArrayList&lt;>(new ArrayList&lt;>(" edit="/1/@proposals.0/@proposals.1/@attempts.2/@edit" start="66" end="-487"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551710689102" resourcePath="/ovinger/src/interfaces/StringGridImpl.java" sizeMeasure="35" className="interfaces.StringGridImpl">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="return grid.size();&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int getColumnCount() {&#xA;&#x9;&#x9;return grid.get(0).size();&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String getElement(int row, int column) {&#xA;&#x9;&#x9;return grid.get(row).get(column);&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void setElement(int row, int column, String element) {&#xA;&#x9;&#x9;grid.get(row).set(column, element);" edit="/1/@proposals.0/@proposals.1/@attempts.3/@edit" start="290" end="-11"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551711316752" resourcePath="/ovinger/src/interfaces/StringGridImpl.java" sizeMeasure="35" className="interfaces.StringGridImpl">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=";&#xA;&#x9;&#xA;&#x9;public StringGridImpl(int rows, int columnCount) {&#xA;&#x9;&#x9;this.grid = new ArrayList&lt;>(new ArrayList&lt;>(columnCount));" edit="/1/@proposals.0/@proposals.1/@attempts.4/@edit" start="151" end="-367"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551711404927" resourcePath="/ovinger/src/interfaces/StringGridImpl.java" sizeMeasure="40" className="interfaces.StringGridImpl">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;StringGridImpl g1 = new StringGridImpl(10, 20);&#xA;&#x9;&#x9;System.out.println(g1.getColumnCount());&#xA;&#x9;&#x9;System.out.println(g1.getRowCount());" edit="/1/@proposals.0/@proposals.1/@attempts.5/@edit" start="625" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551711548722" resourcePath="/ovinger/src/interfaces/StringGridImpl.java" sizeMeasure="43" className="interfaces.StringGridImpl">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="rows);&#xA;&#x9;&#x9;for (int i = 0; i &lt; columnCount; i++) {&#xA;&#x9;&#x9;&#x9;grid.add(new ArrayList&lt;>(columnCount));&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.1/@attempts.6/@edit" start="237" end="-544"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551711636528" resourcePath="/ovinger/src/interfaces/StringGridImpl.java" sizeMeasure="43" className="interfaces.StringGridImpl">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="columnCount);&#xA;&#x9;&#x9;for (int i = 0; i &lt; columnCount; i++) {&#xA;&#x9;&#x9;&#x9;grid.add(new ArrayList&lt;>(rows" edit="/1/@proposals.0/@proposals.1/@attempts.7/@edit" start="237" end="-551"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551711725299" resourcePath="/ovinger/src/interfaces/StringGridImpl.java" sizeMeasure="43" className="interfaces.StringGridImpl">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="rows);&#xA;&#x9;&#x9;for (int i = 0; i &lt; rows; i++) {&#xA;&#x9;&#x9;&#x9;grid.add(new ArrayList&lt;>(columnCount" edit="/1/@proposals.0/@proposals.1/@attempts.8/@edit" start="237" end="-551"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551711742598" resourcePath="/ovinger/src/interfaces/StringGridImpl.java" sizeMeasure="43" errorCount="1" className="interfaces.StringGridImpl">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(grid.get(0)" edit="/1/@proposals.0/@proposals.1/@attempts.9/@edit" start="439" end="-406"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="23" charStart="418" charEnd="434" severity="2" problemCategory="50" problemType="603979884"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551711752677" resourcePath="/ovinger/src/interfaces/StringGridImpl.java" sizeMeasure="44" className="interfaces.StringGridImpl">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;return 0;&#xA;&#x9;" edit="/1/@proposals.0/@proposals.1/@attempts.10/@edit" start="473" end="-402"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551711773352" resourcePath="/ovinger/src/interfaces/StringGridImpl.java" sizeMeasure="44" className="interfaces.StringGridImpl">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=".size()" edit="/1/@proposals.0/@proposals.1/@attempts.11/@edit" start="469" end="-418"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551711783325" resourcePath="/ovinger/src/interfaces/StringGridImpl.java" sizeMeasure="45" errorCount="1" className="interfaces.StringGridImpl">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(grid);&#xA;&#x9;&#x9;return grid.size();&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int getColumnCount() {&#xA;&#x9;&#x9;System.out.println(grid.get(0)." edit="/1/@proposals.0/@proposals.1/@attempts.12/@edit" start="371" end="-418"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="25" charStart="497" charEnd="498" severity="2" problemCategory="20" problemType="1610612967"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551711789045" resourcePath="/ovinger/src/interfaces/StringGridImpl.java" sizeMeasure="45" className="interfaces.StringGridImpl">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=")" edit="/1/@proposals.0/@proposals.1/@attempts.13/@edit" start="497" end="-417"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551711935349" resourcePath="/ovinger/src/interfaces/StringGridImpl.java" sizeMeasure="46" className="interfaces.StringGridImpl">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Arrays;&#xA;import java.util.List;&#xA;&#xA;public class StringGridImpl implements StringGrid {&#xA;&#x9;&#xA;&#x9;List&lt;List&lt;String>> grid;&#xA;&#x9;&#xA;&#x9;public StringGridImpl(int rows, int columnCount) {&#xA;&#x9;&#x9;this.grid = new ArrayList&lt;>(rows);&#xA;&#x9;&#x9;for (int i = 0; i &lt; rows; i++) {&#xA;&#x9;&#x9;&#x9;grid.add(Arrays.asList(new String[columnCount]" edit="/1/@proposals.0/@proposals.1/@attempts.14/@edit" start="66" end="-597"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551711950154" resourcePath="/ovinger/src/interfaces/StringGridImpl.java" sizeMeasure="45" className="interfaces.StringGridImpl">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="return grid.get(0).size()" edit="/1/@proposals.0/@proposals.1/@attempts.15/@edit" start="502" end="-405"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551713974808" resourcePath="/ovinger/src/interfaces/StringGridImpl.java" sizeMeasure="44" className="interfaces.StringGridImpl">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="r" edit="/1/@proposals.0/@proposals.1/@attempts.16/@edit" start="406" end="-497"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551714005961" resourcePath="/ovinger/src/interfaces/StringGridImpl.java" sizeMeasure="45" className="interfaces.StringGridImpl">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;System.out.println(grid);&#xA;&#x9;" edit="/1/@proposals.0/@proposals.1/@attempts.17/@edit" start="362" end="-542"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551714025138" resourcePath="/ovinger/src/interfaces/StringGridImpl.java" sizeMeasure="45" className="interfaces.StringGridImpl">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" + &quot;\n&quot;" edit="/1/@proposals.0/@proposals.1/@attempts.18/@edit" start="386" end="-546"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551714580104" resourcePath="/ovinger/src/interfaces/StringGridImpl.java" sizeMeasure="56" errorCount="1" className="interfaces.StringGridImpl">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Iterator;&#xA;import java.util.List;&#xA;&#xA;public class StringGridImpl implements StringGrid {&#xA;&#x9;&#xA;&#x9;List&lt;List&lt;String>> grid;&#xA;&#x9;&#xA;&#x9;public StringGridImpl(int rows, int columnCount) {&#xA;&#x9;&#x9;this.grid = new ArrayList&lt;>(rows);&#xA;&#x9;&#x9;for (int i = 0; i &lt; rows; i++) {&#xA;&#x9;&#x9;&#x9;grid.add(Arrays.asList(new String[columnCount]));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;System.out.println(grid + &quot;\n&quot;);&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int getRowCount() {&#xA;&#x9;&#x9;return grid.size();&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int getColumnCount() {&#xA;&#x9;&#x9;return grid.get(0).size();&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String getElement(int row, int column) {&#xA;&#x9;&#x9;return grid.get(row).get(column);&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void setElement(int row, int column, String element) {&#xA;&#x9;&#x9;grid.get(row).set(column, element);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;StringGridImpl g1 = new StringGridImpl(10, 20);&#xA;&#x9;&#x9;System.out.println(g1.getColumnCount());&#xA;&#x9;&#x9;System.out.println(g1.getRowCount());&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;for (String s : this) {&#xA;&#x9;&#x9;&#x9;System.out.println(s);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public Iterator&lt;String> iterator() {&#xA;&#x9;&#x9;return new StringGridIterator(this, true);&#xA;&#x9;}&#xA;&#x9;" edit="/1/@proposals.0/@proposals.1/@attempts.19/@edit" start="91" end="-5"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="45" charStart="980" charEnd="984" severity="2" problemCategory="60" problemType="536871112"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551714591921" resourcePath="/ovinger/src/interfaces/StringGridImpl.java" sizeMeasure="56" className="interfaces.StringGridImpl">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="g1" edit="/1/@proposals.0/@proposals.1/@attempts.20/@edit" start="980" end="-141"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551714614186" resourcePath="/ovinger/src/interfaces/StringGridImpl.java" sizeMeasure="55" className="interfaces.StringGridImpl">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}" edit="/1/@proposals.0/@proposals.1/@attempts.21/@edit" start="389" end="-698"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551714618820" resourcePath="/ovinger/src/interfaces/StringGridImpl.java" sizeMeasure="53" className="interfaces.StringGridImpl">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;" edit="/1/@proposals.0/@proposals.1/@attempts.22/@edit" start="843" end="-161"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1551711406995" mode="run" className="interfaces.StringGridImpl">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.StringGridImpl</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.IndexOutOfBoundsException: Index 0 out of bounds for length 0
	at java.base/jdk.internal.util.Preconditions.outOfBounds(Preconditions.java:64)
	at java.base/jdk.internal.util.Preconditions.outOfBoundsCheckIndex(Preconditions.java:70)
	at java.base/jdk.internal.util.Preconditions.checkIndex(Preconditions.java:248)
	at java.base/java.util.Objects.checkIndex(Objects.java:372)
	at java.base/java.util.ArrayList.get(ArrayList.java:458)
	at ovinger/interfaces.StringGridImpl.getColumnCount(StringGridImpl.java:21)
	at ovinger/interfaces.StringGridImpl.main(StringGridImpl.java:36)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1551711419908" mode="run" className="interfaces.StringGridImpl">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.StringGridImpl</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.IndexOutOfBoundsException: Index 0 out of bounds for length 0
	at java.base/jdk.internal.util.Preconditions.outOfBounds(Preconditions.java:64)
	at java.base/jdk.internal.util.Preconditions.outOfBoundsCheckIndex(Preconditions.java:70)
	at java.base/jdk.internal.util.Preconditions.checkIndex(Preconditions.java:248)
	at java.base/java.util.Objects.checkIndex(Objects.java:372)
	at java.base/java.util.ArrayList.get(ArrayList.java:458)
	at ovinger/interfaces.StringGridImpl.getColumnCount(StringGridImpl.java:21)
	at ovinger/interfaces.StringGridImpl.main(StringGridImpl.java:36)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1551711550566" mode="run" className="interfaces.StringGridImpl">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.StringGridImpl</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>0
20
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1551711579121" mode="run" className="interfaces.StringGridImpl">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.StringGridImpl</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>0
20
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1551711638361" mode="run" className="interfaces.StringGridImpl">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.StringGridImpl</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>0
20
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1551711725196" mode="run" className="interfaces.StringGridImpl">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.StringGridImpl</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>0
10
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1551711742494" mode="run" className="interfaces.StringGridImpl">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.StringGridImpl</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.Error: Unresolved compilation problem: 
	This method must return a result of type int

	at ovinger/interfaces.StringGridImpl.getColumnCount(StringGridImpl.java:23)
	at ovinger/interfaces.StringGridImpl.main(StringGridImpl.java:39)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1551711752526" mode="run" className="interfaces.StringGridImpl">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.StringGridImpl</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>[]
0
10
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1551711773231" mode="run" className="interfaces.StringGridImpl">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.StringGridImpl</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>0
0
10
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1551711783220" mode="run" className="interfaces.StringGridImpl">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.StringGridImpl</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.Error: Unresolved compilation problem: 
	Syntax error on token &quot;.&quot;, Identifier expected after this token

	at ovinger/interfaces.StringGridImpl.getColumnCount(StringGridImpl.java:25)
	at ovinger/interfaces.StringGridImpl.main(StringGridImpl.java:41)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1551711788946" mode="run" className="interfaces.StringGridImpl">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.StringGridImpl</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>[]
0
[[], [], [], [], [], [], [], [], [], []]
10
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1551711936289" mode="run" className="interfaces.StringGridImpl">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.StringGridImpl</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>[null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null]
0
[[null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null], [null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null], [null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null], [null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null], [null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null], [null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null], [null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null], [null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null], [null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null], [null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null]]
10
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1551711951330" mode="run" className="interfaces.StringGridImpl">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.StringGridImpl</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>20
[[null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null], [null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null], [null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null], [null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null], [null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null], [null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null], [null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null], [null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null], [null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null], [null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null]]
10
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1551713974701" mode="run" className="interfaces.StringGridImpl">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.StringGridImpl</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>20
10
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1551714579992" mode="run" className="interfaces.StringGridImpl">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.StringGridImpl</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.Error: Unresolved compilation problem: 
	Cannot use this in a static context

	at ovinger/interfaces.StringGridImpl.main(StringGridImpl.java:45)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1551714592789" mode="run" className="interfaces.StringGridImpl">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.StringGridImpl</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>[[null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null], [null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null], [null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null], [null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null], [null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null], [null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null], [null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null], [null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null], [null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null], [null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null]]

20
10
1
null
2
null
3
null
4
null
5
null
6
null
7
null
8
null
9
null
10
null
11
null
12
null
13
null
14
null
15
null
16
null
17
null
18
null
19
null
0
null
1
null
2
null
3
null
4
null
5
null
6
null
7
null
8
null
9
null
10
null
11
null
12
null
13
null
14
null
15
null
16
null
17
null
18
null
19
null
0
null
1
null
2
null
3
null
4
null
5
null
6
null
7
null
8
null
9
null
10
null
11
null
12
null
13
null
14
null
15
null
16
null
17
null
18
null
19
null
0
null
1
null
2
null
3
null
4
null
5
null
6
null
7
null
8
null
9
null
10
null
11
null
12
null
13
null
14
null
15
null
16
null
17
null
18
null
19
null
0
null
1
null
2
null
3
null
4
null
5
null
6
null
7
null
8
null
9
null
10
null
11
null
12
null
13
null
14
null
15
null
16
null
17
null
18
null
19
null
0
null
1
null
2
null
3
null
4
null
5
null
6
null
7
null
8
null
9
null
10
null
11
null
12
null
13
null
14
null
15
null
16
null
17
null
18
null
19
null
0
null
1
null
2
null
3
null
4
null
5
null
6
null
7
null
8
null
9
null
10
null
11
null
12
null
13
null
14
null
15
null
16
null
17
null
18
null
19
null
0
null
1
null
2
null
3
null
4
null
5
null
6
null
7
null
8
null
9
null
10
null
11
null
12
null
13
null
14
null
15
null
16
null
17
null
18
null
19
null
0
null
1
null
2
null
3
null
4
null
5
null
6
null
7
null
8
null
9
null
10
null
11
null
12
null
13
null
14
null
15
null
16
null
17
null
18
null
19
null
0
null
1
null
2
null
3
null
4
null
5
null
6
null
7
null
8
null
9
null
10
null
11
null
12
null
13
null
14
null
15
null
16
null
17
null
18
null
19
null
0
null
</consoleOutput>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1551714621672" mode="run" className="interfaces.StringGridImpl">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.StringGridImpl</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1
null
2
null
3
null
4
null
5
null
6
null
7
null
8
null
9
null
10
null
11
null
12
null
13
null
14
null
15
null
16
null
17
null
18
null
19
null
0
null
1
null
2
null
3
null
4
null
5
null
6
null
7
null
8
null
9
null
10
null
11
null
12
null
13
null
14
null
15
null
16
null
17
null
18
null
19
null
0
null
1
null
2
null
3
null
4
null
5
null
6
null
7
null
8
null
9
null
10
null
11
null
12
null
13
null
14
null
15
null
16
null
17
null
18
null
19
null
0
null
1
null
2
null
3
null
4
null
5
null
6
null
7
null
8
null
9
null
10
null
11
null
12
null
13
null
14
null
15
null
16
null
17
null
18
null
19
null
0
null
1
null
2
null
3
null
4
null
5
null
6
null
7
null
8
null
9
null
10
null
11
null
12
null
13
null
14
null
15
null
16
null
17
null
18
null
19
null
0
null
1
null
2
null
3
null
4
null
5
null
6
null
7
null
8
null
9
null
10
null
11
null
12
null
13
null
14
null
15
null
16
null
17
null
18
null
19
null
0
null
1
null
2
null
3
null
4
null
5
null
6
null
7
null
8
null
9
null
10
null
11
null
12
null
13
null
14
null
15
null
16
null
17
null
18
null
19
null
0
null
1
null
2
null
3
null
4
null
5
null
6
null
7
null
8
null
9
null
10
null
11
null
12
null
13
null
14
null
15
null
16
null
17
null
18
null
19
null
0
null
1
null
2
null
3
null
4
null
5
null
6
null
7
null
8
null
9
null
10
null
11
null
12
null
13
null
14
null
15
null
16
null
17
null
18
null
19
null
0
null
1
null
2
null
3
null
4
null
5
null
6
null
7
null
8
null
9
null
10
null
11
null
12
null
13
null
14
null
15
null
16
null
17
null
18
null
19
null
0
null
</consoleOutput>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551710712183" resourcePath="/ovinger/src/interfaces/StringGridIterator.java" sizeMeasure="5" className="interfaces.StringGridIterator">
          <edit xsi:type="exercise:StringEdit" storedString="package interfaces;&#xA;&#xA;public class StringGridIterator {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551711176707" resourcePath="/ovinger/src/interfaces/StringGridIterator.java" sizeMeasure="44" className="interfaces.StringGridIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.Iterator;&#xA;&#xA;public class StringGridIterator implements Iterator&lt;String>{&#xA;&#x9;&#xA;&#x9;private StringGrid stringGrid;&#xA;&#x9;private boolean rowMajor;&#xA;&#x9;private int row, col = 0;&#xA;&#xA;&#x9;public StringGridIterator(StringGrid stringGrid, boolean rowMajor) {&#xA;&#x9;&#x9;this.stringGrid = stringGrid;&#xA;&#x9;&#x9;this.rowMajor = rowMajor;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public boolean hasNext() {&#xA;&#x9;&#x9;return stringGrid.getRowCount() > row + 1 || stringGrid.getColumnCount() > col + 1;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String next() {&#xA;&#x9;&#x9;if (rowMajor) {&#xA;&#x9;&#x9;&#x9;if (col + 1 &lt; stringGrid.getColumnCount()) {&#xA;&#x9;&#x9;&#x9;&#x9;col++;&#xA;&#x9;&#x9;&#x9;&#x9;return stringGrid.getElement(row, col - 1);&#xA;&#x9;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;&#x9;row++;&#xA;&#x9;&#x9;&#x9;&#x9;col = 0;&#xA;&#x9;&#x9;&#x9;&#x9;return stringGrid.getElement(row, col);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;if (row + 1 &lt; stringGrid.getRowCount()) {&#xA;&#x9;&#x9;&#x9;&#x9;row++;&#xA;&#x9;&#x9;&#x9;&#x9;return stringGrid.getElement(row - 1, col);&#xA;&#x9;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;&#x9;col++;&#xA;&#x9;&#x9;&#x9;&#x9;row = 0;&#xA;&#x9;&#x9;&#x9;&#x9;return stringGrid.getElement(row, col);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;}" edit="/1/@proposals.1/@proposals.0/@attempts.0/@edit" start="21" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551711207712" resourcePath="/ovinger/src/interfaces/StringGridIterator.java" sizeMeasure="48" className="interfaces.StringGridIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.NoSuchElementException;&#xA;&#xA;public class StringGridIterator implements Iterator&lt;String>{&#xA;&#x9;&#xA;&#x9;private StringGrid stringGrid;&#xA;&#x9;private boolean rowMajor;&#xA;&#x9;private int row, col = 0;&#xA;&#xA;&#x9;public StringGridIterator(StringGrid stringGrid, boolean rowMajor) {&#xA;&#x9;&#x9;this.stringGrid = stringGrid;&#xA;&#x9;&#x9;this.rowMajor = rowMajor;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public boolean hasNext() {&#xA;&#x9;&#x9;return stringGrid.getRowCount() > row + 1 || stringGrid.getColumnCount() > col + 1;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String next() {&#xA;&#x9;&#x9;if (! this.hasNext()) {&#xA;&#x9;&#x9;&#x9;throw new NoSuchElementException();&#xA;&#x9;&#x9;}" edit="/1/@proposals.1/@proposals.0/@attempts.1/@edit" start="48" end="-422"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551711228036" resourcePath="/ovinger/src/interfaces/StringGridIterator.java" sizeMeasure="53" className="interfaces.StringGridIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;&#x9;&#x9;if (rowMajor) {&#xA;&#x9;&#x9;&#x9;if (col + 1 &lt; stringGrid.getColumnCount()) {&#xA;&#x9;&#x9;&#x9;&#x9;col++;&#xA;&#x9;&#x9;&#x9;&#x9;return stringGrid.getElement(row, col - 1);&#xA;&#x9;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;&#x9;row++;&#xA;&#x9;&#x9;&#x9;&#x9;col = 0;&#xA;&#x9;&#x9;&#x9;&#x9;return stringGrid.getElement(row, col);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;if (row + 1 &lt; stringGrid.getRowCount()) {&#xA;&#x9;&#x9;&#x9;&#x9;row++;&#xA;&#x9;&#x9;&#x9;&#x9;return stringGrid.getElement(row - 1, col);&#xA;&#x9;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;&#x9;col++;&#xA;&#x9;&#x9;&#x9;&#x9;row = 0;&#xA;&#x9;&#x9;&#x9;&#x9;return stringGrid.getElement(row, col);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void remove() {&#xA;&#x9;&#x9;throw new IllegalArgumentException(&quot;Not permitted&quot;);" edit="/1/@proposals.1/@proposals.0/@attempts.2/@edit" start="610" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551712014594" resourcePath="/ovinger/src/interfaces/StringGridIterator.java" sizeMeasure="53" className="interfaces.StringGridIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="! " edit="/1/@proposals.1/@proposals.0/@attempts.3/@edit" start="617" end="-499"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551712270932" resourcePath="/ovinger/src/interfaces/StringGridIterator.java" sizeMeasure="53" className="interfaces.StringGridIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="r" edit="/1/@proposals.1/@proposals.0/@attempts.4/@edit" start="617" end="-498"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551712751765" resourcePath="/ovinger/src/interfaces/StringGridIterator.java" sizeMeasure="48" className="interfaces.StringGridIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="String s;&#xA;&#x9;&#x9;if (! this.hasNext()) {&#xA;&#x9;&#x9;&#x9;throw new NoSuchElementException();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;s = stringGrid.getElement(row, col);&#xA;&#xA;&#x9;&#x9;if (rowMajor) {&#xA;&#x9;&#x9;&#x9;col = (col + 1) % stringGrid.getColumnCount();&#xA;&#x9;&#x9;&#x9;if (col == 0) {&#xA;&#x9;&#x9;&#x9;&#x9;row++;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;row = (row + 1)% stringGrid.getRowCount();&#xA;&#x9;&#x9;&#x9;if (row == 0) {&#xA;&#x9;&#x9;&#x9;&#x9;col++;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return s;" edit="/1/@proposals.1/@proposals.0/@attempts.5/@edit" start="541" end="-92"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551712909335" resourcePath="/ovinger/src/interfaces/StringGridIterator.java" sizeMeasure="48" className="interfaces.StringGridIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="|| stringGrid.getColumnCount() > col" edit="/1/@proposals.1/@proposals.0/@attempts.6/@edit" start="454" end="-464"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551712937548" resourcePath="/ovinger/src/interfaces/StringGridIterator.java" sizeMeasure="48" className="interfaces.StringGridIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="+ 1 || stringGrid.getColumnCount() > col + 1" edit="/1/@proposals.1/@proposals.0/@attempts.7/@edit" start="454" end="-464"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551713286945" resourcePath="/ovinger/src/interfaces/StringGridIterator.java" sizeMeasure="49" className="interfaces.StringGridIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(row + &quot; &quot; + col);&#xA;&#x9;&#x9;" edit="/1/@proposals.1/@proposals.0/@attempts.8/@edit" start="861" end="-101"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551713337963" resourcePath="/ovinger/src/interfaces/StringGridIterator.java" sizeMeasure="50" className="interfaces.StringGridIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#x9;System.out.println(row + &quot; &quot; + col + &quot; &quot; + stringGrid.getColumnCount());&#xA;" edit="/1/@proposals.1/@proposals.0/@attempts.9/@edit" start="659" end="-342"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551713467144" resourcePath="/ovinger/src/interfaces/StringGridIterator.java" sizeMeasure="50" className="interfaces.StringGridIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&quot;RowCount:&quot; + stringGrid.getRowCount() + &quot;, &quot; + &quot;ColumnCount: &quot; + stringGrid.getColumnCount());&#xA;&#x9;&#x9;System.out.println(&quot;Row: &quot; + row + &quot;, &quot; + &quot;Col: &quot; + col + &quot;, &quot; + &quot;RowMajor: &quot; + rowMajor);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if (rowMajor) {&#xA;&#x9;&#x9;&#x9;col = (col + 1) % stringGrid.getColumnCount();&#xA;&#x9;&#x9;&#x9;if (col == 0) {&#xA;&#x9;&#x9;&#x9;&#x9;row++;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;row = (row + 1) % stringGrid.getRowCount();&#xA;&#x9;&#x9;&#x9;if (row == 0) {&#xA;&#x9;&#x9;&#x9;&#x9;col++;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}" edit="/1/@proposals.1/@proposals.0/@attempts.10/@edit" start="680" end="-104"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551713490476" resourcePath="/ovinger/src/interfaces/StringGridIterator.java" sizeMeasure="51" className="interfaces.StringGridIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(col);&#xA;&#x9;&#x9;&#x9;" edit="/1/@proposals.1/@proposals.0/@attempts.11/@edit" start="943" end="-232"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551713583910" resourcePath="/ovinger/src/interfaces/StringGridIterator.java" sizeMeasure="52" className="interfaces.StringGridIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(stringGrid.getRowCount() > row + 1 || stringGrid.getColumnCount() > col + 1);&#xA;&#x9;&#x9;" edit="/1/@proposals.1/@proposals.0/@attempts.12/@edit" start="416" end="-787"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551713690337" resourcePath="/ovinger/src/interfaces/StringGridIterator.java" sizeMeasure="52" className="interfaces.StringGridIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&quot;Row:&quot; + row + &quot;,&quot; + &quot;Col:&quot; + col + &quot;, result:&quot; + (stringGrid.getRowCount() > row + 1 || stringGrid.getColumnCount() > col + 1)" edit="/1/@proposals.1/@proposals.0/@attempts.13/@edit" start="435" end="-792"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551713774219" resourcePath="/ovinger/src/interfaces/StringGridIterator.java" sizeMeasure="53" className="interfaces.StringGridIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(&quot;Rowcount:&quot; + stringGrid.getRowCount() + &quot;, ColCount:&quot; + stringGrid.getColumnCount());&#xA;&#x9;&#x9;" edit="/1/@proposals.1/@proposals.0/@attempts.14/@edit" start="567" end="-787"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551713876123" resourcePath="/ovinger/src/interfaces/StringGridIterator.java" sizeMeasure="53" className="interfaces.StringGridIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="+&quot;\n&quot; + &quot;Rowcount:&quot; + stringGrid.getRowCount() + &quot;, ColCount:&quot; + stringGrid.getColumnCount());&#xA;&#x9;&#x9;System.out.println(" edit="/1/@proposals.1/@proposals.0/@attempts.15/@edit" start="562" end="-792"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551714125155" resourcePath="/ovinger/src/interfaces/StringGridIterator.java" sizeMeasure="53" className="interfaces.StringGridIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="|| stringGrid.getColumnCount() > col" edit="/1/@proposals.1/@proposals.0/@attempts.16/@edit" start="720" end="-705"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551714179590" resourcePath="/ovinger/src/interfaces/StringGridIterator.java" sizeMeasure="57" className="interfaces.StringGridIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (rowMajor) {&#xA;&#x9;&#x9;&#x9;return stringGrid.getRowCount() > row + 1 || stringGrid.getColumnCount() > col;&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;return stringGrid.getRowCount() > row || stringGrid.getColumnCount() > col + 1;&#xA;&#x9;&#x9;}" edit="/1/@proposals.1/@proposals.0/@attempts.17/@edit" start="683" end="-704"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551714198717" resourcePath="/ovinger/src/interfaces/StringGridIterator.java" sizeMeasure="57" className="interfaces.StringGridIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="+ 1 || stringGrid.getColumnCount() > col" edit="/1/@proposals.1/@proposals.0/@attempts.18/@edit" start="834" end="-709"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551714212367" resourcePath="/ovinger/src/interfaces/StringGridIterator.java" sizeMeasure="57" className="interfaces.StringGridIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" + 1" edit="/1/@proposals.1/@proposals.0/@attempts.19/@edit" start="874" end="-709"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551714306626" resourcePath="/ovinger/src/interfaces/StringGridIterator.java" sizeMeasure="53" className="interfaces.StringGridIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="return stringGrid.getRowCount() > row &amp;&amp; stringGrid.getColumnCount() > col;" edit="/1/@proposals.1/@proposals.0/@attempts.20/@edit" start="683" end="-704"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551714332445" resourcePath="/ovinger/src/interfaces/StringGridIterator.java" sizeMeasure="47" className="interfaces.StringGridIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="return stringGrid.getRowCount() > row &amp;&amp; stringGrid.getColumnCount() > col;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String next() {&#xA;&#x9;&#x9;if (! this.hasNext()) {&#xA;&#x9;&#x9;&#x9;throw new NoSuchElementException();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;String s = stringGrid.getElement(row, col);" edit="/1/@proposals.1/@proposals.0/@attempts.21/@edit" start="416" end="-332"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551711243563" completion="0.0" testRunName="interfaces.StringGridTest" errorCount="3">
          <errorTests>testGrid</errorTests>
          <errorTests>testGridIteratorColumnMajor</errorTests>
          <errorTests>testGridIteratorRowMajor</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551711323501" completion="0.0" testRunName="interfaces.StringGridTest" errorCount="3">
          <errorTests>testGrid</errorTests>
          <errorTests>testGridIteratorColumnMajor</errorTests>
          <errorTests>testGridIteratorRowMajor</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551711557268" completion="0.0" testRunName="interfaces.StringGridTest" errorCount="3">
          <errorTests>testGrid</errorTests>
          <errorTests>testGridIteratorColumnMajor</errorTests>
          <errorTests>testGridIteratorRowMajor</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551711564463" completion="0.0" testRunName="interfaces.StringGridTest" errorCount="3">
          <errorTests>testGrid</errorTests>
          <errorTests>testGridIteratorColumnMajor</errorTests>
          <errorTests>testGridIteratorRowMajor</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551711960445" completion="0.3333333333333333" testRunName="interfaces.StringGridTest" successCount="1" failureCount="2">
          <successTests>testGrid</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551712015290" completion="0.3333333333333333" testRunName="interfaces.StringGridTest" successCount="1" failureCount="2">
          <successTests>testGrid</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551712023011" completion="0.3333333333333333" testRunName="interfaces.StringGridTest" successCount="1" failureCount="2">
          <successTests>testGrid</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551712028284" completion="0.3333333333333333" testRunName="interfaces.StringGridTest" successCount="1" failureCount="2">
          <successTests>testGrid</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551712757543" completion="0.3333333333333333" testRunName="interfaces.StringGridTest" successCount="1" failureCount="2">
          <successTests>testGrid</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551712915856" completion="0.3333333333333333" testRunName="interfaces.StringGridTest" successCount="1" failureCount="2">
          <successTests>testGrid</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551712940398" completion="0.3333333333333333" testRunName="interfaces.StringGridTest" successCount="1" failureCount="2">
          <successTests>testGrid</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551713290796" completion="0.3333333333333333" testRunName="interfaces.StringGridTest" successCount="1" failureCount="2">
          <successTests>testGrid</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551713338926" completion="0.3333333333333333" testRunName="interfaces.StringGridTest" successCount="1" failureCount="2">
          <successTests>testGrid</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551713468028" completion="0.3333333333333333" testRunName="interfaces.StringGridTest" successCount="1" failureCount="2">
          <successTests>testGrid</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551713491504" completion="0.3333333333333333" testRunName="interfaces.StringGridTest" successCount="1" failureCount="2">
          <successTests>testGrid</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551713584799" completion="0.3333333333333333" testRunName="interfaces.StringGridTest" successCount="1" failureCount="2">
          <successTests>testGrid</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551713692965" completion="0.3333333333333333" testRunName="interfaces.StringGridTest" successCount="1" failureCount="2">
          <successTests>testGrid</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551713775248" completion="0.3333333333333333" testRunName="interfaces.StringGridTest" successCount="1" failureCount="2">
          <successTests>testGrid</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551713876945" completion="0.3333333333333333" testRunName="interfaces.StringGridTest" successCount="1" failureCount="2">
          <successTests>testGrid</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551713985029" completion="0.3333333333333333" testRunName="interfaces.StringGridTest" successCount="1" failureCount="2">
          <successTests>testGrid</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551714006703" completion="0.3333333333333333" testRunName="interfaces.StringGridTest" successCount="1" failureCount="2">
          <successTests>testGrid</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551714025962" completion="0.3333333333333333" testRunName="interfaces.StringGridTest" successCount="1" failureCount="2">
          <successTests>testGrid</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551714128031" completion="0.3333333333333333" testRunName="interfaces.StringGridTest" successCount="1" failureCount="2">
          <successTests>testGrid</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551714182697" completion="0.3333333333333333" testRunName="interfaces.StringGridTest" successCount="1" failureCount="2">
          <successTests>testGrid</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551714202439" completion="0.3333333333333333" testRunName="interfaces.StringGridTest" successCount="1" failureCount="2">
          <successTests>testGrid</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551714213197" completion="0.3333333333333333" testRunName="interfaces.StringGridTest" successCount="1" failureCount="2">
          <successTests>testGrid</successTests>
          <failureTests>testGridIteratorColumnMajor</failureTests>
          <failureTests>testGridIteratorRowMajor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551714312456" completion="1.0" testRunName="interfaces.StringGridTest" successCount="3">
          <successTests>testGrid</successTests>
          <successTests>testGridIteratorColumnMajor</successTests>
          <successTests>testGridIteratorRowMajor</successTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.2">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.2/@tasks.0/@q" answer="/0/@parts.2/@tasks.0/@a">
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551713183050" elementId="interfaces.StringGridIterator" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551713196078" elementId="interfaces.StringGridIterator" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551713287160" elementId="interfaces.StringGridIterator" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551713287164" elementId="interfaces.StringGridIterator" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551713338136" elementId="interfaces.StringGridIterator" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551713467302" elementId="interfaces.StringGridIterator" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551713490641" elementId="interfaces.StringGridIterator" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551714332649" elementId="interfaces.StringGridIterator" action="suspend.breakpoint"/>
      </proposals>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.2/@tasks.1/@q" answer="/0/@parts.2/@tasks.1/@a">
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
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048871105" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048879273" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048891872" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048892377" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048893691" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048894634" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048897970" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048899840" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048900143" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048900648" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048900899" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048901115" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048901333" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048901458" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048901635" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048901802" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048901964" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048902161" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048902341" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048902482" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048902656" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048902828" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048902998" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048903163" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048903335" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048903483" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048903668" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048903771" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048904265" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048904369" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048904431" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048904669" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048904810" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048904855" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048905094" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048905225" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048905356" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048905490" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048905632" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048905796" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048905937" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048906073" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048906215" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048906353" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048906489" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048906631" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048906760" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048906897" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048906948" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048907166" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048907282" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048907494" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048907551" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048907653" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048907752" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048907895" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048908054" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048908197" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048908329" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048908467" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048908569" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048908723" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048908916" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048909066" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048909121" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048909317" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048909371" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048909555" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048909696" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048909797" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048909968" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048910067" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048910168" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048910306" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048910447" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048910584" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048910684" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048910821" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048910878" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048911098" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048911233" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048911297" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048911382" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048911597" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048911730" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048911832" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048911967" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048912113" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048912246" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048960728" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048961241" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048961738" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048961863" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048961980" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048962136" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048962251" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048962306" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048962502" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048962666" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048962773" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048962923" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048962979" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048963199" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048963350" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048963493" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048963619" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048963728" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048963873" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048964013" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048964063" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048964308" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048964453" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048964593" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048964697" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048964886" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048965038" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048965094" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048965280" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048965420" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048965559" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048965655" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048965760" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048965939" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048965990" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048966220" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048966392" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048966530" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048966710" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048966889" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048966991" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048967219" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048967370" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048967475" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048967608" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048967662" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048967827" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048967988" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048968139" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048968205" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048968465" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048968618" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048968766" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048968916" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048969019" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048969158" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048969292" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048969425" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048969561" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048969708" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048969762" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048969905" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048970125" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048970173" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048970374" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048970426" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048970651" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048970800" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048970940" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048971084" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048971227" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048971371" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048971427" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048971622" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048971771" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048971874" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048971931" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048972119" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048972264" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048972405" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048972543" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048972643" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048972825" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048972965" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048973073" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048973218" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048973273" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048973364" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048973506" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048973674" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048973818" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048973959" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048974049" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048974157" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048974293" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048974520" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048974668" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048974819" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048974967" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048975076" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048975217" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048975368" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048975519" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048992884" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048993039" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048993238" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048993381" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048993567" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048993732" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048993872" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048994731" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048994917" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048995069" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048995252" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048995834" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048996039" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048996221" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048996363" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048996514" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048996671" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048996856" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048997038" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048997205" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048997350" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048997553" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048997772" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048997951" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048998102" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048998261" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048998435" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048998624" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048998790" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048998938" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048999104" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048999249" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048999366" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048999507" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048999690" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048999867" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552049000038" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552049000462" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552049000566" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552049000667" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552049000739" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552049000881" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552049001068" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552049001170" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552049001223" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552049001431" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552049001485" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552049042536" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552049045653" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552049047321" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552049048180" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552049049916" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552049050910" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552049051651" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552049052309" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552049052949" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552049054045" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552049054499" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552049055073" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552049055611" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552049056421" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552383890357" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552383915308" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552383927675" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552384015690" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552384018269" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552384019836" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552384061420" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552384067065" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552384072407" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552384074126" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552384127978" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552384134226" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552384136434" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552384137512" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552384158816" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552384163803" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552384167528" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
      </proposals>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.2/@tasks.2/@q" answer="/0/@parts.2/@tasks.2/@a">
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
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048867352" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552048991960" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552049029484" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552384056939" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552384157095" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1552384168774" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
      </proposals>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.2/@tasks.3/@q" answer="/0/@parts.2/@tasks.3/@a">
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1548700089318" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1550484729880" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1550484797541" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1550512267693" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1550512563813" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1550744794839" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1551447470232" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1551449531710" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1551449738024" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1552048255995" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1552048273078" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1552048350017" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1552048855765" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1552383852431" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1552383978266" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1552384006924" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1552384053525" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1552384131656" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
      </proposals>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
