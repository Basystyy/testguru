document.addEventListener("turbolinks:load", () => {
  if ($('[data-toggle="tooltip"]').length){
    $('[data-toggle="tooltip"]').tooltip()
  };
  if ($('[data-toggle="popover"]').length){
    $('[data-toggle="popover"]').popover()
  }
})