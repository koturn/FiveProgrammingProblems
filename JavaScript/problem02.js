;(function(print) {
  'use strict';

  function problem02(list1, list2) {
    var minLength = Math.min(list1.length, list2.length);
    var retlist = [];
    for (var i = 0; i < minLength; i++) {
      retlist.push(list1[i]);
      retlist.push(list2[i]);
    }
    return retlist.concat(list1.slice(list2.length)).concat(list2.slice(list1.length));
  }

  print(problem02(['a', 'b', 'c'], [1, 2, 3]));
})(typeof console === 'undefined' ? print : console.log);
