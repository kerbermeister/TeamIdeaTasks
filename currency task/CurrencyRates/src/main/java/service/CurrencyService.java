package service;

import exceptions.NoSuchCurrencyException;

public interface CurrencyService {

    String getRateByCurrencyId(String currencyId) throws NoSuchCurrencyException;
}
