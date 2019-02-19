package filmvisning;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

// Kjører alle tester som er laget for klassene i kinoeksempelet.
@RunWith(Suite.class)
@SuiteClasses({ Film2Test.class, Filmvisning2Test.class, Kino2Test.class, Sal2Test.class })
public class AllTests2 {

}
