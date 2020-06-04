package service;

import exceptions.NoSuchCurrencyException;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class CurrencyServiceImpl implements CurrencyService {

    private Document document;

    public CurrencyServiceImpl(Document document) {
        this.document = document;
    }

    @Override
    public String getRateByCurrencyId(String currencyId) throws NoSuchCurrencyException{
        if (currencyId == null || currencyId.isEmpty())
            throw new IllegalArgumentException("Incorrect currency id!");

        NodeList valuteNodeList = getNodeListByTagName("Valute");

        for (int i = 0; i < valuteNodeList.getLength(); i++) {
            Node valuteNode = valuteNodeList.item(i);
            String valuteId = valuteNode.getAttributes().getNamedItem("ID").getNodeValue();
            if (valuteId.equals(currencyId)) {
                return valuteNode.getLastChild().getTextContent();
            }
        }
        throw new NoSuchCurrencyException();
    }

    private NodeList getNodeListByTagName(String tagName) {
        return document.getElementsByTagName(tagName);
    }
}
