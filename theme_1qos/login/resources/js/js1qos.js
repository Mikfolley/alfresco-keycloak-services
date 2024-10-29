function ocultar_form() {
    var x = document.getElementById("kc-content");
    if (x.style.display === "none") {
      x.style.display = "block";
      //x.style.background="#2C3E50";
    } else {
      x.style.display = "none";
      //x.style.background="transparent";
    }
  }