var database = require("../database/config")

function autenticar(email, senha) {
    console.log("ACESSEI O USUARIO MODEL - function autenticar():", email, senha);

    var instrucaoSql = `
        SELECT idCadastro, email, nome FROM cadastro WHERE email = ? AND senha = ?;
    `;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql, [email, senha]);
}

function cadastrar(nome, apelido, email, senha) {
    console.log("ACESSEI O USUARIO MODEL - function cadastrar():", nome, apelido, email, senha);

    var instrucaoSql = `
        INSERT INTO cadastro (nome, apelido, email, senha) VALUES (?, ?, ?, ?);
    `;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql, [nome, apelido, email, senha]);
}

module.exports = {
    autenticar,
    cadastrar
};