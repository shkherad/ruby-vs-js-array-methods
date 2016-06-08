'use strict'

let fibs = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34];

let timesTwo = fibs.map((number) => {
  return number * 2;
})

let twiceFibs = fibs.map(timesTwo)

console.log('fibs is '+ fibs)
console.log('twice fibs is '+twiceFibs)

//sum function

const sumFibs = function
