/*
  # Add Sofab Soap Products

  1. New Category
    - Add "soaps" category if it doesn't exist

  2. New Menu Items
    - Pumpkin Soap (with 60g and 80g variations)
    - Charcoal Soap (with 60g and 80g variations)
    - Lemongrass Soap (with 60g and 80g variations)
    - Goat's Milk Soap (with 60g and 80g variations)
    - Lavender Soap (with 60g and 80g variations)
    - Coffee Soap (with 60g and 80g variations)
    - Dog & Cat Soap (80g only)

  3. Variations
    - Size variations (60g and 80g) with different prices
    - All variations reference menu items by name
*/

-- Add soaps category if it doesn't exist
INSERT INTO categories (id, name, icon, sort_order, active) VALUES
  ('soaps', 'Soaps', '🧼', 1, true)
ON CONFLICT (id) DO NOTHING;

-- Insert Pumpkin Soap
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('🌼 Pumpkin Soap', 'Para sa sensitive skin. May pumpkin oil, chamomile, at oatmeal to soothe and calm irritated skin.', 65, 'soaps', false, true, 'https://images.pexels.com/photos/4518843/pexels-photo-4518843.jpeg?auto=compress&cs=tinysrgb&w=800')
RETURNING id;

-- Add variations for Pumpkin Soap (60g and 80g)
INSERT INTO variations (menu_item_id, name, price) VALUES
  ((SELECT id FROM menu_items WHERE name = '🌼 Pumpkin Soap'), '60g', 0),
  ((SELECT id FROM menu_items WHERE name = '🌼 Pumpkin Soap'), '80g', 25)
ON CONFLICT DO NOTHING;

-- Insert Charcoal Soap
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('🖤 Charcoal Soap', 'Deep-cleansing bar para sa may acne, oily skin, or dark spots. With activated charcoal, kojic acid, pink salt, and minty essential oils for that fresh, linis feeling!', 65, 'soaps', false, true, 'https://images.pexels.com/photos/4518843/pexels-photo-4518843.jpeg?auto=compress&cs=tinysrgb&w=800')
RETURNING id;

-- Add variations for Charcoal Soap (60g and 80g)
INSERT INTO variations (menu_item_id, name, price) VALUES
  ((SELECT id FROM menu_items WHERE name = '🖤 Charcoal Soap'), '60g', 0),
  ((SELECT id FROM menu_items WHERE name = '🖤 Charcoal Soap'), '80g', 25)
ON CONFLICT DO NOTHING;

-- Insert Lemongrass Soap
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('🍋 Lemongrass Soap', 'Herbal and antibacterial with madre de cacao, lemongrass, lemon peel, and lime essential oil. Gising ang balat mo sa linis!', 65, 'soaps', false, true, 'https://images.pexels.com/photos/4518843/pexels-photo-4518843.jpeg?auto=compress&cs=tinysrgb&w=800')
RETURNING id;

-- Add variations for Lemongrass Soap (60g and 80g)
INSERT INTO variations (menu_item_id, name, price) VALUES
  ((SELECT id FROM menu_items WHERE name = '🍋 Lemongrass Soap'), '60g', 0),
  ((SELECT id FROM menu_items WHERE name = '🍋 Lemongrass Soap'), '80g', 25)
ON CONFLICT DO NOTHING;

-- Insert Goat's Milk Soap
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('🥛 Goat''s Milk Soap', 'Super creamy and hydrating. May real goat''s milk, wild honey, and oatmeal. Mabango with ylang ylang essential oil 💕', 65, 'soaps', false, true, 'https://images.pexels.com/photos/4518843/pexels-photo-4518843.jpeg?auto=compress&cs=tinysrgb&w=800')
RETURNING id;

-- Add variations for Goat's Milk Soap (60g and 80g)
INSERT INTO variations (menu_item_id, name, price) VALUES
  ((SELECT id FROM menu_items WHERE name = '🥛 Goat''s Milk Soap'), '60g', 0),
  ((SELECT id FROM menu_items WHERE name = '🥛 Goat''s Milk Soap'), '80g', 25)
ON CONFLICT DO NOTHING;

-- Insert Lavender Soap
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('💜 Lavender Soap', 'Pang-relax at pampakalma ng skin at senses. With lavender buds, calendula petals, yarrow, and geranium essential oil.', 65, 'soaps', false, true, 'https://images.pexels.com/photos/4518843/pexels-photo-4518843.jpeg?auto=compress&cs=tinysrgb&w=800')
RETURNING id;

-- Add variations for Lavender Soap (60g and 80g)
INSERT INTO variations (menu_item_id, name, price) VALUES
  ((SELECT id FROM menu_items WHERE name = '💜 Lavender Soap'), '60g', 0),
  ((SELECT id FROM menu_items WHERE name = '💜 Lavender Soap'), '80g', 25)
ON CONFLICT DO NOTHING;

-- Insert Coffee Soap
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('☕ Coffee Soap', 'Brightening and exfoliating! May coffee grounds, bearberry extract, and papaya extract to give your skin that natural glow.', 65, 'soaps', false, true, 'https://images.pexels.com/photos/4518843/pexels-photo-4518843.jpeg?auto=compress&cs=tinysrgb&w=800')
RETURNING id;

-- Add variations for Coffee Soap (60g and 80g)
INSERT INTO variations (menu_item_id, name, price) VALUES
  ((SELECT id FROM menu_items WHERE name = '☕ Coffee Soap'), '60g', 0),
  ((SELECT id FROM menu_items WHERE name = '☕ Coffee Soap'), '80g', 25)
ON CONFLICT DO NOTHING;

-- Insert Dog & Cat Soap (80g only, no variations needed - price is 80)
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('🐶🐱 Dog & Cat Soap', 'Para kay furbaby! May neem, madre de cacao, tea tree, and citronella to fight ticks, fleas, and skin issues — safe and gentle!', 80, 'soaps', false, true, 'https://images.pexels.com/photos/4518843/pexels-photo-4518843.jpeg?auto=compress&cs=tinysrgb&w=800')
RETURNING id;

