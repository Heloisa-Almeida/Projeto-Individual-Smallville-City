var dashboardModels = require("../models/dashboardModels");

function buscarInfo(req, res) {

        dashboardModels.buscarInfo()
            .then(function (resultado) {
res.status(200).json(resultado[0]);            })
            .catch(function (erro) {
                res.status(500).json(erro.sqlMessage);
            });
}

module.exports = {
    buscarInfo
};