-- ============================================
-- ADVENTUROUS TRAVELER - COMPLETE DATABASE
-- ============================================

-- ============================================
-- 1. AIRPORTS (100 European Airports)
-- ============================================

CREATE TABLE `airports` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `code` VARCHAR(10) UNIQUE NOT NULL,
    `name` VARCHAR(100) NOT NULL,
    `city` VARCHAR(100) NOT NULL,
    `country` VARCHAR(100) NOT NULL,
    `latitude` DECIMAL(10, 8) NOT NULL,
    `longitude` DECIMAL(11, 8) NOT NULL,
    `airport_size` ENUM('small', 'medium', 'large'),
    `region` VARCHAR(50),
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO `airports` (`code`, `name`, `city`, `country`, `latitude`, `longitude`, `airport_size`, `region`) VALUES
('EGLL', 'London Heathrow Airport', 'London', 'United Kingdom', 51.47000000, -0.45400000, 'large', 'Western Europe'),
('EGKK', 'London Gatwick Airport', 'London', 'United Kingdom', 51.14800000, -0.19020000, 'large', 'Western Europe'),
('EGCC', 'Manchester Airport', 'Manchester', 'United Kingdom', 53.35370000, -2.27500000, 'large', 'Western Europe'),
('EGPH', 'Edinburgh Airport', 'Edinburgh', 'United Kingdom', 55.95000000, -3.37250000, 'medium', 'Western Europe'),
('EGBB', 'Birmingham Airport', 'Birmingham', 'United Kingdom', 52.45390000, -1.74800000, 'medium', 'Western Europe'),
('EGPF', 'Glasgow Airport', 'Glasgow', 'United Kingdom', 55.87190000, -4.43310000, 'medium', 'Western Europe'),
('EGGD', 'Bristol Airport', 'Bristol', 'United Kingdom', 51.38270000, -2.71910000, 'medium', 'Western Europe'),
('EGNT', 'Newcastle Airport', 'Newcastle', 'United Kingdom', 55.03750000, -1.69167000, 'medium', 'Western Europe'),
('LFPG', 'Charles de Gaulle Airport', 'Paris', 'France', 49.00970000, 2.54780000, 'large', 'Western Europe'),
('LFPO', 'Paris Orly Airport', 'Paris', 'France', 48.72330000, 2.37940000, 'large', 'Western Europe'),
('LFMN', 'Nice Côte d''Azur Airport', 'Nice', 'France', 43.66580000, 7.21500000, 'large', 'Western Europe'),
('LFLL', 'Lyon-Saint Exupéry Airport', 'Lyon', 'France', 45.72570000, 5.08110000, 'large', 'Western Europe'),
('LFML', 'Marseille Provence Airport', 'Marseille', 'France', 43.43920000, 5.22140000, 'large', 'Western Europe'),
('LFBO', 'Toulouse-Blagnac Airport', 'Toulouse', 'France', 43.62910000, 1.36380000, 'medium', 'Western Europe'),
('LFBD', 'Bordeaux-Mérignac Airport', 'Bordeaux', 'France', 44.82830000, -0.71560000, 'medium', 'Western Europe'),
('LFRS', 'Nantes Atlantique Airport', 'Nantes', 'France', 47.15320000, -1.61070000, 'medium', 'Western Europe'),
('LFST', 'Strasbourg Airport', 'Strasbourg', 'France', 48.53830000, 7.62820000, 'small', 'Western Europe'),
('LFQQ', 'Lille Airport', 'Lille', 'France', 50.56330000, 3.08940000, 'small', 'Western Europe'),
('EDDF', 'Frankfurt Airport', 'Frankfurt', 'Germany', 50.03330000, 8.57060000, 'large', 'Central Europe'),
('EDDM', 'Munich Airport', 'Munich', 'Germany', 48.35380000, 11.78600000, 'large', 'Central Europe'),
('EDDB', 'Berlin Brandenburg Airport', 'Berlin', 'Germany', 52.55970000, 13.28770000, 'large', 'Central Europe'),
('EDDL', 'Düsseldorf Airport', 'Düsseldorf', 'Germany', 51.28950000, 6.76680000, 'large', 'Central Europe'),
('EDDH', 'Hamburg Airport', 'Hamburg', 'Germany', 53.63040000, 9.98820000, 'large', 'Central Europe'),
('EDDK', 'Cologne Bonn Airport', 'Cologne', 'Germany', 50.86590000, 7.14270000, 'medium', 'Central Europe'),
('EDDS', 'Stuttgart Airport', 'Stuttgart', 'Germany', 48.68980000, 9.22200000, 'medium', 'Central Europe'),
('EDDN', 'Nuremberg Airport', 'Nuremberg', 'Germany', 49.49870000, 11.06680000, 'medium', 'Central Europe'),
('EDDV', 'Hannover Airport', 'Hannover', 'Germany', 52.46110000, 9.68500000, 'medium', 'Central Europe'),
('EDDC', 'Dresden Airport', 'Dresden', 'Germany', 51.13280000, 13.76720000, 'small', 'Central Europe'),
('LEMD', 'Adolfo Suárez Madrid-Barajas Airport', 'Madrid', 'Spain', 40.47230000, -3.56080000, 'large', 'Southern Europe'),
('LEBL', 'Barcelona-El Prat Airport', 'Barcelona', 'Spain', 41.29710000, 2.07850000, 'large', 'Southern Europe'),
('LEMG', 'Málaga-Costa del Sol Airport', 'Málaga', 'Spain', 36.67490000, -4.49910000, 'large', 'Southern Europe'),
('LEPA', 'Palma de Mallorca Airport', 'Palma', 'Spain', 39.55170000, 2.73880000, 'large', 'Southern Europe'),
('LEVC', 'Valencia Airport', 'Valencia', 'Spain', 39.48930000, -0.48160000, 'large', 'Southern Europe'),
('LEZL', 'Sevilla Airport', 'Sevilla', 'Spain', 37.41800000, -5.89310000, 'medium', 'Southern Europe'),
('LEBB', 'Bilbao Airport', 'Bilbao', 'Spain', 43.30110000, -2.91060000, 'medium', 'Southern Europe'),
('LEAL', 'Alicante-Elche Airport', 'Alicante', 'Spain', 38.28220000, -0.55816000, 'medium', 'Southern Europe'),
('LEST', 'Santiago de Compostela Airport', 'Santiago', 'Spain', 42.89630000, -8.41510000, 'small', 'Southern Europe'),
('LEAS', 'Asturias Airport', 'Oviedo', 'Spain', 43.56360000, -6.03460000, 'small', 'Southern Europe'),
('LIRF', 'Leonardo da Vinci-Fiumicino Airport', 'Rome', 'Italy', 41.80030000, 12.23890000, 'large', 'Southern Europe'),
('LIMC', 'Milan Malpensa Airport', 'Milan', 'Italy', 45.63000000, 8.72810000, 'large', 'Southern Europe'),
('LIML', 'Milan Linate Airport', 'Milan', 'Italy', 45.44510000, 9.27650000, 'medium', 'Southern Europe'),
('LIPZ', 'Venice Marco Polo Airport', 'Venice', 'Italy', 45.50530000, 12.35190000, 'large', 'Southern Europe'),
('LIRN', 'Naples International Airport', 'Naples', 'Italy', 40.88600000, 14.29080000, 'large', 'Southern Europe'),
('LICC', 'Catania-Fontanarossa Airport', 'Catania', 'Italy', 37.46680000, 15.06640000, 'medium', 'Southern Europe'),
('LIPE', 'Bologna Guglielmo Marconi Airport', 'Bologna', 'Italy', 44.53540000, 11.28870000, 'medium', 'Southern Europe'),
('LIRQ', 'Florence Airport', 'Florence', 'Italy', 43.81000000, 11.20510000, 'small', 'Southern Europe'),
('LIRP', 'Pisa International Airport', 'Pisa', 'Italy', 43.68390000, 10.39270000, 'small', 'Southern Europe'),
('LIMF', 'Turin Airport', 'Turin', 'Italy', 45.20080000, 7.64960000, 'small', 'Southern Europe'),
('EHAM', 'Amsterdam Airport Schiphol', 'Amsterdam', 'Netherlands', 52.30860000, 4.76390000, 'large', 'Western Europe'),
('EHEH', 'Eindhoven Airport', 'Eindhoven', 'Netherlands', 51.45010000, 5.37450000, 'medium', 'Western Europe'),
('EHRD', 'Rotterdam The Hague Airport', 'Rotterdam', 'Netherlands', 51.95690000, 4.43720000, 'small', 'Western Europe'),
('EBBR', 'Brussels Airport', 'Brussels', 'Belgium', 50.90140000, 4.48440000, 'large', 'Western Europe'),
('EBCI', 'Brussels South Charleroi Airport', 'Charleroi', 'Belgium', 50.45920000, 4.45380000, 'medium', 'Western Europe'),
('LSZH', 'Zurich Airport', 'Zurich', 'Switzerland', 47.46480000, 8.54910000, 'large', 'Central Europe'),
('LSGG', 'Geneva Airport', 'Geneva', 'Switzerland', 46.23810000, 6.10950000, 'large', 'Central Europe'),
('LFSB', 'EuroAirport Basel-Mulhouse-Freiburg', 'Basel', 'Switzerland', 47.59000000, 7.52910000, 'medium', 'Central Europe'),
('LOWW', 'Vienna International Airport', 'Vienna', 'Austria', 48.11030000, 16.56970000, 'large', 'Central Europe'),
('LOWS', 'Salzburg Airport', 'Salzburg', 'Austria', 47.79330000, 13.00430000, 'medium', 'Central Europe'),
('LPPT', 'Lisbon Portela Airport', 'Lisbon', 'Portugal', 38.78140000, -9.13590000, 'large', 'Southern Europe'),
('LPPR', 'Porto Airport', 'Porto', 'Portugal', 41.24810000, -8.68139000, 'large', 'Southern Europe'),
('LPFR', 'Faro Airport', 'Faro', 'Portugal', 37.01440000, -7.96590000, 'medium', 'Southern Europe'),
('LGAV', 'Athens International Airport', 'Athens', 'Greece', 37.93640000, 23.94450000, 'large', 'Southern Europe'),
('LGTS', 'Thessaloniki Airport', 'Thessaloniki', 'Greece', 40.51970000, 22.97090000, 'medium', 'Southern Europe'),
('LGIR', 'Heraklion International Airport', 'Heraklion', 'Greece', 35.33970000, 25.18030000, 'medium', 'Southern Europe'),
('LGRP', 'Rhodes International Airport', 'Rhodes', 'Greece', 36.40540000, 28.08620000, 'small', 'Southern Europe'),
('ESSA', 'Stockholm Arlanda Airport', 'Stockholm', 'Sweden', 59.65190000, 17.91860000, 'large', 'Northern Europe'),
('EKCH', 'Copenhagen Airport', 'Copenhagen', 'Denmark', 55.61790000, 12.65610000, 'large', 'Northern Europe'),
('ENGM', 'Oslo Airport', 'Oslo', 'Norway', 60.19390000, 11.10040000, 'large', 'Northern Europe'),
('EFHK', 'Helsinki-Vantaa Airport', 'Helsinki', 'Finland', 60.31720000, 24.96330000, 'large', 'Northern Europe'),
('ESGG', 'Gothenburg Landvetter Airport', 'Gothenburg', 'Sweden', 57.66280000, 12.27980000, 'medium', 'Northern Europe'),
('ENBR', 'Bergen Airport', 'Bergen', 'Norway', 60.29340000, 5.21814000, 'medium', 'Northern Europe'),
('EKYT', 'Aalborg Airport', 'Aalborg', 'Denmark', 57.09280000, 9.84920000, 'small', 'Northern Europe'),
('EFTP', 'Tampere-Pirkkala Airport', 'Tampere', 'Finland', 61.41410000, 23.60440000, 'small', 'Northern Europe'),
('EPWA', 'Warsaw Chopin Airport', 'Warsaw', 'Poland', 52.16570000, 20.96710000, 'large', 'Eastern Europe'),
('LKPR', 'Václav Havel Airport Prague', 'Prague', 'Czech Republic', 50.10080000, 14.26000000, 'large', 'Eastern Europe'),
('LHBP', 'Budapest Ferenc Liszt International Airport', 'Budapest', 'Hungary', 47.43660000, 19.25560000, 'large', 'Eastern Europe'),
('LROP', 'Henri Coandă International Airport', 'Bucharest', 'Romania', 44.57220000, 26.10250000, 'large', 'Eastern Europe'),
('LBSF', 'Sofia Airport', 'Sofia', 'Bulgaria', 42.69500000, 23.41140000, 'medium', 'Eastern Europe'),
('EPKK', 'John Paul II International Airport', 'Kraków', 'Poland', 50.07770000, 19.78480000, 'medium', 'Eastern Europe'),
('LZIB', 'M. R. Štefánik Airport', 'Bratislava', 'Slovakia', 48.17020000, 17.21270000, 'small', 'Eastern Europe'),
('EVRA', 'Riga International Airport', 'Riga', 'Latvia', 56.92360000, 23.97110000, 'medium', 'Eastern Europe'),
('EETN', 'Tallinn Airport', 'Tallinn', 'Estonia', 59.41330000, 24.83280000, 'medium', 'Eastern Europe'),
('EYVI', 'Vilnius Airport', 'Vilnius', 'Lithuania', 54.63410000, 25.28580000, 'medium', 'Eastern Europe'),
('EIDW', 'Dublin Airport', 'Dublin', 'Ireland', 53.42130000, -6.27010000, 'large', 'Western Europe'),
('EICK', 'Cork Airport', 'Cork', 'Ireland', 51.84130000, -8.49110000, 'small', 'Western Europe'),
('LYBE', 'Belgrade Nikola Tesla Airport', 'Belgrade', 'Serbia', 44.81840000, 20.30910000, 'medium', 'Eastern Europe'),
('LDZA', 'Zagreb Airport', 'Zagreb', 'Croatia', 45.74290000, 16.06880000, 'medium', 'Eastern Europe'),
('LJLJ', 'Ljubljana Jože Pučnik Airport', 'Ljubljana', 'Slovenia', 46.22370000, 14.45760000, 'small', 'Eastern Europe'),
('LWSK', 'Skopje International Airport', 'Skopje', 'North Macedonia', 41.96160000, 21.62140000, 'small', 'Eastern Europe'),
('LDDU', 'Dubrovnik Airport', 'Dubrovnik', 'Croatia', 42.56140000, 18.26820000, 'small', 'Southern Europe'),
('ELLX', 'Luxembourg Airport', 'Luxembourg', 'Luxembourg', 49.62330000, 6.20440000, 'medium', 'Western Europe'),
('BIKF', 'Keflavík International Airport', 'Reykjavik', 'Iceland', 63.98500000, -22.60560000, 'large', 'Northern Europe'),
('LCLK', 'Larnaca International Airport', 'Larnaca', 'Cyprus', 34.87510000, 33.62490000, 'medium', 'Southern Europe'),
('LMML', 'Malta International Airport', 'Valletta', 'Malta', 35.85750000, 14.47750000, 'medium', 'Southern Europe');

-- ============================================
-- 2. ARTIFACTS (10 Artifacts)
-- ============================================

CREATE TABLE `artifacts` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(100) NOT NULL,
    `description` TEXT,
    `delivery_airport_id` INT NOT NULL,
    `delivery_reward_money` INT DEFAULT 3000,
    `delivery_reward_fuel` INT DEFAULT 1000,
    `artifact_order` INT NOT NULL,
    FOREIGN KEY (`delivery_airport_id`) REFERENCES `airports`(`id`)
);

INSERT INTO `artifacts` (`name`, `description`, `delivery_airport_id`, `delivery_reward_money`, `delivery_reward_fuel`, `artifact_order`) VALUES
('Crown of Charlemagne', 'Ancient crown of the Holy Roman Emperor, adorned with precious gems and gold.', 1, 5000, 1500, 1),
('Viking Runestone', 'A mysterious stone tablet inscribed with ancient Nordic runes.', 1, 4500, 1200, 2),
('Medici Manuscript', 'A priceless Renaissance document from the Medici family archives.', 1, 4000, 1000, 3),
('Byzantine Chalice', 'Golden ceremonial cup from the Byzantine Empire.', 1, 4200, 1100, 4),
('Celtic Torc', 'An ornate golden neck ring worn by ancient Celtic warriors.', 1, 3800, 1000, 5),
('Golden Mask of Agamemnon', 'Legendary funeral mask from ancient Mycenae.', 1, 5500, 1500, 6),
('Fabergé Egg', 'One of the precious Imperial Easter Eggs.', 1, 6000, 1800, 7),
('Gutenberg Bible Page', 'A single page from the first printed Bible in Europe.', 1, 4500, 1300, 8),
('Da Vinci Codex Fragment', 'Lost pages from Leonardo da Vinci''s notebooks.', 1, 5200, 1400, 9),
('Amber Room Panel', 'A reconstructed panel from the legendary Amber Room.', 1, 5800, 1600, 10);

-- ============================================
-- 3. EVENT TYPES (Random Events)
-- ============================================

CREATE TABLE `event_types` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(100) NOT NULL,
    `description` TEXT NOT NULL,
    `event_category` ENUM('lootbox','positive','negative','neutral','task','clue','delivery') NOT NULL,
    `effect_money_min` INT DEFAULT 0,
    `effect_money_max` INT DEFAULT 0,
    `effect_fuel_min` INT DEFAULT 0,
    `effect_fuel_max` INT DEFAULT 0,
    `probability_weight` INT DEFAULT 10
);

-- LOOTBOX EVENTS
INSERT INTO `event_types` (`name`, `description`, `event_category`, `effect_money_min`, `effect_money_max`, `effect_fuel_min`, `effect_fuel_max`, `probability_weight`) VALUES
('Bronze Lootbox', 'You found a small treasure chest at the airport!', 'lootbox', 200, 500, 300, 500, 10),
('Silver Lootbox', 'A medium-sized lockbox was left behind! Lucky you!', 'lootbox', 600, 1200, 600, 1000, 10),
('Gold Lootbox', 'Jackpot! You discovered a large treasure cache!', 'lootbox', 1500, 3000, 1200, 2000, 10);

-- POSITIVE EVENTS
INSERT INTO `event_types` (`name`, `description`, `event_category`, `effect_money_min`, `effect_money_max`, `effect_fuel_min`, `effect_fuel_max`, `probability_weight`) VALUES
('Lucky Stranger', 'A kind traveler noticed your courier badge and gave you a generous tip!', 'positive', 300, 800, 0, 0, 7),
('Free Fuel Station', 'The airport is celebrating with free fuel for all travelers today!', 'positive', 0, 0, 400, 700, 6),
('Found Wallet', 'You found a lost wallet and returned it. The grateful owner rewarded you!', 'positive', 500, 1000, 0, 0, 5),
('Discount Voucher', 'A promotional event gives you a discount on your next refuel!', 'positive', 200, 400, 300, 500, 5),
('Airport Lottery', 'You won a small prize in the airport lottery!', 'positive', 400, 900, 0, 0, 4),
('Fuel Efficiency', 'A mechanic optimized your plane''s engine for free!', 'positive', 0, 0, 500, 800, 3);

-- NEGATIVE EVENTS
INSERT INTO `event_types` (`name`, `description`, `event_category`, `effect_money_min`, `effect_money_max`, `effect_fuel_min`, `effect_fuel_max`, `probability_weight`) VALUES
('Fuel Leak', 'Oh no! Your fuel tank has developed a small leak!', 'negative', 0, 0, -300, -500, 5),
('Pickpocket', 'A thief stole some money from your bag in the crowded terminal!', 'negative', -400, -800, 0, 0, 4),
('Emergency Landing Fee', 'Technical difficulties forced an expensive emergency landing!', 'negative', -500, -700, -200, -300, 3),
('Bad Weather Delay', 'Storm conditions cost you extra fuel and emergency rerouting fees.', 'negative', -300, -500, -200, -400, 3),
('Equipment Malfunction', 'Your navigation system broke. Repairs are expensive!', 'negative', -600, -900, 0, 0, 2),
('Overpriced Parking', 'Airport parking fees were much higher than expected!', 'negative', -200, -400, 0, 0, 3);

-- NEUTRAL EVENTS
INSERT INTO `event_types` (`name`, `description`, `event_category`, `effect_money_min`, `effect_money_max`, `effect_fuel_min`, `effect_fuel_max`, `probability_weight`) VALUES
('Sunny Weather', 'Perfect flying conditions today! Clear skies ahead.', 'neutral', 0, 0, 0, 0, 5),
('Airport Announcement', 'You hear interesting stories from other travelers at the gate.', 'neutral', 0, 0, 0, 0, 4),
('Local Festival', 'The city is celebrating a festival! The airport is decorated beautifully.', 'neutral', 0, 0, 0, 0, 3),
('Flight Magazine', 'You read an interesting article while waiting for departure.', 'neutral', 0, 0, 0, 0, 3);

-- TASK EVENTS
INSERT INTO `event_types` (`name`, `description`, `event_category`, `effect_money_min`, `effect_money_max`, `effect_fuel_min`, `effect_fuel_max`, `probability_weight`) VALUES
('Quick Delivery', 'A businessman needs a document delivered to a nearby airport urgently!', 'task', 500, 1000, 0, 0, 6),
('Help Tourist', 'A lost tourist needs help finding their way. They''ll pay for your time!', 'task', 300, 600, 200, 400, 5),
('Cargo Transport', 'The airport cargo office needs extra help with a small shipment.', 'task', 700, 1200, 0, 0, 4);

-- CLUE EVENTS
INSERT INTO `event_types` (`name`, `description`, `event_category`, `effect_money_min`, `effect_money_max`, `effect_fuel_min`, `effect_fuel_max`, `probability_weight`) VALUES
('Map Fragment', 'You found an old map with markings! It hints at artifact locations in Europe.', 'clue', 0, 0, 0, 0, 3),
('Local Historian', 'An elderly historian shares stories about legendary treasures in the region.', 'clue', 0, 0, 0, 0, 2);

-- ============================================
-- 4. SHOP ITEMS (All purchasable items)
-- ============================================

CREATE TABLE `shop_items` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(100) NOT NULL,
    `description` TEXT NOT NULL,
    `category` ENUM('fuel','upgrade','powerup','service','lootbox') NOT NULL,
    `price` INT NOT NULL,
    `item_type` VARCHAR(50) NOT NULL,
    `effect_value` INT DEFAULT 0,
    `effect_duration` INT DEFAULT 0,
    `is_permanent` BOOLEAN DEFAULT FALSE,
    `is_consumable` BOOLEAN DEFAULT TRUE,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO `shop_items` (`name`, `description`, `category`, `price`, `item_type`, `effect_value`, `effect_duration`, `is_permanent`, `is_consumable`) VALUES
-- FUEL STATION
('Regular Fuel (100km)', 'Standard aviation fuel', 'fuel', 500, 'fuel_regular', 100, 0, FALSE, TRUE),
('Regular Fuel (500km)', 'Standard aviation fuel', 'fuel', 2500, 'fuel_regular', 500, 0, FALSE, TRUE),
('Regular Fuel (1000km)', 'Standard aviation fuel', 'fuel', 5000, 'fuel_regular', 1000, 0, FALSE, TRUE),
('Premium Fuel (100km)', 'High-efficiency fuel with 5% bonus', 'fuel', 700, 'fuel_premium', 105, 0, FALSE, TRUE),
('Premium Fuel (500km)', 'High-efficiency fuel with 5% bonus', 'fuel', 3500, 'fuel_premium', 525, 0, FALSE, TRUE),
('Premium Fuel (1000km)', 'High-efficiency fuel with 5% bonus', 'fuel', 7000, 'fuel_premium', 1050, 0, FALSE, TRUE),

-- UPGRADES
('Fuel Tank Upgrade', 'Increase maximum fuel capacity by 1000km permanently', 'upgrade', 3000, 'fuel_capacity', 1000, 0, TRUE, FALSE),
('Fuel Efficiency Chip', 'Permanent 10% reduction in fuel consumption', 'upgrade', 4000, 'fuel_efficiency', 10, 0, TRUE, FALSE),
('VIP Membership', 'Get 15% discount on all future flights permanently', 'upgrade', 5000, 'flight_discount', 15, 0, TRUE, FALSE),

-- POWERUPS
('Clue Detector', 'Reveals one random clue about artifact locations', 'powerup', 2000, 'reveal_clue', 1, 0, FALSE, TRUE),
('Insurance Policy', 'Protects against the next negative event', 'powerup', 1500, 'event_protection', 1, 0, FALSE, TRUE),
('Lucky Charm', 'Increase positive event chance by 10% for next 5 flights', 'powerup', 800, 'luck_boost', 10, 5, FALSE, TRUE),
('Hire Informant', 'Get a hint about the nearest artifact location', 'powerup', 1200, 'artifact_hint', 1, 0, FALSE, TRUE),

-- SERVICES
('Express Travel', 'Skip one flight - teleport to any airport within 2000km', 'service', 1000, 'teleport', 2000, 0, FALSE, TRUE),
('Bribe Official', 'Cancel the effect of one negative event', 'service', 500, 'cancel_negative', 1, 0, FALSE, TRUE),

-- LOOTBOXES
('Bronze Lootbox', 'Small reward: €200-800 or 300-600km fuel', 'lootbox', 300, 'lootbox_bronze', 0, 0, FALSE, TRUE),
('Silver Lootbox', 'Medium reward: €800-2000 or 700-1200km fuel', 'lootbox', 800, 'lootbox_silver', 0, 0, FALSE, TRUE),
('Gold Lootbox', 'Large reward: €2000-5000 or 1500-3000km fuel, rare clue chance', 'lootbox', 2000, 'lootbox_gold', 0, 0, FALSE, TRUE);

-- ============================================
-- 5. GAMES (Player Sessions)
-- ============================================

CREATE TABLE `games` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `player_name` VARCHAR(40) NOT NULL,
    `money` INT DEFAULT 10000,
    `fuel_km` INT DEFAULT 2500,
    `max_fuel_capacity` INT DEFAULT 5000,
    `fuel_efficiency_bonus` INT DEFAULT 0,
    `flight_discount_percent` INT DEFAULT 0,
    `luck_boost_remaining` INT DEFAULT 0,
    `has_insurance` BOOLEAN DEFAULT FALSE,
    `current_airport_id` INT NOT NULL,
    `current_artifact_number` INT DEFAULT 1,
    `artifacts_delivered` INT DEFAULT 0,
    `flights_taken` INT DEFAULT 0,
    `game_status` ENUM('ACTIVE','WON','LOST') DEFAULT 'ACTIVE',
    `total_score` INT DEFAULT 0,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (`current_airport_id`) REFERENCES `airports`(`id`)
);

-- ============================================
-- 6. PLAYER INVENTORY (Purchased Items)
-- ============================================

CREATE TABLE `player_inventory` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `game_id` INT NOT NULL,
    `shop_item_id` INT NOT NULL,
    `quantity` INT DEFAULT 1,
    `is_active` BOOLEAN DEFAULT TRUE,
    `remaining_uses` INT DEFAULT 1,
    `purchased_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (`game_id`) REFERENCES `games`(`id`) ON DELETE CASCADE,
    FOREIGN KEY (`shop_item_id`) REFERENCES `shop_items`(`id`)
);

-- ============================================
-- 7. LOGS (Unified table for all activities)
-- ============================================

CREATE TABLE `logs` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `game_id` INT NOT NULL,
    `log_type` ENUM('event','flight','delivery','purchase','item_use') NOT NULL,
    `event_type_id` INT,
    `shop_item_id` INT,
    `from_airport_id` INT,
    `to_airport_id` INT,
    `money_change` INT DEFAULT 0,
    `fuel_change` INT DEFAULT 0,
    `distance_km` INT,
    `flights_taken_for_delivery` INT,
    `description` TEXT,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (`game_id`) REFERENCES `games`(`id`) ON DELETE CASCADE,
    FOREIGN KEY (`event_type_id`) REFERENCES `event_types`(`id`),
    FOREIGN KEY (`shop_item_id`) REFERENCES `shop_items`(`id`),
    FOREIGN KEY (`from_airport_id`) REFERENCES `airports`(`id`),
    FOREIGN KEY (`to_airport_id`) REFERENCES `airports`(`id`)
);
