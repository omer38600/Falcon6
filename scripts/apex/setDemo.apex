// setDemo.citySet();

// List<Integer> l1 = new List<Integer>{10,15,21,99,55,44,10,99};
// Set<Integer> set3 = SetDemo.setFromList(l1);
// System.debug('set 3 = ' + set3);


Set<string> cities1 = new Set<string>();
cities1.add('tokyo');
cities1.add('berlin');
cities1.add('madrid');
cities1.add('istanbul');
cities1.add('sao paulo');
System.debug(cities1);

Set<string> cityinCaps = SetDemo.capitalizaSet(cities1);
System.debug(cityinCaps);

