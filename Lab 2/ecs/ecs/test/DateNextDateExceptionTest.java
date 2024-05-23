import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

public class DateNextDateExceptionTest
{

    @Test
    void nextDateException1() {
        assertThrows(IllegalArgumentException.class, () -> {
            Date d = new Date(1500, 2, 31);
            d.nextDate();
        });
    }

    @Test
    void nextDateException2() {
        assertThrows(IllegalArgumentException.class, () -> {
            Date d = new Date(1500, 2, 29);
            d.nextDate();
        });
    }

    @Test
    void nextDateException3() {
        assertThrows(IllegalArgumentException.class, () -> {
            Date d = new Date(-1, 10, 20);
            d.nextDate();
        });
    }

    @Test
    void nextDateException4() {
        assertThrows(IllegalArgumentException.class, () -> {
            Date d = new Date(1458, 15, 12);
            d.nextDate();
        });
    }

    @Test
    void nextDateException5() {
        assertThrows(IllegalArgumentException.class, () -> {
            Date d = new Date(1975, 6, -50);
            d.nextDate();
        });
    }

}