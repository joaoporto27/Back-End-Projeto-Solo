const pool = require("../config/database");

const getCards = async () => {
    const result = await pool.query(
        `SELECT *
         FROM cards
         `
    );
    return result.rows;
};

const getCardById = async (id) => {
    const result = await pool.query(
        `SELECT *
         FROM cards
         WHERE id = $1`, [id]
    );
    return result.rows[0];
};

const createCard = async ({ name, level = 1, type, custo_elixir, description, image_url = null }) => {
    const result = await pool.query(
        `INSERT INTO cards (name, level, type, custo_elixir, description, image_url)
         VALUES ($1, $2, $3, $4, $5, $6) RETURNING *`,
        [name, level, type, custo_elixir, description, image_url]
    );
    return result.rows[0];
};

const updateCard = async (id, fields) => {
    const allowed = ["name", "level", "type", "custo_elixir", "description", "image_url"];
    const setParts = [];
    const values = [];
    let idx = 1;
    for (const key of allowed) {
        if (fields[key] !== undefined) {
            setParts.push(`${key} = $${idx}`);
            values.push(fields[key]);
            idx++;
        }
    }
    if (setParts.length === 0) return null;
    values.push(id);
    const result = await pool.query(
        `UPDATE cards SET ${setParts.join(", ")} WHERE id = $${idx} RETURNING *`,
        values
    );
    return result.rows[0];
};

const deleteCard = async (id) => {
    const result = await pool.query(
        `DELETE FROM cards WHERE id = $1 RETURNING *`, [id]
    );
    return result.rows[0];
};

module.exports = { getCards, getCardById, createCard, updateCard, deleteCard };
