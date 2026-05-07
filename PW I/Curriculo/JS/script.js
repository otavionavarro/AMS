const botao = document.getElementById("Tema");

// carregar prefêrencia
if (localStorage.getItem("tema") === "dark") {
    document.body.classList.add("dark");
}

// alternar tema
botao.addEventListener("click",() => {
    document.body.classList.toggle("dark");

    if (document.body.classList.contains("dark")) {
        LocalStorage.setItem("Tema", "dark");
    } else {
        LocalStorage.setItem("Tema", "light")
    }
});