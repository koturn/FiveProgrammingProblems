;(function(print) {
  'use strict';

  function problem05(nrlist, oplist, answer) {
    if (nrlist.length === 0) {
      return [];
    } else {
      var exprlist = [];
      (function _self(expr, i) {
        if (i < nrlist.length) {
          oplist.forEach(function(op) {
            _self(expr + op + nrlist[i], i + 1);
          });
        } else if (eval(expr) == answer) {
          exprlist.push(expr);
        }
      })('' + nrlist[0], 1);
      return exprlist;
    }
  }

  var ANSWER = 100;
  problem05([1, 2, 3, 4, 5, 6, 7, 8, 9], [' + ', ' - ', ''], ANSWER).forEach(function(e) {
    print(e + ' = ' + ANSWER);
  });
})(typeof console === 'undefined' ? print : console.log);
