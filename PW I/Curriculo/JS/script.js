/*-const botao = document.getElementById("Tema");

if (localStorage.getItem("Tema") === "dark"){
    document.body.classList.add("dark");
}

botao.addEventListener("click", () => { 
    document.body.classList.toggle("dark");
    if (document.body.classList.contains("dark")) {
        localStorage.setItem("Tema", "dark");
    } else {
        localStorage.setItem("Tema", "light");
    }
});*/

const botao= document.getElementById("Tema");

const updateButtonIcon = () => {
    if (!botao) return;
    const darkMode = document.body.classList.contains("dark")
    botao.textContent = darkMode ? "🌓" : "🌗";
    botao.title = darkMode ? "Mudar para modo claro" : "Mudar para modo escuro";
};

const TemaAtual = localStorage.getItem("Tema") === "dark" ? "dark" : "light";
if(TemaAtual === "dark") {
    document.body.classList.add("dark");
}

updateButtonIcon();

if (botao) {
    botao.addEventListener("click", () => { document.body.classList.toggle("dark");
        if(document.body.classList.contains("dark")) {
            localStorage.setItem("Tema", "dark");
        } else {
            localStorage.setItem("Tema", "light");
        }

        updateButtonIcon ();
    });
}