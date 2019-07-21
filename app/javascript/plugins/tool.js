const ToolJs = () => {
  const div = document.querySelectorAll(".service-card");

  div.forEach((element) => {
    console.log(element);
    element.addEventListener("click", (event) => {
      event.preventDefault;
      console.log(event);
    })
  })
}

export { ToolJs };
