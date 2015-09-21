;(function(print) {
  'use strict';

  function problem03(n) {
    if (n < 1) {
      return [];
    } else if (n == 1) {
      return [0];
    } else {
      var retlist = [0, 1];
      for (var i = 2; i < n; i++) {
        retlist.push(retlist[i - 1] + retlist[i - 2]);
      }
      return retlist;
    }
  }

  problem03(100).forEach(function(e) {
    print(e);
  });
})(typeof console === 'undefined' ? print : console.log);
