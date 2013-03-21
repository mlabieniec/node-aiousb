var aiousb = require('./build/Release/aiousb');

var obj = new aiousb.Device(10);
console.log( obj.plusOne() ); // 11
console.log( obj.plusOne() ); // 12
console.log( obj.plusOne() ); // 13