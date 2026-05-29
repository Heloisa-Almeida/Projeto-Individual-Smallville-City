var express = require("express");
var router = express.Router();

var dashboardController = require("../controllers/dashboardController");

router.get("/buscarInfo", function (req, res) {
    dashboardController.buscarInfo(req, res);
});

//router.get("/kpis/:idUsuario", function(req,res) {
// dashboardController.buscarKpis(req,res);
//});

module.exports = router;