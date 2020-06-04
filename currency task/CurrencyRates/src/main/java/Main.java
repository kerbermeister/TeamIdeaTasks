import connector.URLConnector;
import exceptions.NoSuchCurrencyException;
import org.w3c.dom.Document;
import parser.DocumentCreator;
import service.CurrencyService;
import service.CurrencyServiceImpl;
import java.io.IOException;
import java.net.URLConnection;

public class Main {
    public static void main(String[] args) throws IOException {
        final String currencyId = "R01200";
        final String url = "http://www.cbr.ru/scripts/XML_daily.asp";

        URLConnector connector = new URLConnector(url);
        URLConnection connection = connector.openConnection();

        DocumentCreator documentCreator = new DocumentCreator(connection);
        Document document = documentCreator.parseDocument();
        CurrencyService currencyService = new CurrencyServiceImpl(document);
        try {
            String rateByCurrencyId = currencyService.getRateByCurrencyId(currencyId);
            System.out.println("Currency rate to Russian ruble is " + rateByCurrencyId);
        } catch (NoSuchCurrencyException e) {
            System.out.println("No such currency with id " + currencyId);
        }
    }
}
