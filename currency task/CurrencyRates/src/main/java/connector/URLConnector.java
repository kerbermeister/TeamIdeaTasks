package connector;

import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;

public class URLConnector {

    private String url;

    public URLConnector(String url) {
        this.url = url;
    }

    public URLConnection openConnection() throws IOException {
        return new URL(url).openConnection();
    }
}
