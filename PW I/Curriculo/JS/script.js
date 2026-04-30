const botao = document.getElementById("Tema");

// carregar prefêrencia
if (LocalStorage.getItem("tema") === "dark") {
    document.body.classList.add("dark");
}

// alternar tema
botao.addEventListener("click", () => {
    if (document.body.classList.contains("dark")) {
        LocalStorage.setItem("tema", "dark");
    } else {
        LocalStorage.setItem("tema", "light")
    }
});