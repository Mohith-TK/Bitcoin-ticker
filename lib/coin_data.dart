import 'package:http/http.dart' as http;
import 'dart:convert';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = '005DF017-24DD-4AA8-83CF-34EFF717DADD';

class CoinData {
  Future<dynamic> getCoinData(String curr) async {
    http.Response response1 = await http
        .get('https://rest.coinapi.io/v1/exchangerate/BTC/$curr?apikey=$apiKey');

    http.Response response2 = await http
        .get('https://rest.coinapi.io/v1/exchangerate/ETH/$curr?apikey=$apiKey');

    http.Response response3 = await http
        .get('https://rest.coinapi.io/v1/exchangerate/LTC/$curr?apikey=$apiKey');
    var data1 = jsonDecode(response1.body);
    var data2 = jsonDecode(response2.body);
    var data3 = jsonDecode(response3.body);
    return [data1,data2,data3];
  }
}
