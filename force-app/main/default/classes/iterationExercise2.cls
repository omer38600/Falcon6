public class iterationExercise2 {

    public void getPerfectAverage( integer num1, integer num2) {

        System.debug('Input: num1=5');
        System.debug('Input: num2=15');
        integer sum = 0;
        integer counter = 0;
        integer average;

        for (Integer i = 5; i < 16; i++) {

            sum = sum + i;
            counter = counter + 1;
            average = sum/counter;
        }

       System.debug( 'Output: ' +average);
    
       System.debug('Calculation:');

       string a = '';

       for (Integer i = 5; i < 16; i++) {

      a = a + string.valueOf(i) + '+';
           
       }
       System.debug(a + '='+sum);
       System.debug('Total '+ counter + ' numbers between '+ num1 + ' to '+ num2);
       System.debug(sum + '/'+ counter + ' = '+average);
    }
    
    }
