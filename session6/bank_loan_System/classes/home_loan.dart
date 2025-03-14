<<<<<<< HEAD
import 'loan.dart';

class HomeLoan extends Loan{

  HomeLoan({required super.borrowerName, required super.interestRate, required super.loanAmount}) {
  if(loanAmount>500000){
    interestRate =0.095;
  }else{
    interestRate =0.08;
  }
  }

  @override
  double calculateMonthlyInstallment(int months) {
// مبلغ الشراء * معدل الفائدة  * عدد الدفعات   = قيمة الفايدة
// الاجمالي = مبلغ الشراء + قيمة الفائدة
  // قيمة القسط = الاجمالي / عدد الدفعات

  double rate= interestRate/12;
double interstValue= loanAmount * rate * months;
double totalValue = loanAmount +interstValue;
return totalValue/months;

  }


}

=======
import 'loan.dart';

class HomeLoan extends Loan{

  HomeLoan({required super.borrowerName, required super.interestRate, required super.loanAmount}) {
  if(loanAmount>500000){
    interestRate =0.095;
  }else{
    interestRate =0.08;
  }
  }

  @override
  double calculateMonthlyInstallment(int months) {
// مبلغ الشراء * معدل الفائدة  * عدد الدفعات   = قيمة الفايدة
// الاجمالي = مبلغ الشراء + قيمة الفائدة
  // قيمة القسط = الاجمالي / عدد الدفعات

  double rate= interestRate/12;
double interstValue= loanAmount * rate * months;
double totalValue = loanAmount +interstValue;
return totalValue/months;

  }


}

>>>>>>> 156a77c6d3b008c19184eaf5d076ffafc0a9921c
