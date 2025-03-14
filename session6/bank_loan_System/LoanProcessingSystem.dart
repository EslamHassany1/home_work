import 'classes/loan.dart';

class LoanProcessingSystem{
  List<Loan> _loans=[] ;

  applyLoan(Loan loan){
    _loans.add(loan);
  }

}