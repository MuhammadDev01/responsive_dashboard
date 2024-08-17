class TransactionHistoryModel {
  final String titleProccess;
  final String subtitleDate;
  final String traillingCash;
  final bool isWithdrawal;

  const TransactionHistoryModel(
      {required this.titleProccess,
      required this.subtitleDate,
      required this.traillingCash,
      required this.isWithdrawal});
}
