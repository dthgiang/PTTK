package helper;

import javafx.scene.control.DatePicker;

import java.text.DecimalFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class ConvertTypeHelper {
    public String dateToString(DatePicker startDate) {
        LocalDate startD = startDate.getValue();
        if (startD != null) {
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");
            String dateString = startD.format(formatter);
            startDate.setValue(null);
            return  dateString;

        }
        return "2002-01-20";
    }

    public String formatNumber(int number) {
        DecimalFormat formatter = new DecimalFormat("#,###");
        String formattedNumber = formatter.format(number);
        return formattedNumber;
    }

}
