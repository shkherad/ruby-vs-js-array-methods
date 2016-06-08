'use strict';

let loadPeople = require('../lib/people.js');

loadPeople().then((people) => {
  // people.forEach((person) => {
  //   console.log(`${person.given_name} ${person.surname} is ${person.age()} years old.`);
  // });

  let count = people.reduce((memo, person) => {
    // memo + 1
  }, 0);
  console.log(`count: ${count}, length: ${people.length}`);

  const isFemale = (person) => {
    return person.gender === "f";
  }

  let female = people.filter(isFemale).reduce((memo /*,person*/) => {
    return memo +1;
  },0)


  console.log(`female: ${female}, total: ${people.length}`);
}).catch((error) => console.log(error));
