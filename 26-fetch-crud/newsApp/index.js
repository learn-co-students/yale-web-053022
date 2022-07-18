const titleH1 = document.querySelector("h1#news-co");
const allCards = document.querySelectorAll("div.card");
const collectionDiv = document.querySelector("div#collection");
const form = document.querySelector("form#article-form");
const toggleElement = document.querySelector("input#toggle-dark-mode");

/* FUNCTIONS */

function updateFirstCardPic() {
  const firstCardImg = document.querySelector('[data-id="1"] img');
  firstCardImg.src =
    "/Users/michelle/Desktop/my-cohorts/yale-web-060721/21-dom-manipulation/newsApp/images/raffy.jpg";
}

function removeAd() {
  const adCard = document.querySelector(".card.ad");
  adCard.remove();
}

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
                    <p class="react-count"><span>${articleObject.likes}</span> likes</p>
                    <button class="like-button">♥️ Like</button>
                    <button class='delete-button'>X</button>
                </div>
                `;

  const collectionDiv = document.querySelector("div#collection");
  collectionDiv.append(outerDiv);
}

function renderAllCards() {
  articlesArray.forEach(function (articleObj) {
    createOneCard(articleObj);
  });

  // Fetch articles
}

/* EVENT LISTENERS */

toggleElement.addEventListener("click", function () {
  document.body.classList.toggle("dark-mode");
});

form.addEventListener("submit", function (event) {
  event.preventDefault();

  // get the user input
  const titleInput = event.target[0].value; // event.target.title.value // document.querySelector('#article-form input').value
  const authorInput = event.target[1].value;
  const descriptionInput = event.target[2].value;
  const imageInput = event.target[3].value;

  // DOM MANIPULATION - add new article card to page using user input
  // const newId = articlesArray[articlesArray.length - 1].id + 1

  const articleObject = {
    title: titleInput,
    author: authorInput,
    description: descriptionInput,
    image: imageInput,
    likes: 0,
  };

  // articlesArray.push(articleObject)
  // createOneCard(articleObject)
  form.reset();

  // create new article on backend
});

collectionDiv.addEventListener("click", (event) => {
  if (event.target.classList.contains("delete-button")) {
    let card = event.target.closest("div.card");
    card.remove();
    // delete card on backend
  } else if (event.target.matches("button.like-button")) {
    let card = event.target.closest("div.card");
    let likesNumSpan = card.querySelector("p.react-count span");
    const currLikes = parseInt(likesNumSpan.textContent);
    const newLikes = currLikes + 1;
    // update card on backend
  }
});

/* APP INIT */

removeAd();
renderAllCards();
