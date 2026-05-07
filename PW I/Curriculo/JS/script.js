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

const updateButtonIcon = () => {
    if (!botao) return;
    const darkMode = document.body.classList.contains("dark");
    botao.textContent = darkMode ? "Mudar para o modo claro" : "Mudar para o modo escuro";
}

const temaAtual = LocalStorage.getItem("Tema") === "dark" ? "dark" : "light";
if (temaAtual === "dark") {
    document.body.classList.add("dark");
}

updateButtonIcon();
    if(botao) {
        botao.addEventListener("click", () => {
        document.body.classList.toggle("dark");
    
    if (document.body.classList.contains("dark")) {
        localStorage.setItem("Tema", "dark");
    } else {
        LocalStorage.setItem("Tema", "light")
    }
    updateButtonIcon ();
});
}