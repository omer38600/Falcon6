public with sharing class CalculatorCallout {
// add two double number
    public static Double addition(Double num1, Double num2) {

        calculatorServices.CalculatorImplPort calculator = new calculatorServices.CalculatorImplPort();
        return calculator.doAdd(num1, num2);

    }

    // subtract two double number 
    public static Double subtraction (Double num1, Double num2){
    calculatorServices.CalculatorImplPort calc = new calculatorServices.CalculatorImplPort();
    return calc.doSubtract(num1, num2);
}
   // multiply two double number 
   public static Double multiplication (Double num1, Double num2){
    calculatorServices.CalculatorImplPort calc1 = new calculatorServices.CalculatorImplPort();
    return calc1.doMultiply(num1, num2);
}

   // subtract two double number 
   public static Double division (Double num1, Double num2){
    calculatorServices.CalculatorImplPort calc2 = new calculatorServices.CalculatorImplPort();
    return calc2.doDivide(num1, num2);
}

}