@isTest
public with sharing class CalculatorCalloutTest {
    @isTest
    private static void doAddTest() {
        //prepare data
        //1. set mock
        Test.setMock(webservicemock.class, new calculatorcalloutMockAdd());
        //start test
        Test.startTest();
        double d1 = CalculatorCallout.addition(1, 2);
        Test.stopTest();
        
        system.assertEquals(3, d1);
    }

    @isTest
    private static void doSubtractTest() {
        //prepare data
        //1. set mock
        Test.setMock(webservicemock.class, new CalculatorCalloutMockSubtract());
        //start test
        Test.startTest();
        double d1 = CalculatorCallout.subtraction(8, 5);
        Test.stopTest();
        
        system.assertEquals(3, d1);
    }

    @isTest
    private static void doMultiplicationTest() {
        //prepare data
        //1. set mock
        Test.setMock(webservicemock.class, new CalculatorCalloutMockMultiply());
        //start test
        Test.startTest();
        double d1 = CalculatorCallout.multiplication(8, 2);
        Test.stopTest();
        
        system.assertEquals(3, d1);
    }

    @isTest
    private static void doDivisionTest() {
        //prepare data
        //1. set mock
        Test.setMock(webservicemock.class, new CalculatorCalloutMockDivide());
        //start test
        Test.startTest();
        double d1 = CalculatorCallout.division(20, 5);
        Test.stopTest();
        
        system.assertEquals(3, d1);
    }
    

  
}