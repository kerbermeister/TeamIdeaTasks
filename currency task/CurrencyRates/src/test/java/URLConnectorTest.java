import connector.URLConnector;
import org.junit.Assert;
import org.junit.Test;
import java.io.IOException;
import java.net.URLConnection;

public class URLConnectorTest {
    public static final String appropriateUrl = "http://www.cbr.ru/scripts/XML_daily.asp";

    @Test
    public void isConnectionEstablished() {
        URLConnector connector = new URLConnector(appropriateUrl);
        try {
            URLConnection connection = connector.openConnection();
            Assert.assertNotNull(connection);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
