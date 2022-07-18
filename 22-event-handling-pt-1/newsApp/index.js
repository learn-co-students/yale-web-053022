const titleH1 = document.querySelector("h1#news-co");
const allCards = document.querySelectorAll("div.card");

// target the element of interest
function updateFirstCardPic() {
  const firstCardImg = document.querySelector('[data-id="1"] img');
  // update the property want. Bam!
  firstCardImg.src = "images/raffy.jpg";
}

// DELETE
// find the element we want to delete
function removeAd() {
  const adCard = document.querySelector(".card.ad");
  adCard.remove();
}

// combo approach
function createOneCard(articleObject) {
  const outerDiv = document.createElement("div");
  outerDiv.classList.add("card");
  outerDiv.dataset.id = articleObject.id;

  outerDiv.innerHTML = `
                <div class="img-container">
                    <img src="${articleObject.image}"
                        alt="${articleObject.title}" />
                    <div class="article-title-container">
                        <h4>${articleObject.title}</h4>
                    </div>
                </div>
                <div class="content">
                    <p class='author'>Author: ${articleObject.author}</p>
                    <div class="scroll">
                        <p class='description'>${articleObject.description}</p>
                    </div>
                    <p class="react-count">${articleObject.likes} likes</p>
                    <button class="like-button">♥️ Like</button>
                `;

  const collectionDiv = document.querySelector("div#collection");
  collectionDiv.append(outerDiv);
}

function renderAllCards() {
  articlesArray.forEach(function (articleObj) {
    createOneCard(articleObj);
  });
}

// Toggle light/dark mode

// 1. target element we want to add event listener to
const toggleElement = document.querySelector("#toggle-dark-mode");
// 2. add event listener - argument #1 is the type of event, argument #2 is the callback function that will be invoked
toggleElement.addEventListener("click", function () {
  // toggle the dark-mode class being added or removed
  // if (!document.body.classList.contains("dark-mode")) {
  //   document.body.classList.add("dark-mode");
  // } else {
  //   document.body.classList.remove("dark-mode");
  // }
  document.body.classList.toggle("dark-mode");
});

// when the event occurs on the element
// when the form is submitted, a new
// article is added and rendered

// Add new article via form
// 1. target form
const form = document.querySelector("#article-form");

// 2. add event listener
form.addEventListener("submit", function (event) {
  event.preventDefault();
  // get the user input
  const titleInput = event.target[0].value; // event.target.title.value // document.querySelector('#article-form input').value
  const authorInput = event.target[1].value; // event.target.author.value
  const descriptionInput = event.target[2].value; // event.target.description.value
  const imageInput = event.target[3].value; // event.target.url.value

  const newId = articlesArray[articlesArray.length - 1].id + 1;

  const articleObject = {
    title: titleInput,
    author: authorInput,
    description: descriptionInput,
    image: imageInput,
    likes: 0,
    id: newId,
  };
  articlesArray.push(articleObject);
  createOneCard(articleObject);
  form.reset();
});

updateFirstCardPic();
removeAd();
renderAllCards();
