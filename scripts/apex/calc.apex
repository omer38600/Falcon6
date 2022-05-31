Calculator calc = new Calculator();
/// 1==>this is the first way without definign a variable
//system.debug(calc.add(5, 2)); 
//system.debug(calc.add(5, 2, 3));

// /// 1==> with var
// date newDate = Date.today();
// boolean ans = calc.leapYearCheck(newDate); 
// system.debug(ans);


// //2. direct debug without var
// system.debug(calc.leapYearCheck(date.newInstance(2016, 01,02)));


/// 2==>this is the second way with definign a variable
//integer product1 = calc.add(5, 2);
//system.debug(product1);


//calc.welcomeMessage();
//calc.newWelcomeMssage('this is a new message');

//calc.printNewMessage2('this is a message', date.today());

//date newDate = date.today();  // here i am defining a value for parameter in date type important it must be same data type as parameter
//Boolean isLeapyear = calc.isLeapYear(newDate);
//System.debug(isLeapyear);

//calc.birthDate(date.newInstance(1990, 09, 20));

//integer sum11 = calc.add(5, 10);
//System.debug(sum11);

//system.debug(calc.add(5, 2));

// date birthDate = date.newInstance(1990, 09, 20);
// date todayDate = date.today();

// integer myAgeindays = birthDate.daysBetween(todayDate);
// integer myAgeinMonths = birthDate.monthsBetween(todayDate); 
// integer yearsBirthDate = birthDate.year();
// integer yearToday = todayDate.year();
// integer myAgeinYears = yearToday-yearsBirthDate;
// system.debug( 'May age in days '+myAgeindays+ ' ,My age in months '+ myAgeinMonths + ' ,My age in years ' + myAgeinYears );


date todayDate = date.today();
date expirationDate = date.newInstance(2022, 09, 05);

integer daysRemaining = todayDate.daysBetween(expirationDate);
system.debug('Remaining days for expiration of the plan ' + daysRemaining);










