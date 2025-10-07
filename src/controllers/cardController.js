const cardsModel = require("../models/cardsModel");

const getAllCards = async (req, res) => {
    try {
        const cards = await cardsModel.getCards();
        return res.json(cards);
    } catch (error) {
        console.error(error);
        return res.status(500).json({ message: "Erro ao buscar cartas." });
    }
};

const getCard = async (req, res) => {
    try {
        const { id } = req.params;
        const card = await cardsModel.getCardById(id);
        if (!card) return res.status(404).json({ message: "Carta não encontrada." });
        return res.json(card);
    } catch (error) {
        console.error(error);
        return res.status(500).json({ message: "Erro ao buscar carta." });
    }
};

const createCard = async (req, res) => {
    try {
        const { name, level, type, custo_elixir, description, image_url } = req.body;
        if (!name || type === undefined || custo_elixir === undefined || !description) {
            return res.status(400).json({ message: "Campos obrigatórios: name, type, custo_elixir, description." });
        }
        const created = await cardsModel.createCard({ name, level, type, custo_elixir, description, image_url });
        return res.status(201).json(created);
    } catch (error) {
        console.error(error);
        return res.status(500).json({ message: "Erro ao criar carta." });
    }
};

const updateCard = async (req, res) => {
    try {
        const { id } = req.params;
        const updated = await cardsModel.updateCard(id, req.body);
        if (!updated) return res.status(404).json({ message: "Carta não encontrada ou sem campos para atualizar." });
        return res.json(updated);
    } catch (error) {
        console.error(error);
        return res.status(500).json({ message: "Erro ao atualizar carta." });
    }
};

const deleteCard = async (req, res) => {
    try {
        const { id } = req.params;
        const deleted = await cardsModel.deleteCard(id);
        if (!deleted) return res.status(404).json({ message: "Carta não encontrada." });
        return res.status(200).json({ message: "Carta removida com sucesso." });
    } catch (error) {
        console.error(error);
        return res.status(500).json({ message: "Erro ao deletar carta." });
    }
};

module.exports = { getAllCards, getCard, createCard, updateCard, deleteCard };

