class Stock {
  final String? symbol;
  final String? company;
  final double? price;
  final double? percentage;

  Stock({this.symbol, this.company, this.price, this.percentage});

  static List<Stock> getAll() {
    List<Stock>? stocks;
    stocks!.add(Stock(
        company: "Apple Computers",
        symbol: "APPLE",
        price: 258,
        percentage: 1.99));
    stocks.add(Stock(
        company: "Alphabet", symbol: "ALPH", price: 800, percentage: 2.99));
    stocks.add(Stock(
        company: "General Electronic",
        symbol: "GE",
        price: 56.00,
        percentage: 3.99));
    stocks.add(Stock(
        company: "Home Depot", symbol: "HE", price: 178, percentage: 4.99));
    stocks.add(Stock(
        company: "Evergreen Solar",
        symbol: "EVR",
        price: 9.0,
        percentage: 5.99));
    stocks.add(
        Stock(company: "Facebook", symbol: "FB", price: 200, percentage: 1.99));
    stocks.add(
        Stock(company: "Samsung", symbol: "SAM", price: 134, percentage: 2.99));
    stocks.add(Stock(
        company: "Snapchat", symbol: "SNAP", price: 45, percentage: 3.99));
    stocks.add(Stock(
        company: "Microsoft", symbol: "MSOFT", price: 400, percentage: 0.99));
    stocks.add(Stock(
        company: "Google", symbol: "GOOG", price: 1800, percentage: 2.99));

    return stocks;
  }
}
