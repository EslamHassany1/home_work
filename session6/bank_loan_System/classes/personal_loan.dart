import 'package:untitled/bank_loan_System/classes/loan.dart';

class PersonalLoan extends Loan{


  PersonalLoan({required super.borrowerName,
    required super.interestRate,
    required super.loanAmount}) {
super.interestRate =0.10;
  }

  @override
  double calculateMonthlyInstallment(int months) {
    double rate= interestRate/12;
    print("rate $rate");
    double interstValue= loanAmount * rate * months;
    print("interstValue $interstValue");

    double totalValue = loanAmount +interstValue;
    print("totalValue $totalValue");

    return totalValue/months;
  }

}

