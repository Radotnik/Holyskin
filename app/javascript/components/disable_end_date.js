const disable = () => {
  const checkbox = document.getElementById("disable_end_date")

  const field = document.querySelector(".treatment_end_date")

if (checkbox) {
  checkbox.addEventListener("change",() => {

    if (checkbox.checked){
      field.classList.add("d-none")
    } else {
      field.classList.remove("d-none")
    }
  })
}
}

export {disable}

