const { z } = require('zod');

const createBeerSchema = z.object({
    name_beer: z.string()
        .min(2, "Le nom doit contenir minimum deux caractères")
        .max(50, "Le nom ne doit pas dépasser 50 caractères")
        .regex(/^[a-zA-ZÀ-ÿ0-9']+( [a-zA-ZÀ-ÿ0-9']+)*$/, "Le nom ne doit contenir que des lettres, chiffres, apostrophes et espaces seulement au milieu"),
    resume_beer: z.string().max(350).optional(),
    with_alcohol: z.boolean().default(true),
    rate_alcohol: z.number()
        .min(0, "Le taux d'alcool ne peut pas être négatif")
        .max(10, "Le taux d'alcool ne peut pas dépasser 10"),
    category_id: z.number().optional(),
    brewery_id: z.number()
});

// reprend la validation précédente mais rend les champs optionnels si l'utilisateur ne modifie pas tout
const updateBeerSchema = createBeerSchema.partial();

module.exports = { createBeerSchema, updateBeerSchema };