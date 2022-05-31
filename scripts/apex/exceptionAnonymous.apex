try{
    account a = new account();
    insert a;
} catch(DmlException dex){
    System.debug('DML went wrong buddy');
}

 catch(Exception ex){
    System.debug('Something went wrong buddy.');
}


system.debug('Apex is SIMPLE');