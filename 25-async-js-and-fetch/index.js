function sleep(time) {
  const start = new Date();
  while (new Date() - start < time * 1000) {
    // do nothing & block the main thread
  }
}

// translated Ruby code from synch.rb
console.log("Hello World!");
console.log("brb, gonna go sleep for a sec");
// sleep(5);

console.log("What a nice cat nap that was!");

// get the fox image and print out the response data
// fetch

// fetch('url')
//     .then(doStuff)
//     .then(doFinalStuff)

// fetch("https://randomfox.ca/floof/")
//   .then((response) => response.json())
//   .then((data) => console.log(data));

// Promises

// ELI5: What is a promise?
//  Definition: IOU
//  Etymology: pledge, a vow, a declaration to the future from one person to another (guarantee, assurance)
// Technical definition: A Promise is a proxy for a value not necessarily known when the promise is created.
// It allows you to associate handlers with an asynchronous action's eventual success value or failure reason.

const promiseRequest = fetch("https://randomfox.ca/floof/");

promiseRequest.then((response) => {
  const promiseStream = response.json();

  promiseStream.then((data) => {
    console.log(data);
  });
});

document.querySelector("#get-fox-btn").addEventListener("click", () => {
  console.log("CLICKED !!!");
  fetch("https://randomfox.ca/floof/")
    .then((response) => response.json())
    .then((data) => {
      // target img
      const img = document.querySelector("img");

      // replace img with image url from data
      img.src = data.image;
    });
});
