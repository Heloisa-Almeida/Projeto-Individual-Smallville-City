var database = require("../database/config");

function buscarInfo() {
    var instrucaoSql = `SELECT * FROM caracteristicas;`;

    console.log(instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    buscarInfo
};