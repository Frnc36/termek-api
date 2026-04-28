const TermekModel = require("../models/termekModel");

const TermekController = {

    getAllTermek: (req, res) => {
        TermekModel.getAll((err, results) => {
            if (err) return res.status(500).json(err);
            res.json(results);
        });
    },

    getTermekById: (req, res) => {
        const id = req.params.id;

        TermekModel.getById(id, (err, results) => {
            if (err) return res.status(500).json(err);
            res.json(results[0]);
        });
    },

    createTermek: (req, res) => {
        const termek = req.body;

        TermekModel.create(termek, (err, result) => {
            if (err) return res.status(500).json(err);
            res.json({ message: "Sikeres létrehozás!" });
        });
    },

    updateTermek: (req, res) => {
        const id = req.params.id;
        const termek = req.body;

        TermekModel.update(id, termek, (err) => {
            if (err) return res.status(500).json(err);
            res.json({ message: "Sikeres módosítás!" });
        });
    },

    deleteTermek: (req, res) => {
        const id = req.params.id;

        TermekModel.delete(id, (err) => {
            if (err) return res.status(500).json(err);
            res.json({ message: "Sikeres törlés!" });
        });
    }

};

module.exports = TermekController;