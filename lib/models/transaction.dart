class Transaction {
  final String id;      //고유번호
  final String title;   //내역 제목
  final int amount;     //금액
  final DateTime date;  //날짜
  final bool isIncome;  //true: 수입, false: 지출

  Transaction({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
    required this.isIncome,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      id: json['id'],
      title: json['title'],
      amount: json['amount'],
      date: DateTime.parse(json['date']),
      isIncome: json['isIncome'],
    );
  }


}

