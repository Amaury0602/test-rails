const selectService = () => {
  const serviceList = document.querySelectorAll(".select-card");
  serviceList.forEach((service) => {
    service.addEventListener('click', (event) => {
      service.classList.toggle("active");
    })
  })
}

export { selectService };
