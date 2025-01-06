// import 'package:get_storage/get_storage.dart';

// class TransactionRepository {
//   final GetStorage _storage = GetStorage();

//   Future<void> saveTransaction(M transaction) async {
//     final transactionList = _storage.read<List>('transactions') ?? [];
//     transactionList.add(transaction.toMap());
//     await _storage.write('transactions', transactionList);
//   }

//   List<Model> getAllTransactions() {
//     final transactionList = _storage.read<List>('transactions') ?? [];

//     transactionList.sort((a, b) {
//       DateTime dateA = DateTime.parse(a['date']);
//       DateTime dateB = DateTime.parse(b['date']);
//       return dateB.compareTo(dateA);
//     });

//     return transactionList.map((e) => TransactionModel.fromMap(e)).toList();
//   }

//   Future<void> deleteTransaction(String id) async {
//     final transactionList = _storage.read<List>('transactions') ?? [];
//     transactionList.removeWhere((transaction) => transaction['id'] == id);
//     await _storage.write('transactions', transactionList);
//   }

//   void clearAllStorage() {
//     _storage.erase();
//   }
// }
