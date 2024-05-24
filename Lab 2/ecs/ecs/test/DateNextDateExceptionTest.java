import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvSource;
import static org.junit.jupiter.api.Assertions.assertThrows;

public class DateNextDateExceptionTest
{

    @ParameterizedTest
    @CsvSource({
        "1500, 2, 31",
        "1500, 2, 29",
        "-1, 10, 20",
        "1458, 15, 12",
        "1975, 6, -50"
    })
    void testNextDateExceptions(int year, int month, int day) {
        assertThrows(IllegalArgumentException.class, () -> {
            Date d = new Date(year, month, day);
            d.nextDate();
        });
    }

}