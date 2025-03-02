abstract class Loan{

  String borrowerName;
  double loanAmount;
  double interestRate ;

  double calculateMonthlyInstallment(int months);
  Loan({
    required this.borrowerName,
  required this.interestRate,
  required this.loanAmount
});
}