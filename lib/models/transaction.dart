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

  //map(JSON) 데이터를 객체로 변환
  //서버나 저장소에서 불러올 때 사용
  //json['id'] 를 dart가 읽을 수 있는 객체형태인 String id 로 변환
  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      id: json['id'],
      title: json['title'],
      amount: json['amount'],
      date: DateTime.parse(json['date']),
      isIncome: json['isIncome'],
    );
  }

  //다시 변환해서 저장
  //json 데이터는 전달 데이터 중 표준(신분증 양식과 같음)+효율성 높음
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'amount': amount,
      'date': date.toIso8601String(),
      'isIncome': isIncome,
    };
  }
}