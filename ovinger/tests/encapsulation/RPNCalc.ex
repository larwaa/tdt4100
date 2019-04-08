<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="RPNCalc">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the RPNCalc class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="encapsulation.RPNCalc"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the RPNCalc class, to test it."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="encapsulation.RPNCalc"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the RPNCalc class, by running the RPNCalcTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="encapsulation.RPNCalcTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Using Eclipse">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1548702442006" resourcePath="/ovinger/src/encapsulation/RPNCalc.java" sizeMeasure="5" className="encapsulation.RPNCalc">
          <edit xsi:type="exercise:StringEdit" storedString="package encapsulation;&#xA;&#xA;public class RPNCalc {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1548707428399" resourcePath="/ovinger/src/encapsulation/RPNCalc.java" sizeMeasure="67" warningCount="1" className="encapsulation.RPNCalc">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.ArrayList;&#xA;import java.util.List;&#xA;&#xA;public class RPNCalc {&#xA;&#x9;&#xA;&#x9;Stack stack = new Stack();&#xA;&#x9;&#xA;&#x9;public void push(double d) {&#xA;&#x9;&#x9;this.stack.push(d);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double pop() {&#xA;&#x9;&#x9;return this.stack.pop();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double peek(int i) {&#xA;&#x9;&#x9;return this.stack.peek(i);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getSize() {&#xA;&#x9;&#x9;return this.stack.getSize();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void performOperation(char c) {&#xA;&#x9;&#x9;this.checkOperator(c);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if (this.getSize() &lt; 2) {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;double temp1 = this.pop();&#xA;&#x9;&#x9;double temp2 = this.pop();&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if (c == '+') {&#xA;&#x9;&#x9;&#x9;this.push(temp2 + temp1);&#xA;&#x9;&#x9;} else if (c == '-') {&#xA;&#x9;&#x9;&#x9;this.push(temp2 - temp1);&#xA;&#x9;&#x9;} else if (c == '/') {&#xA;&#x9;&#x9;&#x9;this.push(temp2/temp1);&#xA;&#x9;&#x9;} else if (c == '*') {&#xA;&#x9;&#x9;&#x9;this.push(temp2 * temp1);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private void checkOperator(char c) {&#xA;&#x9;&#x9;List&lt;Character> legalChars = List.of('+', '-', '/', '*');&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if (! (legalChars.contains(c))) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Only supports +, -, *, /&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;RPNCalc calc = new RPNCalc();&#xA;&#x9;&#x9;calc.push(20);&#xA;&#x9;&#x9;calc.push(30);&#xA;&#x9;&#x9;calc.performOperation('+');&#xA;&#x9;&#x9;System.out.println(calc.peek(0));&#xA;&#x9;&#x9;calc.performOperation('+');&#xA;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="24" end="-5"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="31" charEnd="50" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1548707485442" resourcePath="/ovinger/src/encapsulation/RPNCalc.java" sizeMeasure="67" warningCount="1" className="encapsulation.RPNCalc">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&quot;Operation requires two numbers.&quot;" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="497" end="-718"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="31" charEnd="50" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1548710160217" resourcePath="/ovinger/src/encapsulation/RPNCalc.java" sizeMeasure="70" warningCount="1" className="encapsulation.RPNCalc">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" else if (c == '~') {&#xA;&#x9;&#x9;&#x9;this.push(temp1);&#xA;&#x9;&#x9;&#x9;this.push(temp2);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private void checkOperator(char c) {&#xA;&#x9;&#x9;List&lt;Character> legalChars = List.of('+', '-', '/', '*', '~" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="811" end="-331"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="31" charEnd="50" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1548795563685" resourcePath="/ovinger/src/encapsulation/RPNCalc.java" sizeMeasure="72" errorCount="1" className="encapsulation.RPNCalc">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" else if (c == '^') {&#xA;&#x9;&#x9;&#x9;this.push(temp2 ** temp1);&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="878" end="-442"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="48" charStart="920" charEnd="921" severity="2" problemCategory="20" problemType="1610612968"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1548795926680" resourcePath="/ovinger/src/encapsulation/RPNCalc.java" sizeMeasure="72" warningCount="1" className="encapsulation.RPNCalc">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Math.pow(temp2, temp1)" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="913" end="-448"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="31" charEnd="50" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1548795940924" resourcePath="/ovinger/src/encapsulation/RPNCalc.java" sizeMeasure="72" errorCount="1" className="encapsulation.RPNCalc">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="'" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="1304" end="-77"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="66" charStart="1303" charEnd="1305" severity="2" problemCategory="20" problemType="1610612989"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1548795951574" resourcePath="/ovinger/src/encapsulation/RPNCalc.java" sizeMeasure="72" errorCount="1" className="encapsulation.RPNCalc">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="1381"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="66" charStart="1303" charEnd="1305" severity="2" problemCategory="20" problemType="1610612989"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1548795964072" resourcePath="/ovinger/src/encapsulation/RPNCalc.java" sizeMeasure="72" warningCount="1" className="encapsulation.RPNCalc">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="^" edit="/1/@proposals.0/@proposals.0/@attempts.7/@edit" start="1304" end="-78"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="31" charEnd="50" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1548795980927" resourcePath="/ovinger/src/encapsulation/RPNCalc.java" sizeMeasure="72" warningCount="1" className="encapsulation.RPNCalc">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=", '^'" edit="/1/@proposals.0/@proposals.0/@attempts.8/@edit" start="1053" end="-330"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="31" charEnd="50" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1548796019224" resourcePath="/ovinger/src/encapsulation/RPNCalc.java" sizeMeasure="72" warningCount="1" className="encapsulation.RPNCalc">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=");&#xA;&#x9;&#x9;calc.push(3" edit="/1/@proposals.0/@proposals.0/@attempts.9/@edit" start="1263" end="-107"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="31" charEnd="50" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1548796023711" resourcePath="/ovinger/src/encapsulation/RPNCalc.java" sizeMeasure="71" warningCount="1" className="encapsulation.RPNCalc">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.10/@edit" start="1348" end="-7"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="31" charEnd="50" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1548707417701" mode="run" className="encapsulation.RPNCalc">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.RPNCalc</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>50.0
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1548707428341" mode="run" className="encapsulation.RPNCalc">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.RPNCalc</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>50.0
Exception in thread &quot;main&quot; java.lang.IllegalStateException
	at ovinger/encapsulation.RPNCalc.performOperation(RPNCalc.java:30)
	at ovinger/encapsulation.RPNCalc.main(RPNCalc.java:63)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1548707434060" mode="run" className="encapsulation.RPNCalc">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.RPNCalc</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>50.0
Exception in thread &quot;main&quot; java.lang.IllegalStateException
	at ovinger/encapsulation.RPNCalc.performOperation(RPNCalc.java:30)
	at ovinger/encapsulation.RPNCalc.main(RPNCalc.java:63)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1548795940846" mode="run" className="encapsulation.RPNCalc">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.RPNCalc</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.Error: Unresolved compilation problem: 
	Invalid character constant

	at ovinger/encapsulation.RPNCalc.main(RPNCalc.java:66)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1548795951434" mode="run" className="encapsulation.RPNCalc">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.RPNCalc</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.Error: Unresolved compilation problem: 
	Invalid character constant

	at ovinger/encapsulation.RPNCalc.main(RPNCalc.java:66)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1548795963957" mode="run" className="encapsulation.RPNCalc">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.RPNCalc</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.IllegalArgumentException: Only supports +, -, *, /
	at ovinger/encapsulation.RPNCalc.checkOperator(RPNCalc.java:58)
	at ovinger/encapsulation.RPNCalc.performOperation(RPNCalc.java:27)
	at ovinger/encapsulation.RPNCalc.main(RPNCalc.java:66)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1548795980866" mode="run" className="encapsulation.RPNCalc">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.RPNCalc</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1.073741824E39Exception in thread &quot;main&quot; java.lang.IllegalStateException: Operation requires two numbers.

	at ovinger/encapsulation.RPNCalc.performOperation(RPNCalc.java:30)
	at ovinger/encapsulation.RPNCalc.main(RPNCalc.java:68)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1548796019160" mode="run" className="encapsulation.RPNCalc">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.RPNCalc</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; 8.0java.lang.IllegalStateException: Operation requires two numbers.

	at ovinger/encapsulation.RPNCalc.performOperation(RPNCalc.java:30)
	at ovinger/encapsulation.RPNCalc.main(RPNCalc.java:68)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1548796023641" mode="run" className="encapsulation.RPNCalc">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.RPNCalc</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>8.0
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1549286019925" mode="debug" className="encapsulation.RPNCalc">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.RPNCalc</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>8.0
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1549286050375" mode="debug" className="encapsulation.RPNCalc">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.RPNCalc</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>8.0
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1549286067894" mode="debug" className="encapsulation.RPNCalc">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.RPNCalc</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>8.0
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1549286196332" mode="debug" className="encapsulation.RPNCalc">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.RPNCalc</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1548707486092" completion="0.8" testRunName="encapsulation.RPNCalcTest" successCount="8" errorCount="2">
          <successTests>testAdd</successTests>
          <successTests>testDiv</successTests>
          <successTests>testPop</successTests>
          <successTests>testSub</successTests>
          <successTests>testMult</successTests>
          <successTests>testPeek</successTests>
          <successTests>testPush</successTests>
          <successTests>testGetSize</successTests>
          <errorTests>testPeekEmpty</errorTests>
          <errorTests>testSwap</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1548707552426" completion="0.8" testRunName="encapsulation.RPNCalcTest" successCount="8" errorCount="2">
          <successTests>testAdd</successTests>
          <successTests>testDiv</successTests>
          <successTests>testPop</successTests>
          <successTests>testSub</successTests>
          <successTests>testMult</successTests>
          <successTests>testPeek</successTests>
          <successTests>testPush</successTests>
          <successTests>testGetSize</successTests>
          <errorTests>testPeekEmpty</errorTests>
          <errorTests>testSwap</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1548710082946" completion="0.9" testRunName="encapsulation.RPNCalcTest" successCount="9" errorCount="1">
          <successTests>testPeekEmpty</successTests>
          <successTests>testAdd</successTests>
          <successTests>testDiv</successTests>
          <successTests>testPop</successTests>
          <successTests>testSub</successTests>
          <successTests>testMult</successTests>
          <successTests>testPeek</successTests>
          <successTests>testPush</successTests>
          <successTests>testGetSize</successTests>
          <errorTests>testSwap</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1548710160879" completion="1.0" testRunName="encapsulation.RPNCalcTest" successCount="10">
          <successTests>testPeekEmpty</successTests>
          <successTests>testAdd</successTests>
          <successTests>testDiv</successTests>
          <successTests>testPop</successTests>
          <successTests>testSub</successTests>
          <successTests>testMult</successTests>
          <successTests>testPeek</successTests>
          <successTests>testPush</successTests>
          <successTests>testSwap</successTests>
          <successTests>testGetSize</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1548795564384" completion="0.5" testRunName="encapsulation.RPNCalcTest" successCount="5" errorCount="5">
          <successTests>testPeekEmpty</successTests>
          <successTests>testPop</successTests>
          <successTests>testPeek</successTests>
          <successTests>testPush</successTests>
          <successTests>testGetSize</successTests>
          <errorTests>testAdd</errorTests>
          <errorTests>testDiv</errorTests>
          <errorTests>testSub</errorTests>
          <errorTests>testMult</errorTests>
          <errorTests>testSwap</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1548795927553" completion="1.0" testRunName="encapsulation.RPNCalcTest" successCount="10">
          <successTests>testPeekEmpty</successTests>
          <successTests>testAdd</successTests>
          <successTests>testDiv</successTests>
          <successTests>testPop</successTests>
          <successTests>testSub</successTests>
          <successTests>testMult</successTests>
          <successTests>testPeek</successTests>
          <successTests>testPush</successTests>
          <successTests>testSwap</successTests>
          <successTests>testGetSize</successTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a">
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1549286068445" elementId="encapsulation.RPNCalc" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1549286110990" elementId="encapsulation.RPNCalc" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1549286196894" elementId="encapsulation.RPNCalc" action="suspend.breakpoint"/>
      </proposals>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a">
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1549286088670" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1549286090228" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1549286090988" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1549286091604" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1549286092672" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1549286093351" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1549286094103" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1549286094711" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1549286095335" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1549286096058" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1549286097538" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
      </proposals>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a">
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1549286203320" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1549286206507" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
      </proposals>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a">
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1548700089318" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
      </proposals>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
