package helper;

import javafx.scene.control.DatePicker;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class ConvertTypeHelper {
    public String dateToString(DatePicker startDate) {
        LocalDate startD = startDate.getValue();
        if (startD != null) {
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            String dateString = startD.format(formatter);
            startDate.setValue(null);
            return  dateString;

        }
        return "2002-01-20";
    }

}
