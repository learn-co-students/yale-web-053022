// Learnings Goals:
// - Event propagation
// - Event delegation

const titleH1 = document.querySelector("h1#news-co");
const allCards = document.querySelectorAll("div.card");

function updateFirstCardPic() {
  // target the element of interest
  const firstCardImg = document.querySelector('[data-id="1"] img');
  // update the property want. Bam!
  firstCardImg.src = "images/raffy.jpg";
}

function removeAd() {
  // DELETE
  // find the element we want to delete
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

  //   // delete btn functionality
  //   // Step 1: target the element (querySelector)
  //   const delBtn = outerDiv.querySelector(".delete-button");

  //   // Step 2: add event listener
  //   delBtn.addEventListener("click", () => {
  //     console.log(`${articleObject.title} was deleted`);
  //     // Step 3: function that deletes the article from web page
  //     outerDiv.remove();
  //   });

  //   const likeBtn = outerDiv.querySelector(".like-button");
  //   likeBtn.addEventListener("click", () => {
  //     console.log(`${articleObject.title} was liked`);
  //   });

  const collectionDiv = document.querySelector("div#collection");
  collectionDiv.append(outerDiv);
}

function renderAllCards() {
  articlesArray.forEach(function (articleObj) {
    createOneCard(articleObj);
  });
}

const toggleElement = document.querySelector("input#toggle-dark-mode");

toggleElement.addEventListener("click", function () {
  document.body.classList.toggle("dark-mode");
});

const form = document.querySelector("form#article-form");

form.addEventListener("submit", function (event) {
  event.preventDefault();

  // get the user input
  const titleInput = event.target[0].value; // event.target.title.value // document.querySelector('#article-form input').value
  const authorInput = event.target[1].value;
  const descriptionInput = event.target[2].value;
  const imageInput = event.target[3].value;

  // DOM MANIPULATION - add new article card to page using user input
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

/* APP INIT */
removeAd();
renderAllCards();

// EVENT DELEGATION

// 1. Target the element
const collectionDiv = document.querySelector("div#collection");

// 2. Add the event listener
collectionDiv.addEventListener("click", (event) => {
  // 3. add conditional logic to determine whether the user
  // clicked on the like or the delete button

  // if delete btn,
  //  delete that card
  if (event.target.classList.contains("delete-button")) {
    // target the closest card parent
    // let card = event.target.parentElement.parentElement;
    let card = event.target.closest("div.card");
    card.remove();
  } else if (event.target.matches("button.like-button")) {
    // target the span
    const likesNumSpan = event.target.previousElementSibling.children[0];

    // extract the value
    const currLikes = parseInt(likesNumSpan.textContent);

    // increase the value by one
    const newLikes = currLikes + 1;

    // replace the text content with new value
    likesNumSpan.textContent = newLikes;
  }
});
