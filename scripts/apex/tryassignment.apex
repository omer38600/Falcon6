integer sum = 0;
integer A = 3;
string B = 'Test';

try{
    sum = A + integer.valueOf(B);
    system.debug('total is = '+ sum);
}
catch (exception ex) {
    system.debug('sth went wrong');
}