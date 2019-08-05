const displayInfo = () => {
  const displayButtons = document.querySelectorAll(".display-button");

  displayButtons.forEach((button) => {
    button.addEventListener('click', (event) =>  {
      let id = event.currentTarget.attributes[1].value
      let infoDiv = document.querySelector(`[data-information-id = "${id}"]`);
      infoDiv.classList.contains("hidden") ? infoDiv.classList.remove("hidden") : infoDiv.classList.add("hidden");
    })
  })
}

export { displayInfo };


