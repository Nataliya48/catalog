CREATE TABLE products
(
    id           INT UNSIGNED NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id),
    name         VARCHAR(255) NOT NULL,
    description  VARCHAR(255) NOT NULL,
    img          VARCHAR(255) NOT NULL,
    price        FLOAT        NOT NULL,
    availability TINYINT(1)   NOT NULL
);

INSERT INTO products(name, description, img, price, availability)
VALUES ('ПОДСВЕЧНИК декорат. для 3-х свечей, "Красный цветок" 18*9*20см', 'Артикул 4210310. Страна КИТАЙ. Вес 0.46 кг',
        '/assets/img/imgproduct.png', 923, true),
       ('Подсвечник декор. для 2-х свечей "Белый цветок" 19*9*21см (металл, стекло)',
        'Артикул 4210027. Страна КИТАЙ. Вес 0.629 кг', '/assets/img/imgproduct.png', 685, true),
       ('Подсвечник декор. для 1-й свечи "Золотой цветок" 9*9,5*13,5см (металл, стекло)',
        'Артикул 4210298. Страна КИТАЙ. Вес 0.292 кг', '/assets/img/imgproduct.png', 353, true),
       ('Набор подсвечников 2 шт F&D "Grace", цвет: прозрачный', 'Артикул 68159. Страна ТУРЦИЯ. Вес 1.315 кг',
        '/assets/img/imgproduct.png', 1377, true),
       ('Свеча декоративная House & Holder "Тыква", 10 см х 10 см х 9 см',
        'Артикул N11143-1003. Страна КИТАЙ. Вес 0.421 кг', '/assets/img/imgproduct.png', 499, true),
       ('Подарочный набор 5 пр (подсв. + 4 свечи)', 'Артикул R8VA-59. Страна КИТАЙ. Вес 0.225 кг',
        '/assets/img/imgproduct.png', 334,
        true),
       ('Свеча декоративная в стекле, высота 15 см', 'Артикул 71GSS543. Страна КИТАЙ. Вес 0.097 кг',
        '/assets/img/imgproduct.png', 367,
        true),
       ('Подарочный набор свечей 6 шт.', 'Артикул R8VA-15. Страна КИТАЙ. Вес 0.235 кг',
        '/assets/img/imgproduct.png', 283, true),
       ('Свеча декоративная "лимон"', 'Артикул N2453-1202. Страна КИТАЙ. Вес 0.091 кг',
        '/assets/img/imgproduct.png', 157, true),
       ('Свеча декоративная "помидор"', 'Артикул N8151-2104. Страна КИТАЙ. Вес 0.127 кг',
        '/assets/img/imgproduct.png', 188, true),
       ('Подарочная сумка для бутылки в асс.', 'Артикул WF109JK19. Страна КИТАЙ. Вес 0.02 кг',
        '/assets/img/imgproduct.png', 145, true),
       ('Подарочная сумка, 12*16 см', 'Артикул WF109JK01. Страна КИТАЙ. Вес 0.052 кг',
        '/assets/img/imgproduct.png', 152, true),
       ('Пакет подар. бумаж., 33*45.7*10.2 см, в ассортименте', 'Артикул 1454-R-AS. Страна КИТАЙ. Вес 0.095 кг',
        '/assets/img/imgproduct.png', 923, true),
       ('Пакет из ламинированной плёнки 25*40см Италия', 'Артикул RP-01207. Страна ИТАЛИЯ. Вес 0.02 кг',
        '/assets/img/imgproduct.png', 22,
        true),
       ('Коробка для подарков', 'Артикул CZ25181/25182/25183. Страна КИТАЙ. Материал Фетр',
        '/assets/img/imgproduct.png', 324, true),
       ('Пакет-сумка 26*23*10см 118BAS (S) Антелла', 'Артикул 0167-118. Страна КОРЕЯ, РЕСПУБЛИКА. Вес 0.046 кг',
        '/assets/img/imgproduct.png', 66, true),
       ('пакет-сумка 26*23*10см 61BAS (S) Антелла', 'Артикул 0167-61. Страна КОРЕЯ, РЕСПУБЛИКА. Вес 0.044 кг',
        '/assets/img/imgproduct.png', 66, true),
       ('пакет-сумка 38*28*12см 13 (М HOR) Антелла', 'Артикул 23408-AS. Страна КИТАЙ. Материал Бумага',
        '/assets/img/imgproduct.png', 99,
        true),
       ('Пакет подарочный бумажный 17,8*22,9*9,8 см', 'Артикул 1560-009. Страна КИТАЙ. Материал Бумага',
        '/assets/img/imgproduct.png', 32,
        true),
       ('Пакет подарочный бумажный ГОЛОГРАФИЯ 10,2*33*8,9см (gold,red,blue) (B) Антелла',
        'Артикул 0525 MIX018. Страна КИТАЙ. Вес 0.032 кг', '/assets/img/imgproduct.png', 35, true),
       ('Шкатулка "париж"', 'Артикул DP-C36-6409. Страна КИТАЙ. Вес 0.16 кг', '/assets/img/imgproduct.png', 558,
        true),
       ('Шкатулка декоративная "Розы"', 'Артикул HY615. Страна КИТАЙ. Вес 0.153 кг', '/assets/img/imgproduct.png',
        923, true),
       ('Магнит декоративный "Баклажан"', 'Артикул 026-84. Страна ИРАН, ИСЛАМСКАЯ РЕСПУБЛИКА. Вес 0.015 кг',
        '/assets/img/imgproduct.png',
        50, false),
       ('Чайный набор КОРДЕЛИЯ 13 пр', 'Артикул	P1419. Страна ОБЪЕДИНЁННЫЕ АРАБСКИЕ ЭМИРАТЫ. Вес 2.986 кг',
        '/assets/img/imgproduct.png', 1382, true),
       ('Чайный набор с пиалами', 'Артикул	28570000. Страна РОССИЯ. Вес 2.222 кг', '/assets/img/imgproduct.png',
        6626, true),
       ('Чайный набор на 6 персон Luminarc Cadix, 220 мл', 'Артикул 38649. Страна ФРАНЦИЯ. Вес 2.06 кг',
        '/assets/img/imgproduct.png',
        1164, true),
       ('Чайный набор на 6 персон Pasabahce Butterflies, объем 215 мл', 'Артикул 97948B/D. Страна РОССИЯ. Вес 2.49 кг',
        '/assets/img/imgproduct.png', 1518, true),
       ('Ковш с ручкой LaSella, объем 0,7 л', 'Артикул 21124-14. Страна ИНДИЯ. Вес 0.13 кг',
        '/assets/img/imgproduct.png', 162, true),
       ('Ковш с ручкой 1,25 л', 'Артикул 94049. Страна АЗЕРБАЙДЖАН. Вес 0.09 кг', '/assets/img/imgproduct.png', 75,
        true),
       ('Ковш 16 см Black-burgundy Metallic Line', 'Артикул 1624N-BH. Страна КИТАЙ. Вес 0.6 кг',
        '/assets/img/imgproduct.png', 1070,
        false),
       ('Ковш с носиком для слива Forest Line 16 см', 'Артикул 1704-BH. Страна КИТАЙ',
        '/assets/img/imgproduct.png', 1054, true),
       ('Кружка 0,25л', 'Артикул PS-500002013. Страна РОССИЯ. Вес 0.124 кг', '/assets/img/imgproduct.png', 135,
        true),
       ('Кружка 1,0л без крышки с рисунком', 'Артикул PS-60064969. Страна РОССИЯ. Вес 0.32 кг',
        '/assets/img/imgproduct.png', 317, true),
       ('Набор керамических ножей, 3 предмета (цвета в ассортименте)', 'Артикул CKP0303. Страна КИТАЙ. Вес 0.217 кг',
        '/assets/img/imgproduct.png', 1490, true),
       ('Овощечистка+нож универсальный в блистере', 'Артикул 266Б. Страна ИТАЛИЯ. Вес 0.07 кг',
        '/assets/img/imgproduct.png', 923, true),
       ('Нож Tramontina 2 шт в упаковке (х300)', 'Артикул SG-22210N203. Страна КИТАЙ',
        '/assets/img/imgproduct.png', 160, true),
       ('Чайник 3,0л со свистком Голландский', 'Артикул PS-60064923. Страна РОССИЯ. Вес 0.92 кг',
        '/assets/img/imgproduct.png', 1794,
        true),
       ('Чайник 2564 Таково2,5л Винтаж', 'Артикул PS-60065998. Страна СЕРБИЯ. Вес 1.31 кг',
        '/assets/img/imgproduct.png', 3220, true),
       ('Чайник 1,1л с крышкой', 'Артикул 1РДЧ-3. Страна РОССИЯ. Вес 0.635 кг', '/assets/img/imgproduct.png', 523,
        true),
       ('26836 Чайный/сер. 13пр (220мл+1,3л чайник)', 'Артикул SG-26836. Страна КИТАЙ. Вес 2.9 кг',
        '/assets/img/imgproduct.png', 2406,
        false),
       ('Чайник Кроха средний', 'Артикул ЛАВ00014231. Страна РОССИЯ', '/assets/img/imgproduct.png', 328, true),
       ('88405 Шампур с д.ручкой 700мм', 'Артикул BR-88405. Страна РОССИЯ. Вес 0.082 кг',
        '/assets/img/imgproduct.png', 207, false),
       ('ГРИЛЬ дорожный складной', 'Артикул G16-004. Страна РОССИЯ. Вес 0.56 кг', '/assets/img/imgproduct.png',
        742, true),
       ('Опахало для раздува углей', 'Артикул 4585. Страна РОССИЯ. Вес 0.005 кг', '/assets/img/imgproduct.png', 15,
        true),
       ('Мыльница закрытая', 'Артикул 23200. Страна РОССИЯ. Вес 0.033 кг', '/assets/img/imgproduct.png', 24, true),
       ('Мыльница', 'Артикул 41700. Страна РОССИЯ. Вес 0.038 кг', '/assets/img/imgproduct.png', 27, true),
       ('Чехол Paterra для перевозки хрупких вещей 270*230 мм', 'Артикул 409-017. Страна КИТАЙ',
        '/assets/img/imgproduct.png', 257, true),
       ('Формочка детская для песка', 'Артикул M6867. Страна РОССИЯ', '/assets/img/imgproduct.png', 9, true),
       ('Матрас для плавания "Льдинка" 188*71см (подарочная упаковка)', 'Артикул 7510203. Страна КИТАЙ. Вес 1.29 кг',
        '/assets/img/imgproduct.png', 390, false),
       ('Ледянка МИКС (рзноцветный)', 'Артикул M2600MIX. Страна РОССИЯ', '/assets/img/imgproduct.png', 77, true),
       ('Щетка для мытья спины York (цвета в ассортименте)', 'Артикул YK-42010. Страна БЕЛАРУСЬ',
        '/assets/img/imgproduct.png', 131,
        true),
       ('Щетка для рук пемза', 'Артикул YK-40060. Страна ПОЛЬША', '/assets/img/imgproduct.png', 85, true),
       ('Щетка для рук двусторонняя', 'Артикул YK-40070. Страна ПОЛЬША', '/assets/img/imgproduct.png', 95, true),
       ('Часы для предбанника', 'Артикул Б-1131. Материал Пластик. Вес 0.332 кг', '/assets/img/imgproduct.png',
        1722, true),
       ('Кружка точёная 0,5 л. "Бочонок"', 'Артикул 32240. Страна РОССИЯ', '/assets/img/imgproduct.png', 412,
        true);
