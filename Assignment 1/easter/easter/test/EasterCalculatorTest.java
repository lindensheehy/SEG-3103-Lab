import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertNull;

import org.junit.jupiter.api.Test;

import java.util.*;

class EasterCalculatorTest {

  @Test
  public void test1() {
    assertNull(EasterCalculator.easterDate(1583));
  }

  @Test
  public void test2() {
    MyDate expected = new MyDate("April", 4); // Expected date for Easter in 1584
    MyDate actual = EasterCalculator.easterDate(1584);
    assertEquals(expected.toString(), actual.toString());
  }

  @Test
  public void test3() {
    MyDate expected = new MyDate("April", 11); // Expected date for Easter in 4099
    MyDate actual = EasterCalculator.easterDate(4099);
    assertEquals(expected.toString(), actual.toString());
  }

  @Test
  public void test4() {
    assertNull(EasterCalculator.easterDate(4100));
  }

  @Test
  public void test5() {
    assertNull(EasterCalculator.easterDate(Integer.MIN_VALUE));
  }

  // @Test
  // public void test6() {
  //   assertThrows(IllegalArgumentException.class, () -> {
  //     EasterCalculator.easterDate(Integer.MIN_VALUE - 1);
  //   });
  // }

  @Test
  public void test7() {
    assertNull(EasterCalculator.easterDate(Integer.MAX_VALUE));
  }

  // @Test
  // public void test8() {
  //   assertThrows(IllegalArgumentException.class, () -> {
  //     EasterCalculator.easterDate((int) ((long) Integer.MAX_VALUE + 1));
  //   });
  // }

  // @Test
  // public void test9() {
  //   assertThrows(ClassCastException.class, () -> {
  //     EasterCalculator.easterDate((int) 2000.5);
  //   });
  // }

  // @Test
  // public void test10() {
  //   assertThrows(ClassCastException.class, () -> {
  //     int year = (int) "abc";
  //     EasterCalculator.easterDate(year);
  //   });
  // }

  // @Test
  // public void test11() {
  //   assertThrows(ClassCastException.class, () -> {
  //     int year = (int) 'a';
  //     EasterCalculator.easterDate(year);
  //   });
  // }

}