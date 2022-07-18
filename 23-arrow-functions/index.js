// Arrow functions

// 1. Convert a normal function into an arrow function

// 2. Implicit returns

// 3. Best use cases

// doubles the number its given
// hoisting (forward referencing)
// console.log(doubleIt(8));

// function doubleIt(num) {
//   return num * 2;
// }

// const doubleIt = (num) => num * 2;

// const doubleIt = (num) => {
//   return num * 2;
// };

// console.log(doubleIt(8));

const createPetFunction = (nameStr, ageNum) => ({ name: nameStr, age: ageNum });

// console.log(createPetFunction("Sungwoo", 80));

// console.log(nums);
// console.log(books);

/////// forEach ///////
// traditional:
// nums.forEach(function (num) {
//   console.log(num);
// });

// arrow function syntax:
// nums.forEach((num) => console.log(num));

// nums.forEach(console.log);

// nums.forEach((num, index, arr) =>
//   console.log(`element: ${num}, index: ${index}, arr: ${arr}`)
// );

/////// map ///////
// traditional:
// const mapResult = nums.map(function (num) {
//   return num * 3;
// });

// arrow function syntax:
// const mapResult = nums.map((num) => num * 3);

// console.log(mapResult);

/////// filter ///////
// traditional:
// const filteredBooks = books.filter(function (book) {
//   return book.yearRead < 2020;
// });

// arrow function syntax:
const filteredBooks = books.filter((book) => book.yearRead < 2020);

console.log(filteredBooks);
