#!/usr/bin/env node
var start = process.argv[2];
var end = process.argv[3];

// console.log(end);
// return;

function stringToTime(stringTime) {
  var timeArray = stringTime.split(/[:.]/).map(function (string) {
    return parseInt(string, 10);
  });

  return (timeArray[0] * 3600) + (timeArray[1] * 60) + timeArray[2] + (timeArray[3] / 1000);
}

var startTime = stringToTime(start);
var endTime = stringToTime(end);

console.log(startTime);
return

// var diff = new Array(4);

// // if (endTime[3] < startTime[3]) {
// //   diff[3] = 1000 + endTime[3] - startTime[3];
// //   endTime[2]--;
// // } else {
// //   diff[3] = endTime[3] - startTime[3];
// // }

// for (var i = 3; i >= 0; i--) {
//   var total;
//   switch(i) {
//     case 3: total = 1000; break; // ms
//     case 2: total = 60; break; // s
//     case 1: total = 60; break; // m
//     case 0: total = 1234; break; // h
//   }

//   if (endTime[i] < startTime[i]) {
//     diff[i] = total + endTime[i] - startTime[i];
//     endTime[i - 1]--; // will throw range exception if startTime is greater than endTime
//   } else {
//     diff[i] = endTime[i] - startTime[i];
//   }
// }

// // console.log(JSON.stringify(diff));
// console.log(diff);
