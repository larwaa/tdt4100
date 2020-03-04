<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="StopWatch and StopWatchManager">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the StopWatch class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="objectstructures.StopWatch"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the StopWatchManager class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="objectstructures.StopWatchManager"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the StopWatch class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="objectstructures.StopWatch"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the StopWatchManager class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="objectstructures.StopWatchManager"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the StopWatchTest."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="objectstructures.StopWatchTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the StopWatchManagerTest."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="objectstructures.StopWatchManagerTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="objectstructures.StopWatch*" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550502750455" resourcePath="/ovinger/src/objectstructures/StopWatch.java" sizeMeasure="5" className="objectstructures.StopWatch">
          <edit xsi:type="exercise:StringEdit" storedString="package objectstructures;&#xA;&#xA;public class StopWatch {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550503689711" resourcePath="/ovinger/src/objectstructures/StopWatch.java" sizeMeasure="65" className="objectstructures.StopWatch">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;private int ticks;&#xA;&#x9;private int time;&#xA;&#x9;private int lastLapTime;&#xA;&#x9;private boolean started = false;&#xA;&#x9;private boolean stopped = false;&#xA;&#x9;&#xA;&#x9;public StopWatch() {&#xA;&#x9;&#x9;this.ticks = 0;&#xA;&#x9;&#x9;this.time = -1;&#xA;&#x9;&#x9;this.lastLapTime = -1;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getTicks() {&#xA;&#x9;&#x9;return ticks;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getTime() {&#xA;&#x9;&#x9;return time;&#xA;&#x9;}&#xA;&#xA;&#x9;public void tick(int ticks) {&#xA;&#x9;&#x9;this.ticks += ticks;&#xA;&#x9;&#x9;this.time += ticks;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getLapTime() {&#xA;&#x9;&#x9;if (getLastLapTime() == -1) {&#xA;&#x9;&#x9;&#x9;return this.time;&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;return this.time - getLastLapTime();&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getLastLapTime() {&#xA;&#x9;&#x9;return lastLapTime;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void start() {&#xA;&#x9;&#x9;this.time = 0;&#xA;&#x9;&#x9;this.started = true;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void lap() {&#xA;&#x9;&#x9;this.lastLapTime = getLapTime();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void stop() {&#xA;&#x9;&#x9;this.stopped = true;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean isStarted() {&#xA;&#x9;&#x9;return this.started;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean isStopped() {&#xA;&#x9;&#x9;return this.stopped;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="52" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550503732812" resourcePath="/ovinger/src/objectstructures/StopWatch.java" sizeMeasure="84" className="objectstructures.StopWatch">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="// forhindre direkte tilgang&#xA;&#x9;private int ticks, time, lastLapTime;&#xA;&#x9;private boolean started = false;&#xA;&#x9;private boolean stopped = false;&#xA;&#x9;&#xA;&#x9;public StopWatch() {&#xA;&#x9;&#x9;this.ticks = 0;&#xA;&#x9;&#x9;this.time = -1;&#xA;&#x9;&#x9;this.lastLapTime = -1;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getTicks() {&#xA;&#x9;&#x9;return ticks;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getTime() {&#xA;&#x9;&#x9;return time;&#xA;&#x9;}&#xA;&#xA;&#x9;public void tick(int ticks) {&#xA;&#x9;&#x9;if (ticks &lt; 0) {&#xA;&#x9;&#x9;&#x9;// må være positivt&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException();&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;this.ticks += ticks;&#xA;&#x9;&#x9;&#x9;this.time += ticks;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getLapTime() {&#xA;&#x9;&#x9;if (getLastLapTime() == -1) {&#xA;&#x9;&#x9;&#x9;return this.time;&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;return this.time - getLastLapTime();&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getLastLapTime() {&#xA;&#x9;&#x9;return lastLapTime;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public void start() {&#xA;&#x9;&#x9;if (isStarted() || isStopped()) {&#xA;&#x9;&#x9;&#x9;// får ikke starte dersom den allerede er startet, eller stoppet&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException();&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;this.time = 0;&#xA;&#x9;&#x9;&#x9;this.started = true;&#x9;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void lap() {&#xA;&#x9;&#x9;if (isStopped() || !isStarted()) {&#xA;&#x9;&#x9;&#x9;// får ikke kjøre om den er stoppet, eller ikke startet&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;this.lastLapTime = getLapTime();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void stop() {&#xA;&#x9;&#x9;if (isStopped() || !isStarted()) {&#xA;&#x9;&#x9;&#x9;// kan ikke stoppe om den ikke har startet, eller allerede er stoppet&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException();&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;this.stopped = true;&#xA;&#x9;&#x9;}&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="55" end="-129"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550503803003" resourcePath="/ovinger/src/objectstructures/StopWatch.java" sizeMeasure="84" className="objectstructures.StopWatch">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (this.isStarted() &amp;&amp; ! this.isStopped()){&#xA;&#x9;&#x9;&#x9;this.time += ticks;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;this.ticks += ticks;" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="493" end="-971"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550503876363" resourcePath="/ovinger/src/objectstructures/StopWatch.java" sizeMeasure="84" className="objectstructures.StopWatch">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this.getLastLapTime() == -1) {&#xA;&#x9;&#x9;&#x9;return this.time;&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;return this.time - this.getLastLapTime() - 1" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="629" end="-836"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550503887000" resourcePath="/ovinger/src/objectstructures/StopWatch.java" sizeMeasure="84" className="objectstructures.StopWatch">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=";" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="735" end="-835"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550504032056" resourcePath="/ovinger/src/objectstructures/StopWatch.java" sizeMeasure="91" className="objectstructures.StopWatch">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public static void main(String[] args) {&#xA;&#x9;&#x9;StopWatch s1 = new StopWatch();&#xA;&#x9;&#x9;s1.start();&#xA;&#x9;&#x9;s1.tick(4);&#xA;&#x9;&#x9;s1.lap();&#xA;&#x9;&#x9;System.out.println(s1.getLastLapTime());&#xA;&#x9;}&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="1565" end="-6"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550504055829" resourcePath="/ovinger/src/objectstructures/StopWatch.java" sizeMeasure="95" className="objectstructures.StopWatch">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;s1.tick(5);&#xA;&#x9;&#x9;s1.lap();&#xA;&#x9;&#x9;System.out.println(s1.getLastLapTime());&#xA;&#x9;&#x9;&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="1724" end="-9"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550504081302" resourcePath="/ovinger/src/objectstructures/StopWatch.java" sizeMeasure="100" className="objectstructures.StopWatch">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="s1.stop();&#xA;&#x9;&#x9;s1.tick(20);&#xA;&#x9;&#x9;s1.lap();&#xA;&#x9;&#x9;System.out.println(s1.getLastLapTime());&#xA;&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.7/@edit" start="1794" end="-11"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550504184660" resourcePath="/ovinger/src/objectstructures/StopWatch.java" sizeMeasure="101" className="objectstructures.StopWatch">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="lap();&#xA;&#x9;&#x9;&#x9;this." edit="/1/@proposals.0/@proposals.0/@attempts.8/@edit" start="1422" end="-467"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550504464336" resourcePath="/ovinger/src/objectstructures/StopWatch.java" sizeMeasure="103" className="objectstructures.StopWatch">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="isStopped()) {&#xA;&#x9;&#x9;&#x9;return 0;&#xA;&#x9;&#x9;} else if (this.getLastLapTime() == -1) {&#xA;&#x9;&#x9;&#x9;return this.time;&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;return this.time - this.getLastLapTime();&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getLastLapTime() {&#xA;&#x9;&#x9;return lastLapTime;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public void start() {&#xA;&#x9;&#x9;if (isStarted() || isStopped()) {&#xA;&#x9;&#x9;&#x9;// får ikke starte dersom den allerede er startet, eller stoppet&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException();&#xA;&#x9;&#x9;} else {&#xA;&#x9;&#x9;&#x9;this.time = 0;&#xA;&#x9;&#x9;&#x9;this.started = true;&#x9;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void lap() {&#xA;&#x9;&#x9;if (isStopped() || !isStarted()) {&#xA;&#x9;&#x9;&#x9;// får ikke kjøre om den er stoppet, eller ikke startet&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;this.lastLapTime = this." edit="/1/@proposals.0/@proposals.0/@attempts.9/@edit" start="634" end="-690"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550502707676" resourcePath="/ovinger/src/objectstructures/StopWatchManager.java" sizeMeasure="5" className="objectstructures.StopWatchManager">
          <edit xsi:type="exercise:StringEdit" storedString="package objectstructures;&#xA;&#xA;public class StopWatchManager {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550503682437" resourcePath="/ovinger/src/objectstructures/StopWatchManager.java" sizeMeasure="47" errorCount="2" className="objectstructures.StopWatchManager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.ArrayList;&#xA;import java.util.Collection;&#xA;import java.util.HashMap;&#xA;import java.util.List;&#xA;import java.util.Map;&#xA;&#xA;public class StopWatchManager {&#xA;&#x9;&#xA;&#x9;private Map&lt;String, StopWatch> allWatches = new HashMap&lt;>();&#xA;&#x9;&#xA;&#x9;public StopWatch newStopWatch(String name) {&#xA;&#x9;&#x9;this.allWatches.put(name, new StopWatch());&#xA;&#x9;&#x9;return this.allWatches.get(name);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void removeStopWatch(String name) {&#xA;&#x9;&#x9;this.allWatches.remove(name);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void tick(int ticks) {&#xA;&#x9;&#x9;for (StopWatch stopWatch : this.allWatches.values()) {&#xA;&#x9;&#x9;&#x9;stopWatch.tick(ticks);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public StopWatch getStopWatch(String name) {&#xA;&#x9;&#x9;return this.allWatches.get(name);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public Collection&lt;StopWatch> getAllWatches(){&#xA;&#x9;&#x9;return this.allWatches.values();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public Collection&lt;StopWatch> getStoppedWatches(){&#xA;&#x9;&#x9;List&lt;StopWatch> stoppedWatches = new ArrayList&lt;>();&#xA;&#x9;&#x9;for (StopWatch stopWatch : this.allWatches.values()) {&#xA;&#x9;&#x9;&#x9;if (stopWatch.isStopped()) {&#xA;&#x9;&#x9;&#x9;&#x9;stoppedWatches.add(stopWatch);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return stoppedWatches;&#xA;&#x9;}&#xA;&#x9;" edit="/1/@proposals.0/@proposals.1/@attempts.0/@edit" start="27" end="-5"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="39" charStart="944" charEnd="953" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550504538203" resourcePath="/ovinger/src/objectstructures/StopWatchManager.java" sizeMeasure="57" className="objectstructures.StopWatchManager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;public Collection&lt;StopWatch> getStartedWatches(){&#xA;&#x9;&#x9;List&lt;StopWatch> startedWatches = new ArrayList&lt;>();&#xA;&#x9;&#x9;for (StopWatch stopWatch : this.allWatches.values()) {&#xA;&#x9;&#x9;&#x9;if (stopWatch.isStarted()) {&#xA;&#x9;&#x9;&#x9;&#x9;startedWatches.add(stopWatch);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return startedWatches;&#xA;&#x9;}&#xA;&#x9;&#xA;" edit="/1/@proposals.0/@proposals.1/@attempts.1/@edit" start="1033" end="-4"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550504032016" mode="run" className="objectstructures.StopWatch">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.StopWatch</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>4
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550504055776" mode="run" className="objectstructures.StopWatch">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.StopWatch</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>4
5
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550504081250" mode="run" className="objectstructures.StopWatch">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.StopWatch</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>4
5
Exception in thread &quot;main&quot; java.lang.IllegalStateException
	at ovinger/objectstructures.StopWatch.lap(StopWatch.java:60)
	at ovinger/objectstructures.StopWatch.main(StopWatch.java:93)
</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.3/@q" answer="/0/@parts.0/@tasks.3/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.4/@q" answer="/0/@parts.0/@tasks.4/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550503690526" completion="0.5" testRunName="objectstructures.StopWatchTest" successCount="2" failureCount="2">
          <successTests>testTicks</successTests>
          <successTests>testStartTickStop</successTests>
          <failureTests>testStartLapStop</failureTests>
          <failureTests>testTickStartStopTick</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550503736818" completion="0.5" testRunName="objectstructures.StopWatchTest" successCount="2" failureCount="2">
          <successTests>testTicks</successTests>
          <successTests>testStartTickStop</successTests>
          <failureTests>testStartLapStop</failureTests>
          <failureTests>testTickStartStopTick</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550503803696" completion="0.75" testRunName="objectstructures.StopWatchTest" successCount="3" failureCount="1">
          <successTests>testTicks</successTests>
          <successTests>testStartTickStop</successTests>
          <successTests>testTickStartStopTick</successTests>
          <failureTests>testStartLapStop</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550503877009" completion="0.75" testRunName="objectstructures.StopWatchTest" successCount="3" failureCount="1">
          <successTests>testTicks</successTests>
          <successTests>testStartTickStop</successTests>
          <successTests>testTickStartStopTick</successTests>
          <failureTests>testStartLapStop</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550503887666" completion="0.75" testRunName="objectstructures.StopWatchTest" successCount="3" failureCount="1">
          <successTests>testTicks</successTests>
          <successTests>testStartTickStop</successTests>
          <successTests>testTickStartStopTick</successTests>
          <failureTests>testStartLapStop</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550503954916" completion="0.75" testRunName="objectstructures.StopWatchTest" successCount="3" failureCount="1">
          <successTests>testTicks</successTests>
          <successTests>testStartTickStop</successTests>
          <successTests>testTickStartStopTick</successTests>
          <failureTests>testStartLapStop</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550504187212" completion="0.75" testRunName="objectstructures.StopWatchTest" successCount="3" failureCount="1">
          <successTests>testTicks</successTests>
          <successTests>testStartTickStop</successTests>
          <successTests>testTickStartStopTick</successTests>
          <failureTests>testStartLapStop</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550504465038" completion="1.0" testRunName="objectstructures.StopWatchTest" successCount="4">
          <successTests>testTicks</successTests>
          <successTests>testStartTickStop</successTests>
          <successTests>testStartLapStop</successTests>
          <successTests>testTickStartStopTick</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550504538882" completion="1.0" testRunName="objectstructures.StopWatchTest" successCount="4">
          <successTests>testTicks</successTests>
          <successTests>testStartTickStop</successTests>
          <successTests>testStartLapStop</successTests>
          <successTests>testTickStartStopTick</successTests>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.5/@q" answer="/0/@parts.0/@tasks.5/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550504469557" completion="0.6666666666666666" testRunName="objectstructures.StopWatchManagerTest" successCount="2" errorCount="1">
          <successTests>testTicks</successTests>
          <successTests>testNewRemoveStopWatches</successTests>
          <errorTests>testStartedStoppedWatches</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550504555754" completion="1.0" testRunName="objectstructures.StopWatchManagerTest" successCount="3">
          <successTests>testTicks</successTests>
          <successTests>testNewRemoveStopWatches</successTests>
          <successTests>testStartedStoppedWatches</successTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a"/>
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
      </proposals>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a">
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1548700089318" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1550484729880" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1550484797541" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1550512267693" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1550512563813" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1550744794839" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
      </proposals>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
