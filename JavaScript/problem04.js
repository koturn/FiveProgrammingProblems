;(function(print) {
  'use strict';

  function problem04(list) {
    return +list.map(function(e) {
      return e + '';
    }).sort().reverse().join('');
  }

  print(problem04([50, 2, 1, 9]));
})(typeof console === 'undefined' ? print : console.log);
