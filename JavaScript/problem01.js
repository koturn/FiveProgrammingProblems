;(function(print) {
  'use strict';

  function problem01For(list) {
    var sum = 0;
    for (var i = 0; i < list.length; i++) {
      sum += list[i];
    }
    return sum;
  }

  function problem01While(list) {
    var sum = 0;
    var i = 0;
    var n = 0;
    while (n = list[i++]) {
      sum += n;
    }
    return sum;
  }

  function problem01Recursion(list) {
    return (function _self(i) {
      return i < list.length ? list[i] + _self(i + 1) : 0;
    })(0);
  }

  var LIST = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(problem01For(LIST));
  print(problem01While(LIST));
  print(problem01Recursion(LIST));
})(typeof console === 'undefined' ? print : console.log);
