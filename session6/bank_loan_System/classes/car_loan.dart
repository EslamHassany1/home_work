import 'loan.dart';

class CarLoan extends Loan{
  CarLoan({required super.borrowerName, required super.interestRate, required super.loanAmount}) {
    interestRate=0.07;
    if(loanAmount >50000){

    interestRate = loanAmount*0.02;
  }
  }

  @override
  double calculateMonthlyInstallment(int months) {
    double rate= interestRate/12;
    double interstValue= loanAmount * rate * months;
    double totalValue = loanAmount +interstValue;
    return totalValue/months;
  }


  
  
  
}