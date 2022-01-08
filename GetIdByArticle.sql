USE [7gostore_db]
GO
/****** Object:  StoredProcedure [dbo].[GetIdByArticle]    Script Date: 12.12.2021 15:01:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[GetIdByArticle] 	
	@Price nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    
set	@Price = '{
"result": [
{
"id": "1111118",
"article": "010521",
"name": "Arlight Светодиодная лента RT 2-5000 12V Yellow (3528, 300 LED, LUX) (4.8 Вт/м, IP20)",
"brand": "Arlight",
"brandId": "461",
"categoryid": "EC002706"
},
{
"id": "2006353",
"article": "030015",
"name": "Arlight Блок питания ARPV-LG24150-PFC-A (24V, 6.25A, 150W) (IP67 Металл, 5 лет)",
"brand": "Arlight",
"brandId": "461",
"categoryid": "EC002710"
},
{
"id": "2006361",
"article": "030021",
"name": "Arlight Блок питания ARPV-LG48250-PFC-A (48V, 5.21A, 250W) (IP67 Металл, 5 лет)",
"brand": "Arlight",
"brandId": "461",
"categoryid": "EC002710"
},
{
"id": "2359079",
"article": "034211",
"name": "Arlight Светильник MAG-DOTS-25-L1000-30W Warm3000 (BK, 30 deg, 24V) (IP20 Металл, 3 года)",
"brand": "Arlight",
"brandId": "461",
"categoryid": "EC000986"
},
{
"id": "2359082",
"article": "034221",
"name": "Arlight Светильник MAG-DOTS-FOLD-25-S600-18W Warm3000 (BK, 30 deg, 24V) (IP20 Металл, 3 года)",
"brand": "Arlight",
"brandId": "461",
"categoryid": "EC000986"
},
{
"id": "2426235",
"article": "032751",
"name": "Arlight INTELLIGENT ARLIGHT Блок питания шины DALI-302-REP-DIN (230V, 250mA) (INTELLIGENT IP20 Пластик, 3 года)",
"brand": "Arlight",
"brandId": "461",
"categoryid": "EC000533"
},
{
"id": "2050262",
"article": "031202",
"name": "Arlight Светодиодная гирлянда ARD-STRING-CLASSIC-10000-WHITE-100LED-MILK-STD White (230V, 7W) (Ardecoled, IP65)",
"brand": "Arlight",
"brandId": "461",
"categoryid": "EC002761"
},
{
"id": "2050360",
"article": "031211",
"name": "Arlight Контроллер ARD-CLASSIC-SYNC-RGB-3000LED White (230V, 250W, RF ПДУ) (Ardecoled, Закрытый)",
"brand": "Arlight",
"brandId": "461",
"categoryid": "EC002707"
},
{
"id": "1876459",
"article": "030008",
"name": "Arlight Светодиодная лента TWIST-5000-2835-120-24V Day4000 (10mm, 10W/m, IP20) (-)",
"brand": "Arlight",
"brandId": "461",
"categoryid": "EC002706"
},
{
"id": "1391871",
"article": "022902",
"name": "Arlight Светильник SP-RONDO-120B-12W Warm White (IP40 Металл, 3 года)",
"brand": "Arlight",
"brandId": "461",
"categoryid": "EC002892"
},
{
"id": "2321596",
"article": "033606",
"name": "Arlight Светодиодная лента RT-A168-10mm 24V Dim-To-Warm (14.4 W/m, IP20, 2835, 5m) (Открытый)",
"brand": "Arlight",
"brandId": "461",
"categoryid": "EC002706"
},
{
"id": "1509307",
"article": "024212",
"name": "Arlight Заглушка STEP-FRONT правая (Пластик)",
"brand": "Arlight",
"brandId": "461",
"categoryid": "EC002707"
},
{
"id": "1509358",
"article": "023720",
"name": "Arlight Профиль SL-LINE-2011M-2000 ANOD (Алюминий)",
"brand": "Arlight",
"brandId": "461",
"categoryid": "EC002707"
},
{
"id": "2338500",
"article": "034213",
"name": "Arlight Светильник MAG-FLAT-25-L800-24W Warm3000 (BK, 100 deg, 24V) (IP20 Металл, 3 года)",
"brand": "Arlight",
"brandId": "461",
"categoryid": "EC000986"
},
{
"id": "2338520",
"article": "034225",
"name": "Arlight Трек встраиваемый MAG-TRACK-2538-F-1000 (BK) (IP20 Металл, 3 года)",
"brand": "Arlight",
"brandId": "461",
"categoryid": "EC000101"
},
{
"id": "2300400",
"article": "70215",
"name": "Paulmann Гибкий соединитель LED Flex-Connector 10cm Weiß Kunststoff",
"brand": "Paulmann",
"brandId": "453",
"categoryid": "EC999999"
},
{
"id": "2302702",
"article": "93022",
"name": "Paulmann WD FR Avia IP44 LED _W 300mm TunW Chr",
"brand": "Paulmann",
"brandId": "453",
"categoryid": "EC999999"
},
{
"id": "2302704",
"article": "93024",
"name": "Paulmann WD Casca Deckenl WhiteSwitch LED 1x_W Ws",
"brand": "Paulmann",
"brandId": "453",
"categoryid": "EC999999"
},
{
"id": "2302707",
"article": "93032",
"name": "Paulmann EB Panel AREO VariFit 3000K 175mm Ws Kst",
"brand": "Paulmann",
"brandId": "453",
"categoryid": "EC999999"
},
{
"id": "2302709",
"article": "93034",
"name": "Paulmann EB Panel AREO VariFit 3000K 175mm Chr Ks",
"brand": "Paulmann",
"brandId": "453",
"categoryid": "EC999999"
},
{
"id": "2302714",
"article": "93039",
"name": "Paulmann EB Panel AREO VariFit 3000K 118x118mm Ws",
"brand": "Paulmann",
"brandId": "453",
"categoryid": "EC999999"
},
{
"id": "662771",
"article": "63234",
"name": "КВТ Пояс ППЛ-32",
"brand": "КВТ",
"brandId": "134",
"categoryid": "EC012038"
},
{
"id": "1390269",
"article": "73229",
"name": "КВТ Ключ диэлектр. торцевой Т-образный \"Профи\" 10 мм",
"brand": "КВТ",
"brandId": "134",
"categoryid": "EC000174"
},
{
"id": "2272505",
"article": "08128",
"name": "Kink Light 08128 Светильник Алинда белый w28,5*13 h17 Led 2*3W (4000K) (лампы в комплекте)",
"brand": "Kink Light",
"brandId": "3190",
"categoryid": "EC002892"
},
{
"id": "995199",
"article": "7TCA300100R0002",
"name": "ABB Стяжки кабельные 300х3.6мм ДхШ нейлон натуральный (100шт) SKT300-180-100",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000046"
},
{
"id": "995182",
"article": "7TCA300020R0001",
"name": "ABB Стяжки кабельные 140х2.5мм ДхШ нат. (100шт)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000046"
},
{
"id": "995184",
"article": "7TCA300020R0003",
"name": "ABB Стяжки каб. 200х2.5мм ДхШ нат. (100шт)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000046"
},
{
"id": "995190",
"article": "7TCA300060R0001",
"name": "ABB Стяжки кабельные 140х2.5мм ДхШ черн. (100шт)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000046"
},
{
"id": "995192",
"article": "7TCA300060R0003",
"name": "ABB Стяжки каб. 200х2.5мм ДхШ черн. (100шт)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000046"
},
{
"id": "995198",
"article": "7TCA300100R0001",
"name": "ABB Стяжки кабельные 200х3.6мм ДхШ нат. (100шт)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000046"
},
{
"id": "995206",
"article": "7TCA300140R0001",
"name": "ABB Стяжки каб. 200х3.6мм ДхШ черн. (100шт)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000046"
},
{
"id": "995207",
"article": "7TCA300140R0002",
"name": "ABB Стяжки каб. 300х3.6мм ДхШ черн. (100шт)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000046"
},
{
"id": "995214",
"article": "7TCA300180R0001",
"name": "ABB Стяжки каб. 215х4.8мм ДхШ нат. (100шт)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000046"
},
{
"id": "995217",
"article": "7TCA300180R0004",
"name": "ABB Стяжки кабельные 370х4.8мм ДхШ нат. (100шт)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000046"
},
{
"id": "995224",
"article": "7TCA300220R0001",
"name": "ABB Стяжки каб. 215х4.8мм ДхШ черн.(100шт)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000046"
},
{
"id": "995227",
"article": "7TCA300220R0004",
"name": "ABB Стяжки каб. 370х4.8мм ДхШ черн. (100шт)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000046"
},
{
"id": "508420",
"article": "2TKA130031G1",
"name": "ABB Коробка монтажная с 2-мя вводами D20",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002601"
},
{
"id": "508336",
"article": "2TKA140002G1",
"name": "ABB Коробка разветвительная квадратная 104х104 мм, IP 65, белая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002600"
},
{
"id": "508347",
"article": "2TKA140012G1",
"name": "ABB Коробка разветвительная квадратная 86х86 мм, IP 65, белая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002600"
},
{
"id": "508349",
"article": "2TKA140013G1",
"name": "ABB Коробка распределительная, наружного монтажа, IP55, черная",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002600"
},
{
"id": "508418",
"article": "2TKA130029G1",
"name": "ABB Коробка монтажная, универсальная",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002601"
},
{
"id": "62822",
"article": "1SDA066804R1",
"name": "ABB Выключатель автоматический XT1B 160 TMD 50-500 3p F F",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000228"
},
{
"id": "61096",
"article": "1SDA068126R1",
"name": "ABB Выключатель автоматический XT4N 250 Ekip LS/I In=250A 3p F F",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000228"
},
{
"id": "58122",
"article": "1SDA068059R1",
"name": "ABB Выключатель автоматический XT3N 250 TMD 250-2500 3p F F",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000228"
},
{
"id": "58196",
"article": "1SDA067058R1",
"name": "ABB Выключатель автоматический XT2N 160 Ekip LS/I In=160A 3p F F",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000228"
},
{
"id": "357662",
"article": "2CSF204001R1400",
"name": "ABB F204AC УЗО 4Р 40А 30mA (AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "358028",
"article": "1SFA619200R3016",
"name": "ABB C2SS1-30B-10 Переключатель черный 2-х поз 1НО",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001029"
},
{
"id": "358033",
"article": "2CSF202001R2400",
"name": "ABB F202AC УЗО 2Р 40А 100mA (AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "358493",
"article": "1SBL407001R1300",
"name": "ABB AF96-30-00-13 Контактор 100-250В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000066"
},
{
"id": "359994",
"article": "1SFA619100R3012",
"name": "ABB CP1-30G-10 Кнопка зеленая без фикс. 1НО",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001028"
},
{
"id": "360888",
"article": "2CSF204001R3250",
"name": "ABB F204AC УЗО 4Р 25А 300mA (AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "361421",
"article": "2CSF202001R2630",
"name": "ABB F202AC УЗО 2Р 63А 100mA (AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "361547",
"article": "2CSF204001R1630",
"name": "ABB F204AC УЗО 4Р 63А 30mA (AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "362001",
"article": "1SFA619201R3016",
"name": "ABB C2SS2-30B-10 Переключатель черный 2-х поз 1НО ( 90 градусов) с фикс.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001029"
},
{
"id": "362706",
"article": "2CSR254101R1164",
"name": "ABB Выключатель автоматический дифференциального тока 6мод. DS204 A-C16/0,03",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002281"
},
{
"id": "363001",
"article": "2CSF202001R2250",
"name": "ABB F202AC УЗО 2Р 25А 100mA (AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "363287",
"article": "2CSF204001R2630",
"name": "ABB F204AC УЗО 4Р 63А 100mA (AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "363298",
"article": "2CSF202001R1250",
"name": "ABB F202AC УЗО 2P 25A 30mA (AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "363713",
"article": "1SFA619100R3011",
"name": "ABB CP1-30R-10 Кнопка красная без фикс. 1НО",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001028"
},
{
"id": "364331",
"article": "2CDL200000R2515",
"name": "ABB Переходник Ast 25/15Q штыр.бок.6-25мм2",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000001"
},
{
"id": "364554",
"article": "2CDL100011R0011",
"name": "ABB Заглушка для распр.шины PSH-END1.1",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002270"
},
{
"id": "364809",
"article": "1SCA022860R5850",
"name": "ABB OT1000E03 Выключатель-разъединитель 3Р 1000A,без ручки и переходника",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "364890",
"article": "2CSF204001R3630",
"name": "ABB F204AC УЗО 4Р 63А 300mA (AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "366059",
"article": "2CSF204001R2400",
"name": "ABB F204AC УЗО 4Р 40А 100mA (AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "366456",
"article": "2CSF204001R3900",
"name": "ABB F204AC УЗО 4P 100A 300mA (AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "366696",
"article": "2CDL110001R1012",
"name": "ABB PSH1/12 Шина 1Ф. к.h 12мод.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000215"
},
{
"id": "366920",
"article": "1SFA619200R3076",
"name": "ABB C2SS1-30B-11 Переключатель черный 2-х поз 1НО+1НЗ ( 45 градусов) с фикс.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001029"
},
{
"id": "367179",
"article": "1SBL367001R1300",
"name": "ABB AF52-30-00-13Контактор 100-250В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000066"
},
{
"id": "367438",
"article": "2CSF202001R3630",
"name": "ABB F202AC УЗО 2Р 63A 300mA (AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "367616",
"article": "2CSF204001R2250",
"name": "ABB F204AC УЗО 4Р 25А 100mA (AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "369614",
"article": "2CTB803973R1100",
"name": "ABB УЗИП OVR T2 3N 40-275 P QS",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000941"
},
{
"id": "369693",
"article": "2CSF202001R1630",
"name": "ABB F202AC УЗО 2Р 63А 30mA (AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "370400",
"article": "2CSF202001R3250",
"name": "ABB F202AC УЗО 2Р 25А 300mA (AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "371278",
"article": "2CDL200010R2530",
"name": "ABB Ast 25/30 QS Штыр.бок.дл. 6-25мм2",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000001"
},
{
"id": "371319",
"article": "2CDD282101R0040",
"name": "ABB SD202 Рубильник 2P 40A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "371502",
"article": "1SBL347001R1300",
"name": "ABB AF40-30-00-13 Контактор 100-250В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000066"
},
{
"id": "371654",
"article": "1SFA619201R3076",
"name": "ABB C2SS2-30B-11 Переключатель черный 2-х поз 1НО+1НЗ (90 градусов) с фикс.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001029"
},
{
"id": "372218",
"article": "2CSF204001R3400",
"name": "ABB F204AC УЗО 4Р 40А 300mA (AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "373102",
"article": "1SFA619100R3071",
"name": "ABB CP1-30R-11 Кнопка красная без фикс. 1НО+1HЗ",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001028"
},
{
"id": "373803",
"article": "1SFA619200R3026",
"name": "ABB C2SS1-30B-20 Переключатель черный 2-х поз 2НО ( 45 градусов) с фикс.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001029"
},
{
"id": "374242",
"article": "1SFA619100R3016",
"name": "ABB CP1-30B-10 Кнопка черная без фикс. 1НО",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001028"
},
{
"id": "374710",
"article": "2CSR254001R1404",
"name": "ABB Выключатель автоматический дифференциального тока 6мод. DS204 AC-C40/0,03",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002281"
},
{
"id": "374802",
"article": "1SFA619100R3076",
"name": "ABB CP1-30B-11 Кнопка черная без фикс. 1НО+1HЗ",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001028"
},
{
"id": "374846",
"article": "2CSF204001R1250",
"name": "ABB F204AC УЗО 4Р 25А 30mA (AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "376642",
"article": "2CDL200011R2515",
"name": "ABB Переходник штыр.прям.6-25мм2 Ast 25/15S",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000001"
},
{
"id": "377184",
"article": "2CSF202001R3400",
"name": "ABB F202AC УЗО 2P 40A 300mA (AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "377775",
"article": "1SFA619100R3072",
"name": "ABB CP1-30G-11 Кнопка зеленая без фикс. 1НО+1HЗ",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001028"
},
{
"id": "378122",
"article": "1SBL397001R1300",
"name": "ABB AF80-30-00-13 Контактор 100-250В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000066"
},
{
"id": "379035",
"article": "1SBL387001R1300",
"name": "ABB AF65-30-00-13 Контактор 100-250В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000066"
},
{
"id": "379127",
"article": "1SFA619100R3026",
"name": "ABB CP1-30B-20 Кнопка черная без фикс. 2НО",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001028"
},
{
"id": "379534",
"article": "1SFA619100R3041",
"name": "ABB CP1-30R-01 Кнопка красная без фикс. 1НЗ",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001028"
},
{
"id": "380559",
"article": "2CSR254001R1164",
"name": "ABB Выключатель автоматический дифференциального тока 6мод. DS204 AC-C16/0,03",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002281"
},
{
"id": "1461906",
"article": "2CLA215570N1801",
"name": "ABB Zenit Антрацит Механизм HDMI разъёма, тип А, с HDMI разъёмом мама на тыльной стороне, 1-модульный",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "1461909",
"article": "2CLA215570N1301",
"name": "ABB Zenit Серебристый Механизм HDMI разъёма, тип А, с HDMI разъёмом мама на тыльной стороне, 1-модульный",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "1461883",
"article": "2CMA105937R1000",
"name": "ABB Счетчик 1-фазный акт. энергии,многотарифный, кл. точности 1,прямого вкл. 5(80)А, Modbus, тип E31 412-200",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001506"
},
{
"id": "1402442",
"article": "2CDL620011R1012",
"name": "ABB Basic M Шина 2P, 12 модулей 10мм2 BML11212",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000215"
},
{
"id": "869625",
"article": "1SLM004101A1102",
"name": "ABB Mistral41 Бокс в нишу 8М непрозрачная дверь (c клемм)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1115262",
"article": "2CKA006512A0335",
"name": "ABB BJE Мех Светорегулятор поворотный нажимной светодиодный",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000025"
},
{
"id": "27297",
"article": "1SBN030100R1000",
"name": "ABB VM-5-1 Блокировка реверсивная механическая для контакторов A9..A40",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001044"
},
{
"id": "734467",
"article": "2CLA218500N1101",
"name": "ABB NIE Zenit Бел Розетка USB 1 мод",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002949"
},
{
"id": "36661",
"article": "1SBN030110R1000",
"name": "ABB VE 5-1 Реверсивная блокировка для контакторов А9 - А40",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001044"
},
{
"id": "1288852",
"article": "2CLA857500A1301",
"name": "ABB SKY Серебристый алюминий Рамка 5-постовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "358992",
"article": "2CTB803876R1000",
"name": "ABB УЗИП OVR T2 40-275 C QS картридж",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000941"
},
{
"id": "1559134",
"article": "2CLA850130A1201",
"name": "ABB SKY Античная латунь Клавиша для 1‐клавишных выключателей/переключателей/кнопок с линзой подсветки",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1559140",
"article": "2CLA850700A1201",
"name": "ABB SKY Античная латунь Накладка для кабельного вывода арт.8107 и выключателя со шнурком арт.8148",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1559141",
"article": "2CLA851100A1201",
"name": "ABB SKY Античная латунь Клавиша для 2‐клавишных выключателей/переключателей/кнопок",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1559156",
"article": "2CLA855000A1201",
"name": "ABB SKY Античная латунь Накладка для TV‐R розетки",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "1559179",
"article": "2CLA857400A1201",
"name": "ABB SKY Античная латунь Рамка 4‐ая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1559192",
"article": "2CLA858800A1201",
"name": "ABB SKY Античная латунь Накладка для розетки Schuko",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1559193",
"article": "2CLA858810A1201",
"name": "ABB SKY Античная латунь Накладка для розетки Schuko с крышкой",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1545926",
"article": "2CPX031389R9999",
"name": "ABB Шкаф мультимедийный с дверью с радиопрозрачной вставкой (5 рядов) UK660MW",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1402445",
"article": "2CDL630011R1057",
"name": "ABB Basic M Шина 3P, 57мод 10мм2 BML11357",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000215"
},
{
"id": "1545928",
"article": "2CPX031391R9999",
"name": "ABB Шкаф мультимедийный с дверью с вентиляционными отверстиями и DIN-рейкой  (3 ряда) UK630MV",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1289195",
"article": "2CLA854090A1101",
"name": "ABB SKY Альпийский белый Накладка для терморегулятора 8140.9",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1289196",
"article": "2CLA854090A1301",
"name": "ABB SKY Серебристый алюминий Накладка для терморегулятора 8140.9",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1289198",
"article": "2CLA854090A1501",
"name": "ABB SKY Чёрный бархат Накладка для терморегулятора 8140.9 ",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1289199",
"article": "2CLA857500A1101",
"name": "ABB SKY Альпийский белый Рамка 5-постовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1289316",
"article": "2CMA101142R1000",
"name": "ABB Easy&Safe Розетка кабельная 232EC6W, 32А, 2P+E, IP67, 6ч",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001320"
},
{
"id": "1289384",
"article": "2CMA101253R1000",
"name": "ABB Easy&Safe Розетка для монтажа на поверхность 432ERS6W, 32A, 3P+N+E, IP67, 6ч",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001321"
},
{
"id": "1289413",
"article": "2CMA101308R1000",
"name": "ABB Easy&Safe Розетка с прямым фланцем 232ERU6W,32A,2P+E,IP67,6ч",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001317"
},
{
"id": "1289431",
"article": "2CMA101947R1000",
"name": "ABB Easy&Safe Вилка кабельная 216EP6,16А,2P+E,IP44,6ч",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000140"
},
{
"id": "1289439",
"article": "2CMA101956R1000",
"name": "ABB Easy&Safe Вилка кабельная 316EP6,16А,3P+E,IP44,6ч",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000140"
},
{
"id": "1289450",
"article": "2CMA101967R1000",
"name": "ABB Easy&Safe Вилка кабельная 416EP6,16А,3P+N+E,IP44,6ч",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000140"
},
{
"id": "1289457",
"article": "2CMA101975R1000",
"name": "ABB Easy&Safe Вилка кабельная 232EP6,32А,2P+E,IP44,6ч",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000140"
},
{
"id": "1289465",
"article": "2CMA101984R1000",
"name": "ABB Easy&Safe Вилка кабельная 332EP6,32А,3P+E,IP44,6ч",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000140"
},
{
"id": "1289476",
"article": "2CMA101995R1000",
"name": "ABB Easy&Safe Вилка кабельная 432EP6,32А,3P+N+E,IP44,6ч",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000140"
},
{
"id": "1289483",
"article": "2CMA102003R1000",
"name": "ABB Easy&Safe Розетка кабельная 216EC6,16А,2P+E,IP44,6ч",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001320"
},
{
"id": "1289491",
"article": "2CMA102012R1000",
"name": "ABB Easy&Safe Розетка кабельная 316EC6,16А,3P+E,IP44,6ч",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001320"
},
{
"id": "1289502",
"article": "2CMA102023R1000",
"name": "ABB Easy&Safe Розетка кабельная 416EC6,16А,3P+N+E,IP44,6ч",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001320"
},
{
"id": "1289509",
"article": "2CMA102031R1000",
"name": "ABB Easy&Safe Розетка кабельная 232EC6,32А,2P+E,IP44,6ч",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001320"
},
{
"id": "1289517",
"article": "2CMA102040R1000",
"name": "ABB Easy&Safe Розетка кабельная 332EC6,32А,3P+E,IP44,6ч",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001320"
},
{
"id": "1289872",
"article": "2CTB803973R1800",
"name": "ABB УЗИП OVR H T2-T3 3N 20-275 P QS",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000941"
},
{
"id": "1289873",
"article": "2CTB815710R5700",
"name": "ABB УЗИП OVR H T1-T2 12.5-275s P QS",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001457"
},
{
"id": "1289874",
"article": "2CTB815710R5800",
"name": "ABB УЗИП OVR H T1-T2 3N 12.5-275s P QS",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001457"
},
{
"id": "1317318",
"article": "2CTB803871R2600",
"name": "ABB УЗИП OVR H T2-T3 20-275 P QS",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000941"
},
{
"id": "1320718",
"article": "2CLA814090A1001",
"name": "ABB SKY Механизм терморегулятора для тёплых полов с выносным датчиком температуры, 10А/250В",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC010927"
},
{
"id": "1545935",
"article": "2CPX031398R9999",
"name": "АВВ Шкаф комбинированный  с дверью с вентиляционными отверстиями (5 рядов) 24М UK662CV",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1559177",
"article": "2CLA857200A1201",
"name": "ABB SKY Античная латунь Рамка 2-ая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1559195",
"article": "2CLA858890A1201",
"name": "ABB SKY Античная латунь Накладка для розетки Schuko с плоской поверхностью",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1559178",
"article": "2CLA857300A1201",
"name": "ABB SKY Античная латунь Рамка 3-ая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1545936",
"article": "2CPX031399R9999",
"name": "АВВ Шкаф комбинированный  с дверью с вентиляционными отверстиями (5 рядов) 36М UK663CV",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1545945",
"article": "2CPX031408R9999",
"name": "ABB Hабор для соединения для UK600",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002625"
},
{
"id": "1971514",
"article": "2TMA070130A0017",
"name": "ABB Коробка монтажная для скрытого монтажа абонентского устройства, видео 4,3 без трубки  ",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000354"
},
{
"id": "2008310",
"article": "2CPX052536R9999",
"name": "ABB Шкаф 168 М навесной IP44, 1100x550x160  с  расстоянием между DIN-рейками 125 мм и винтовыми клеммами N/PE CA27VZRU",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1545924",
"article": "2CPX031387R9999",
"name": "ABB Шкаф мультимедийный с дверью с радиопрозрачной вставкой (3 ряда) UK636MW",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1546005",
"article": "2CPX063166R9999",
"name": "ABB Клеммник PE 26x4+8x25 мм2 ZK268G",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000446"
},
{
"id": "663408",
"article": "1SLM004100A1931",
"name": "ABB Mistral41 Замок с 2 ключами в нишу",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000327"
},
{
"id": "1507424",
"article": "1SAE232111R0640",
"name": "ABB Контактор EN25-40N-06 модульный (25А АС-1, 4НО), катушка 230В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001653"
},
{
"id": "1507425",
"article": "1SAE342111R0640",
"name": "ABB Контактор EN40-40N-06 модульный (40А АС-1, 4НО), катушка 230В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001653"
},
{
"id": "1507426",
"article": "1SBE122111R0620",
"name": "ABB Контактор EN20-20N-06 модульный (20А АС-1, 2НО), катушка 230В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001653"
},
{
"id": "2008302",
"article": "2CPX052524R9999",
"name": "ABB Шкаф 36 М навесной IP44, 500x300x160 с  расстоянием между DIN-рейками 125 мм и винтовыми клеммами N/PE CA13VZRU",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "2008224",
"article": "2CPX052412R9999",
"name": "ABB Замок с двумя ключами для шкафов ComfortLine CZT2",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000327"
},
{
"id": "2008246",
"article": "2CPX052436R9999",
"name": "ABB CZF2 Мембранный фланец 34 x 12 мм, 9 x 15.5 мм, 6 x 19 мм, 2 x 40.5 мм,  2 x витая пара",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000211"
},
{
"id": "2008274",
"article": "2CPX052456R9999",
"name": "ABB Держатель клемм ZK19, длина 214 мм, 13 габаритных единиц",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002625"
},
{
"id": "2008303",
"article": "2CPX052526R9999",
"name": "ABB Шкаф 48 М навесной IP44, 650x300x160 с  расстоянием между DIN-рейками 125 мм и винтовыми клеммами N/PE CA14VZRU",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "2008304",
"article": "2CPX052529R9999",
"name": "ABB Шкаф 60 М навесной IP44, 800x300x160 с  расстоянием между DIN-рейками 125 мм и винтовыми клеммами N/PE CA15VZRU",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "2008305",
"article": "2CPX052533R9999",
"name": "ABB Шкаф 72 М навесной IP44, 950x300x160  с  расстоянием между DIN-рейками 125 мм и винтовыми клеммами N/PE CA16VZRU",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "2008306",
"article": "2CPX052525R9999",
"name": "ABB Шкаф 72 М навесной IP44, 500x550x160  с  расстоянием между DIN-рейками 125 мм и винтовыми клеммами N/PE CA23VZRU",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "2008307",
"article": "2CPX052527R9999",
"name": "ABB Шкаф 96 М навесной IP44, 650x550x160  с  расстоянием между DIN-рейками 125 мм и винтовыми клеммами N/PE CA24VZRU",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "2008308",
"article": "2CPX052530R9999",
"name": "ABB Шкаф 120 М навесной IP44, 800x550x160  с  расстоянием между DIN-рейками 125 мм и винтовыми клеммами N/PE CA25VZRU",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "2008309",
"article": "2CPX052534R9999",
"name": "ABB Шкаф 144 М навесной IP44, 950x550x160  с  расстоянием между DIN-рейками 125 мм и винтовыми клеммами N/PE CA26VZRU",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "2008312",
"article": "2CPX052528R9999",
"name": "ABB Шкаф 144 М навесной IP44, 650x800x160  с  расстоянием между DIN-рейками 125 мм и винтовыми клеммами N/PE CA34VZRU",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "2008313",
"article": "2CPX052531R9999",
"name": "ABB Шкаф 180 М навесной IP44, 800x800x160  с  расстоянием между DIN-рейками 125 мм и винтовыми клеммами N/PE CA35VZRU",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "2008376",
"article": "2CPX052050R9999",
"name": "ABB Шкаф навесной IP44 500x300x215 пустой с дверью B13",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000058"
},
{
"id": "2008380",
"article": "2CPX052054R9999",
"name": "ABB Шкаф навесной IP44 650x550x215 пустой с дверью B24",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000058"
},
{
"id": "2008384",
"article": "2CPX052058R9999",
"name": "ABB Шкаф навесной IP44 800x300x215 пустой с дверью B15",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000058"
},
{
"id": "2008385",
"article": "2CPX052059R9999",
"name": "ABB Шкаф навесной IP44 800x550x215 пустой с дверью B25",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000058"
},
{
"id": "2008386",
"article": "2CPX052060R9999",
"name": "ABB Шкаф навесной IP44 800x800x215 пустой с дверью B35",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000058"
},
{
"id": "2008390",
"article": "2CPX052064R9999",
"name": "ABB Шкаф навесной IP44 950x550x215 пустой с дверью B26",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000058"
},
{
"id": "2008391",
"article": "2CPX052065R9999",
"name": "ABB Шкаф навесной IP44 950x800x215 пустой с дверью B36",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000058"
},
{
"id": "2008395",
"article": "2CPX052069R9999",
"name": "ABB Шкаф навесной IP44 1100x550x215 пустой с дверью B27",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000058"
},
{
"id": "2008396",
"article": "2CPX052070R9999",
"name": "ABB Шкаф навесной IP44 1100x800x215 пустой с дверью B37",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000058"
},
{
"id": "2008400",
"article": "2CPX052074R9999",
"name": "ABB Шкаф навесной IP44 1250x550x215 пустой с дверью B28",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000058"
},
{
"id": "2008405",
"article": "2CPX052079R9999",
"name": "ABB Шкаф навесной IP44 1400x550x215 пустой с дверью B29",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000058"
},
{
"id": "1512314",
"article": "1SAE231111R0104",
"name": "ABB Контактор ESB25-04N-01 модульный (25А АС-1, 4НЗ), катушка 24В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001653"
},
{
"id": "1512317",
"article": "1SAE231111R0122",
"name": "ABB Контактор ESB25-22N-01 модульный (25А АС-1, 2НО+2НЗ), катушка 24В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001653"
},
{
"id": "1512319",
"article": "1SAE231111R0140",
"name": "ABB Контактор ESB25-40N-01 модульный (25А АС-1, 4НО), катушка 24В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001653"
},
{
"id": "1512335",
"article": "1SAE231111R0604",
"name": "ABB Контактор ESB25-04N-06 модульный (25А АС-1, 4НЗ), катушка 230В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001653"
},
{
"id": "1512337",
"article": "1SAE231111R0620",
"name": "ABB Контактор ESB25-20N-06 модульный (25А АС-1, 2НО), катушка 230В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001653"
},
{
"id": "1512338",
"article": "1SAE231111R0622",
"name": "ABB Контактор ESB25-22N-06 модульный (25А АС-1, 2НО+2НЗ), катушка 230В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001653"
},
{
"id": "1512340",
"article": "1SAE231111R0631",
"name": "ABB Контактор ESB25-31N-06 модульный (25А АС-1, 3НО+1НЗ), катушка 230В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001653"
},
{
"id": "1512341",
"article": "1SAE231111R0640",
"name": "ABB Контактор ESB25-40N-06 модульный (25А АС-1, 4НО), катушка 230В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001653"
},
{
"id": "1512360",
"article": "1SAE341111R0140",
"name": "ABB Контактор ESB40-40N-01 модульный (40А АС-1, 4НО), катушка 24В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001653"
},
{
"id": "1512364",
"article": "1SAE341111R0620",
"name": "ABB Контактор ESB40-20N-06 модульный (40А АС-1, 2НО), катушка 230В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001653"
},
{
"id": "1512365",
"article": "1SAE341111R0622",
"name": "ABB Контактор ESB40-22N-06 модульный (40А АС-1, 2НО+2НЗ), катушка 230В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001653"
},
{
"id": "1512368",
"article": "1SAE341111R0640",
"name": "ABB Контактор ESB40-40N-06 модульный (40А АС-1, 4НО), катушка 230В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001653"
},
{
"id": "1512382",
"article": "1SAE351111R0140",
"name": "ABB Контактор ESB63-40N-01 модульный (63А АС-1, 4НО), катушка 24В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001653"
},
{
"id": "1512388",
"article": "1SAE351111R0620",
"name": "ABB Контактор ESB63-20N-06 модульный (63А АС-1, 2НО), катушка 230В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001653"
},
{
"id": "1512392",
"article": "1SAE351111R0640",
"name": "ABB Контактор ESB63-40N-06 модульный (63А АС-1, 4НО), катушка 230В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001653"
},
{
"id": "1512402",
"article": "1SAE901901R1011",
"name": "ABB Контакт дополнительный EH04-11N",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000041"
},
{
"id": "1512403",
"article": "1SAE901901R1020",
"name": "ABB Контакт дополнительный EH04-20N",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000041"
},
{
"id": "1512418",
"article": "1SBE111111R0620",
"name": "ABB Контактор ESB16-20N-06 модульный (16А АС-1, 2НО), катушка 230В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001653"
},
{
"id": "1512426",
"article": "1SBE121111R0111",
"name": "ABB Контактор ESB20-11N-01 модульный (20А АС-1, 1НО+1НЗ), катушка 24В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001653"
},
{
"id": "1512427",
"article": "1SBE121111R0120",
"name": "ABB Контактор ESB20-20N-01 модульный (20А АС-1, 2НО), катушка 24В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001653"
},
{
"id": "1512437",
"article": "1SBE121111R0602",
"name": "ABB Контактор ESB20-02N-06 модульный (20А АС-1, 2НЗ), катушка 230В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001653"
},
{
"id": "1512438",
"article": "1SBE121111R0611",
"name": "ABB Контактор ESB20-11N-06 модульный (20А АС-1, 1НО+1НЗ), катушка 230В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001653"
},
{
"id": "1512439",
"article": "1SBE121111R0620",
"name": "ABB Контактор ESB20-20N-06 модульный (20А АС-1, 2НО), катушка 230В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001653"
},
{
"id": "1512445",
"article": "1SBE121111R1420",
"name": "ABB Контактор ESB20-20N-14 модульный (20А АС-1, 2НО), катушка 12В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001653"
},
{
"id": "663495",
"article": "2CDS244001R0634",
"name": "ABB Выключатель автоматический 4-полюсной SH204L C63",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "502887",
"article": "1SL1929A00",
"name": "ABB Mistral65 Заглушка на 12 модулей",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000771"
},
{
"id": "663460",
"article": "1SPE007715F9706",
"name": "ABB Клеммник самозажимной N17x4+5x25мм ZK175B",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000446"
},
{
"id": "663463",
"article": "1SPE007715F9713",
"name": "ABB Клеммник самозажимной PE 8x4+2x25мм ZK82G",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000275"
},
{
"id": "869617",
"article": "1SLM004101A1103",
"name": "ABB Mistral41 Бокс в нишу 12М непрозрачная дверь (c клемм)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "869621",
"article": "1SLM004101A1107",
"name": "ABB Mistral41 Бокс в нишу 36М непрозрачная дверь 3 ряда (c клемм)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "972576",
"article": "2CLA215070N1801",
"name": "ABB NIE Zenit Антрацит Мех ТВ розетки, простой, 1-модульный",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "972577",
"article": "2CLA225070N1801",
"name": "ABB NIE Zenit Антрацит Мех ТВ розетки, простой, 2-модульный",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "972578",
"article": "2CLA215070N1101",
"name": "ABB NIE Zenit Бел Мех ТВ розетки, простой, 1-модульный",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "972581",
"article": "2CLA225070N1301",
"name": "ABB NIE Zenit Серебро Мех ТВ розетки, простой, 2-модульный",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "972583",
"article": "2CLA225070N1901",
"name": "ABB NIE Zenit Шампань Мех ТВ розетки, простой, 2-модульный",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "972579",
"article": "2CLA225070N1101",
"name": "ABB NIE Zenit Бел Мех ТВ розетки, простой, 2-модульный",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "985124",
"article": "2CDS211001R0064",
"name": "ABB Выключатель автоматический 1-полюсной SH201 C 6",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "985135",
"article": "2CDS211001R0254",
"name": "ABB Выключатель автоматический 1-полюсной SH201 C 25",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "985137",
"article": "2CDS211001R0324",
"name": "ABB Выключатель автоматический 1-полюсной SH201 C 32",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "985217",
"article": "2CDS213001R0164",
"name": "ABB Выключатель автоматический 3-полюсной SH203 C 16",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "985219",
"article": "2CDS213001R0204",
"name": "ABB Выключатель автоматический 3-полюсной SH203 C 20",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "985225",
"article": "2CDS213001R0404",
"name": "ABB Выключатель автоматический 3-полюсной SH203 C 40",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "985127",
"article": "2CDS211001R0104",
"name": "ABB Выключатель автоматический 1-полюсной SH201 C 10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "985131",
"article": "2CDS211001R0164",
"name": "ABB Выключатель автоматический 1-полюсной SH201 C 16",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "970762",
"article": "2CDS252001R0804",
"name": "ABB Выключатель автоматический 2-полюсной S202 C80",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "970764",
"article": "2CDS253001R0804",
"name": "ABB Выключатель автоматический 3-полюсной S203 C80",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "970765",
"article": "2CDS253001R0824",
"name": "ABB Выключатель автоматический 3-полюсной S203 C100",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "970768",
"article": "2CDS254001R0804",
"name": "ABB Выключатель автоматический 4-полюсной S204 C80",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "970769",
"article": "2CDS254001R0824",
"name": "ABB Выключатель автоматический 4-полюсной S204 C100",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "35248",
"article": "1SFA611621R1075",
"name": "ABB Патрон MLBL-07W со встроенным светодиодом белый 230В AC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000204"
},
{
"id": "663466",
"article": "1SPE007715F9716",
"name": "ABB Клеммник самозажимной PE 17x4+5x25мм ZK175G",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000275"
},
{
"id": "663464",
"article": "1SPE007715F9714",
"name": "ABB Клеммник самозажимной PE 11x4+3x25мм ZK113G",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000275"
},
{
"id": "489121",
"article": "2CKA000230A0469",
"name": "ABB Механизм 1-постовой компьютерной/телефонной розетки UAE, 8 полюсов, RJ45, категория 6е, неэкранированная, до 250 МГц",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001264"
},
{
"id": "6",
"article": "2CKA001754A4428",
"name": "ABB BJE Impuls Черный бархат Рамка 5-ая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "54",
"article": "2CKA002018A0992",
"name": "ABB BJE Impuls Бел Розетка с/з с крышкой",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000125"
},
{
"id": "125",
"article": "2CKA001710A3144",
"name": "ABB BJE Solo/Future Крем Накладка для мех-ов ТАЕ",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "222",
"article": "2CKA006599A2951",
"name": "ABB BJE Solo/Future Крем Накладка для поворотного светорегулятора с ручкой и лампой",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "277",
"article": "2CKA001754A2452",
"name": "ABB BJE Impuls Бел Рамка 5-ая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "409",
"article": "2CKA001753A0064",
"name": "ABB BJE Impuls Беж Клавиша 2-ая с подсветкой",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "506",
"article": "2CKA001724A2758",
"name": "ABB BJE Solo/Future Крем Накладка TV/TV-SAT розетки",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "608",
"article": "2CKA001710A3577",
"name": "ABB BJE Impuls Бел Накладка регулятора тёплого пола (мех 1095 U, 1096 U)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "634",
"article": "2CKA001753A5333",
"name": "ABB BJE Impuls Шампань Клавиша 2-ая с подсветкой",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "644",
"article": "2CKA001751A2930",
"name": "ABB BJE Solo/Future Черный Антрацит Клавиша 2-ая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1036",
"article": "2CKA001753A9004",
"name": "ABB BJE Impuls Бел Накладка 2-ой ТЛФ и комп розетки наклонной (мех214/15/17)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "1086",
"article": "2CKA006599A2159",
"name": "ABB BJE Impuls Шампань Накладка светорегулятора поворотного",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1226",
"article": "2CKA001751A2744",
"name": "ABB BJE Solo/Future Крем Клавиша 2-ая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1505",
"article": "2CKA001754A4424",
"name": "ABB BJE Impuls Черный бархат Рамка 1-ая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1555",
"article": "2CKA002018A1496",
"name": "ABB BJE Impuls Черный бархат Розетка с/з с крышкой",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000125"
},
{
"id": "1617",
"article": "2CKA001754A2551",
"name": "ABB BJE Impuls Шампань Рамка 5-ая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1705",
"article": "2CKA001754A4313",
"name": "ABB BJE Impuls Беж Рамка 2-ая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1719",
"article": "2CKA001753A4856",
"name": "ABB BJE Impuls Бел Клавиша 2-ая с подсветкой",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1759",
"article": "2CKA001754A4425",
"name": "ABB BJE Impuls Черный бархат Рамка 2-ая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1891",
"article": "2CKA001754A2528",
"name": "ABB BJE Impuls Шампань Рамка 2-ая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1911",
"article": "2CKA001753A0153",
"name": "ABB BJE Impuls Черный бархат Клавиша 1-ая с подсветкой",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "2045",
"article": "2CKA001012A1671",
"name": "ABB BJE Impuls Мех Переключатель 2-клавишный",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001590"
},
{
"id": "2049",
"article": "2CKA001751A3038",
"name": "ABB BJE Solo/Future Черный бархат Клавиша 2-ая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "2106",
"article": "2CKA001611A0110",
"name": "ABB BJE Duro Блок переключатель и розетка SCHUKO в одном корпусе, слоновая кость",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000020"
},
{
"id": "2183",
"article": "2CKA002018A1016",
"name": "ABB BJE Impuls Шампань Розетка с/з с крышкой",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000125"
},
{
"id": "2308",
"article": "2CKA001751A3024",
"name": "ABB BJE Solo/Future Белый бархат Клавиша 2-ая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "2600",
"article": "2CKA001753A0152",
"name": "ABB BJE Impuls Черный бархат Клавиша 2-ая с подсветкой",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "2757",
"article": "2CKA002013A5334",
"name": "ABB BJE Impuls Черный бархат Розетка с/з с защитными шторками",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000125"
},
{
"id": "3266",
"article": "2CKA001611A0169",
"name": "ABB BJE Reflex Переключатель и розетка с/з в корпусе (не требует 1-ой рамки)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000020"
},
{
"id": "3291",
"article": "2CKA001754A2437",
"name": "ABB BJE Impuls Бел Рамка 3-ая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "3321",
"article": "2CKA001710A3919",
"name": "ABB BJE Impuls Черный бархат Накладка регулятора тёплого пола (мех 1095 U, 1096 U)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "3415",
"article": "2CKA001753A0140",
"name": "ABB BJE Impuls Черный бархат Накладка TV розетки (TV+FM)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "3419",
"article": "2CKA001753A5440",
"name": "ABB BJE Impuls Шампань Накладка TV розетки (TV+FM)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "3475",
"article": "2CKA001754A4427",
"name": "ABB BJE Impuls Черный бархат Рамка 4-ая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "3537",
"article": "2CKA001011A0928",
"name": "ABB BJE Мех Переключатель 2 - клавишный",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001590"
},
{
"id": "3576",
"article": "2CKA001710A3147",
"name": "ABB BJE Solo/Future Крем Накладка 1-й ТЛФ и комп розетки наклонной (мех 213/16)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "3586",
"article": "2CKA002018A1465",
"name": "ABB BJE Solo/Future Крем Розетка с/з с крышкой",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000125"
},
{
"id": "3682",
"article": "2CKA002013A4979",
"name": "ABB BJE Impuls Шампань Розетка с/з с защитными шторками",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000125"
},
{
"id": "3747",
"article": "2CKA001754A4426",
"name": "ABB BJE Impuls Черный бархат Рамка 3-ая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "3844",
"article": "2CKA001710A3568",
"name": "ABB BJE Solo/Future Крем Накладка для терморегулятора (мех 1095 U, 1096 U)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "3863",
"article": "2CKA001012A1630",
"name": "ABB BJE Impuls Мех Выключатель 1-клавишный перекрестный",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001590"
},
{
"id": "3926",
"article": "2CKA006599A2974",
"name": "ABB BJE Impuls Черный бархат Накладка светорегулятора поворотного",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "4082",
"article": "2CKA000230A0404",
"name": "ABB BJE Мех Антрацит Аудиорозетка 2-ая (накладки 1766-хх и 2539-21х)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "4138",
"article": "2CKA001413A0483",
"name": "ABB BJE Мех Кнопки 1-клавишной, 1-полюсной, 10А 250В",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000029"
},
{
"id": "4183",
"article": "2CKA001754A2536",
"name": "ABB BJE Impuls Шампань Рамка 3-ая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "4357",
"article": "2CKA002011A3886",
"name": "ABB BJE Impuls Черный бархат Розетка с/з",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000125"
},
{
"id": "4380",
"article": "2CPX010450R9999",
"name": "ABB TZ101 фланец на 52 кабеля с фиксатором",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000211"
},
{
"id": "4560",
"article": "2CSL980001R2515",
"name": "ABB Переходник для DS941 FEED IN 25/15 1P",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000001"
},
{
"id": "4640",
"article": "2CKA001753A8964",
"name": "ABB BJE Impuls Бел Накладка 1-й ТЛФ и комп розетки наклонной (мех 213/16)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "4667",
"article": "1SVR405654R0100",
"name": "ABB CR-P/M-92 Светодиод красный 110-230V AC/DC для реле CR-P, CR-M",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002586"
},
{
"id": "4716",
"article": "1SDA066652R1",
"name": "ABB Tmax XT Монтажная плата для крепления на рейке DIN50022 XT1 3p",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002498"
},
{
"id": "4719",
"article": "1SVR405658R1000",
"name": "ABB CR-MM Маркер для реле CR-M",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002586"
},
{
"id": "4737",
"article": "2CCS800900R0211",
"name": "ABB S800-SOR250VAC/DC Реле дист.расцепителя",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001023"
},
{
"id": "4766",
"article": "2CKA001753A0162",
"name": "ABB BJE Impuls Черный бархат Накладка 1-й ТЛФ и комп розетки наклонной (мех 213/16)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "4905",
"article": "1SCA105001R1001",
"name": "ABB OTPS40FPN1 Дополнительный силовой полюс для рубильников ОТ16..40F3 монтаж слева",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002498"
},
{
"id": "4930",
"article": "2CKA001753A4963",
"name": "ABB BJE Impuls Бел Накладка TV розетки (TV+FM)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "4941",
"article": "2CDS200907R0002",
"name": "ABB S2C-A2L Реле дистанционного отключения для автоматов серии S200,диф.авт.DS200,110-415В",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001286"
},
{
"id": "5027",
"article": "2CKA001753A8998",
"name": "ABB BJE Impuls Шампань Накладка 1-й ТЛФ и комп розетки наклонной (мех 213/16)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "5042",
"article": "2CKA001753A5481",
"name": "ABB BJE Impuls Шампань Вывод кабеля (с суппортом)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "5047",
"article": "1SVR405654R1100",
"name": "ABB CR-P/M-92 Светодиод зеленый 110-230V AC/DC для реле CR-P, CR-M",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002586"
},
{
"id": "5189",
"article": "1SVR405654R1000",
"name": "ABB CR-P/M-62V Светодиод зеленый 6-24V AC/DC для реле CR-P, CR-M",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002586"
},
{
"id": "5231",
"article": "2CPX010783R9999",
"name": "ABB TZ605 Держатель одинарный для WR и плат   ",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002625"
},
{
"id": "5604",
"article": "1SCA105000R1001",
"name": "ABB OTPS40FPN2 Дополнительный силовой полюс для рубильников ОТ16..40F3 монтаж справа",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002498"
},
{
"id": "5628",
"article": "2CPX010782R9999",
"name": "ABB TZ604 Держатель двойной для WR и плат",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002625"
},
{
"id": "5703",
"article": "2CSM631043R0811",
"name": "ABB TS63/12-24C Трансформатор раздел.безоп.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001547"
},
{
"id": "5735",
"article": "2CPX010779R9999",
"name": "ABB TZ601 Монтажное основание в шкаф TG Г=225м   ",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002625"
},
{
"id": "5745",
"article": "2CSG121130R1101",
"name": "ABB Трансформатор тока CT3/250/5A, класс 0.5",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002048"
},
{
"id": "5919",
"article": "2CPX010780R9999",
"name": "ABB TZ602 Монтажное основание в шкаф TL Г=275м   ",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002625"
},
{
"id": "6020",
"article": "2CSG121100R1101",
"name": "ABB Трансформатор тока CT3/100/5A, класс 1",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002048"
},
{
"id": "6065",
"article": "2CSM401043R0811",
"name": "ABB TS40/12-24C Трансформатор раздел.безоп.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001547"
},
{
"id": "6067",
"article": "2CSM251043R0811",
"name": "ABB Трансформатор раздел.безоп.TS25/12-24C",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001547"
},
{
"id": "663405",
"article": "1SLM004100A1922",
"name": "ABB Mistral41 Верт соединитель/держ труб 12М в нишу",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002287"
},
{
"id": "6756",
"article": "2CPX010784R9999",
"name": "ABB TZ606 Адаптер EDF-профиля для TZ604-605   ",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002625"
},
{
"id": "9729",
"article": "2CPX010645R9999",
"name": "ABB TZP312 Защита от касания 750x1800 ШхВ,мм   ",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002625"
},
{
"id": "9146",
"article": "2CPX010167R9999",
"name": "ABB TW312G Шкаф TwinLine 1850x800x350 (432 мод) IP55",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000058"
},
{
"id": "9235",
"article": "1SL2859A00",
"name": "ABB Luca Заглушка для шкафов белая 4мод.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000771"
},
{
"id": "10353",
"article": "2CPX010638R9999",
"name": "ABB TZP212 Защита от касания 500x1800 ШхВ,мм   ",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002625"
},
{
"id": "11239",
"article": "1SCA022783R0170",
"name": "ABB OTV400ECK Ручка для установки на OT315-400 черная",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000229"
},
{
"id": "11413",
"article": "2CPX010006R9999",
"name": "ABB TG205G Шкаф TwinLine 800x550x225 (120 мод) IP55",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000058"
},
{
"id": "11415",
"article": "2CPX010166R9999",
"name": "ABB TW212G Шкаф TwinLine 1850x550x350 (288 мод) IP55",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000058"
},
{
"id": "11496",
"article": "2CPX010011R9999",
"name": "ABB TG206G Шкаф TwinLine 950x550x225 (144 мод) IP55",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000058"
},
{
"id": "11557",
"article": "1SCA022804R6340",
"name": "ABB OTV800EK Ручка для рубильников OT630...800 черная",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000229"
},
{
"id": "11647",
"article": "1SVR405659R1000",
"name": "ABB CR-MH Фиксатор для реле CR-M",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002586"
},
{
"id": "11789",
"article": "2CMA193259R1000",
"name": "ABB Розетка на панель прямая 32A, 3P+N+E, IP44",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001317"
},
{
"id": "12004",
"article": "1SCA022763R2960",
"name": "ABB OTV400EK Ручка для установки на OT315-400 черная",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000229"
},
{
"id": "13223",
"article": "2CPX042860R9999",
"name": "ABB WR381 WR-рама 3PW OH8 V2",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002518"
},
{
"id": "13285",
"article": "1SCA022783R0090",
"name": "ABB OTV250ECK Ручка для установки на OT160-250 черная (I-0-II)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000229"
},
{
"id": "13471",
"article": "2CDE283001R0080",
"name": "ABB E203r Рубильник 3P 80A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "13991",
"article": "1SFA896311R1001",
"name": "ABB PSR-FAN Вентилятор дополнительный",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000320"
},
{
"id": "14074",
"article": "2CPX042859R9999",
"name": "ABB WR281 WR-рама 2PW OH8 V2",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002518"
},
{
"id": "14146",
"article": "1SCA105365R1001",
"name": "ABB OT63F4N2 Выключатель-разъединитель 4Р 63А на DIN-рейку или монтажную плату(с резерв. ручкой)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "14423",
"article": "1SCA105461R1001",
"name": "ABB OTPS80FP Дополнительный силовой полюс для рубильников OT63..80F3",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002498"
},
{
"id": "14795",
"article": "1SCA105431R1001",
"name": "ABB OT80FT3 Выключатель-разъединитель 3Р 80А дверного монтажа без ручки",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "14838",
"article": "1SCA105369R1001",
"name": "ABB OT63F4C Выключатель-разъединитель 4Р 63А на DIN-рейку или монтажную плату (без ручки)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "15153",
"article": "1SDA067155R1",
"name": "ABB Tmax XT Выводы силовые для стационарного выключателя FC CuAl 1x35...95mm2 XT1 (комплект из 3шт)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002019"
},
{
"id": "15284",
"article": "1SDA066676R1",
"name": "ABB Tmax XT Перегородки межфазные разделительные PB 100mm 4pcs XT1-XT3 3p (комплект из 4шт.)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002273"
},
{
"id": "15332",
"article": "2CDL220001R1058",
"name": "ABB PS2/5 Разводка шинная 2Ф. комп. 58мод.63А",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000215"
},
{
"id": "15344",
"article": "2CDL220001R1612",
"name": "ABB PS2/12/16 2ф.шина к. 12мод.80А",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000215"
},
{
"id": "15348",
"article": "2CDL230001R1060",
"name": "ABB PS3/60 Разводка шинная 3Ф на 60М 63 А штырек",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000215"
},
{
"id": "15472",
"article": "1SDA054970R1",
"name": "ABB Tmax Перегородки межполюсные низкие 100mm (1упак.=4шт.) для T4-T5",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002273"
},
{
"id": "15534",
"article": "2CDL240101R1012",
"name": "ABB PS4/12 Разводка шинная 4Р на 12М 63 А",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000215"
},
{
"id": "15608",
"article": "2CDL240101R1058",
"name": "ABB PS4/58N Разводка шинная 4Р на 58М 63А нейт.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000215"
},
{
"id": "15610",
"article": "2CDL210001R1006",
"name": "ABB PS1/6 Шина 1Ф к. 6мод.63А",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000215"
},
{
"id": "15618",
"article": "2CDL210001R1660",
"name": "ABB PS1/60/16 Шина 1Ф. к. 60мод.80А",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000215"
},
{
"id": "1208307",
"article": "2CLA851810A1101",
"name": "ABB SKY Альпийский белый Накладка для 1-го суппорта/разъёма типа 2017... или 2018..., со шторками и полем для надписи",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "1208308",
"article": "2CLA851810A1501",
"name": "ABB SKY Чёрный бархат Накладка для 1-го суппорта/разъёма типа 2017... или 2018..., со шторками и полем для надписи",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "1208309",
"article": "2CLA851810A1301",
"name": "ABB SKY Серебристый алюминий Накладка для 1-го суппорта/разъёма типа 2017... или 2018..., со шторками и полем для надписи",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "1208311",
"article": "2CLA851820A1101",
"name": "ABB SKY Альпийский белый Накладка для 2-х суппортов/разъёмов типа 2017... и/или 2018..., со шторками и полем для надписи",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "1208312",
"article": "2CLA851820A1501",
"name": "ABB SKY Чёрный бархат Накладка для 2-х суппортов/разъёмов типа 2017... и/или 2018..., со шторками и полем для надписи",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "1208313",
"article": "2CLA851820A1301",
"name": "ABB SKY Серебристый алюминий Накладка для 2-х суппортов/разъёмов типа 2017... и/или 2018..., со шторками и полем для надписи",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "1208315",
"article": "2CLA855000A1101",
"name": "ABB SKY Альпийский белый Накладка для TV-R розетки",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "1208316",
"article": "2CLA855000A1501",
"name": "ABB SKY Чёрный бархат Накладка для TV-R розетки",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "1208317",
"article": "2CLA855000A1301",
"name": "ABB SKY Серебристый алюминий Накладка для TV-R розетки",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "1208319",
"article": "2CLA855010A1101",
"name": "ABB SKY Альпийский белый Накладка для TV-R-SAT розетки",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "1208320",
"article": "2CLA855010A1501",
"name": "ABB SKY Чёрный бархат Накладка для TV-R-SAT розетки",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "1208321",
"article": "2CLA855010A1301",
"name": "ABB SKY Серебристый алюминий Накладка для TV-R-SAT розетки",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "1208331",
"article": "2CLA850700A1101",
"name": "ABB SKY Альпийский белый Накладка для кабельного вывода арт.8107 и выключателя со шнурком арт.8148",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208332",
"article": "2CLA850700A1501",
"name": "ABB SKY Чёрный бархат Накладка для кабельного вывода арт.8107 и выключателя со шнурком арт.8148",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208394",
"article": "2CLA861810A1401",
"name": "ABB SKY Moon Накладка для 1-го суппорта/разъёма типа 2017... или 2018..., со стальным суппортом, кольцо \"хром\"",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "1208398",
"article": "2CLA865000A1401",
"name": "ABB SKY Moon Накладка для TV-R розетки, кольцо \"хром\"",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "1208193",
"article": "2CLA858800A1401",
"name": "ABB SKY Нержавеющая сталь Накладка для розетки SCHUKO",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208194",
"article": "2CLA858800A1101",
"name": "ABB SKY Альпийский белый Накладка для розетки SCHUKO",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208195",
"article": "2CLA858800A2101",
"name": "ABB SKY Стекло белое Накладка для розетки SCHUKO",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208198",
"article": "2CLA858800A1501",
"name": "ABB SKY Чёрный бархат Накладка для розетки SCHUKO",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208199",
"article": "2CLA858800A1301",
"name": "ABB SKY Серебристый алюминий Накладка для розетки SCHUKO",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208202",
"article": "2CLA858890A1401",
"name": "ABB SKY Нержавеющая сталь Накладка для розетки SCHUKO с плоской поверхностью",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208203",
"article": "2CLA858890A1101",
"name": "ABB SKY Альпийский белый Накладка для розетки SCHUKO с плоской поверхностью",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208204",
"article": "2CLA858890A2101",
"name": "ABB SKY Стекло белое Накладка для розетки SCHUKO с плоской поверхностью",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208205",
"article": "2CLA858890A2501",
"name": "ABB SKY Стекло чёрное Накладка для розетки SCHUKO с плоской поверхностью",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208206",
"article": "2CLA858890A1501",
"name": "ABB SKY Чёрный бархат Накладка для розетки SCHUKO с плоской поверхностью",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208207",
"article": "2CLA858890A1301",
"name": "ABB SKY Серебристый алюминий Накладка для розетки SCHUKO с плоской поверхностью",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208303",
"article": "2CLA851700A1101",
"name": "ABB SKY Альпийский белый Накладка для телекоммуникационных розеток типа 8117... и/или 8118…",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "1208323",
"article": "2CLA858500A1101",
"name": "ABB SKY Альпийский белый Накладка для механизмов зарядного устройства USB, арт.8185",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "1208324",
"article": "2CLA858500A1501",
"name": "ABB SKY Чёрный бархат Накладка для механизмов зарядного устройства USB, арт.8185",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "1208357",
"article": "2CLA857200A1101",
"name": "ABB SKY Альпийский белый Рамка 2-постовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1208358",
"article": "2CLA857200A3001",
"name": "ABB SKY Стекло белое Рамка 2-постовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1208359",
"article": "2CLA857200A3101",
"name": "ABB SKY Стекло чёрное Рамка 2-постовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1208361",
"article": "2CLA857200A1501",
"name": "ABB SKY Чёрный бархат Рамка 2-постовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1208362",
"article": "2CLA857200A1301",
"name": "ABB SKY Серебристый алюминий Рамка 2-постовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1208364",
"article": "2CLA857210A1101",
"name": "ABB SKY Альпийский белый Рамка 2-постовая, базовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1208366",
"article": "2CLA857300A1101",
"name": "ABB SKY Альпийский белый Рамка 3-постовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1208367",
"article": "2CLA857300A3001",
"name": "ABB SKY Стекло белое Рамка 3-постовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1208368",
"article": "2CLA857300A3101",
"name": "ABB SKY Стекло чёрное Рамка 3-постовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1208370",
"article": "2CLA857300A1501",
"name": "ABB SKY Чёрный бархат Рамка 3-постовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1208371",
"article": "2CLA857300A1301",
"name": "ABB SKY Серебристый алюминий Рамка 3-постовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1208373",
"article": "2CLA857310A1101",
"name": "ABB SKY Альпийский белый Рамка 3-постовая, базовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1208375",
"article": "2CLA857400A1101",
"name": "ABB SKY Альпийский белый Рамка 4-постовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1208376",
"article": "2CLA857400A3001",
"name": "ABB SKY Стекло белое Рамка 4-постовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1208379",
"article": "2CLA857400A1501",
"name": "ABB SKY Чёрный бархат Рамка 4-постовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1208380",
"article": "2CLA857400A1301",
"name": "ABB SKY Серебристый алюминий Рамка 4-постовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1208382",
"article": "2CLA857410A1101",
"name": "ABB SKY Альпийский белый Рамка 4-постовая, базовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1208383",
"article": "2CLA868890A1501",
"name": "ABB SKY Moon Накладка для розетки SCHUKO с плоской поверхностью, кольцо \"чёрное стекло\"",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208384",
"article": "2CLA868890A1401",
"name": "ABB SKY Moon Накладка для розетки SCHUKO с плоской поверхностью, кольцо \"хром\"",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208400",
"article": "2CLA868500A1401",
"name": "ABB SKY Moon Накладка для механизмов зарядного устройства USB, арт.8185, кольцо \"хром\"",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "1208410",
"article": "2CLA867200A3001",
"name": "ABB SKY Moon Стекло белое Рамка 2-постовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1208411",
"article": "2CLA867200A3101",
"name": "ABB SKY Moon Стекло чёрное Рамка 2-постовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1208412",
"article": "2CLA867200A4001",
"name": "ABB SKY Moon Нержавеющая сталь Рамка 2-постовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1208413",
"article": "2CLA867300A3001",
"name": "ABB SKY Moon Стекло белое Рамка 3-постовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1208414",
"article": "2CLA867300A3101",
"name": "ABB SKY Moon Стекло чёрное Рамка 3-постовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1208176",
"article": "2CLA818890A1001",
"name": "ABB Розетка SCHUKO с заземлением, \"плоская\", 16А/250В",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000125"
},
{
"id": "1208277",
"article": "2CLA856020A1101",
"name": "ABB SKY Альпийский белый Накладка с поворотной ручкой для механизма поворотного светорегулятора",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208279",
"article": "2CLA856020A1301",
"name": "ABB SKY Серебристый алюминий Накладка с поворотной ручкой для механизма поворотного светорегулятора",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208304",
"article": "2CLA851700A1501",
"name": "ABB SKY Чёрный бархат Накладка для телекоммуникационных розеток типа 8117... и/или 8118…",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "1208305",
"article": "2CLA851700A1301",
"name": "ABB SKY Серебристый алюминий Накладка для телекоммуникационных розеток типа 8117... и/или 8118…",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "1208346",
"article": "2CLA857100A1401",
"name": "ABB SKY Нержавеющая сталь Рамка 1-постовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1208347",
"article": "2CLA857100A1101",
"name": "ABB SKY Альпийский белый Рамка 1-постовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1208348",
"article": "2CLA857100A3001",
"name": "ABB SKY Стекло белое Рамка 1-постовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1208350",
"article": "2CLA857100A3101",
"name": "ABB SKY Стекло чёрное Рамка 1-постовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1208352",
"article": "2CLA857100A1501",
"name": "ABB SKY Чёрный бархат Рамка 1-постовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1208353",
"article": "2CLA857100A1301",
"name": "ABB SKY Серебристый алюминий Рамка 1-постовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1208355",
"article": "2CLA857110A1101",
"name": "ABB SKY Альпийский белый Рамка 1-постовая, базовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1208407",
"article": "2CLA867100A3001",
"name": "ABB SKY Moon Стекло белое Рамка 1-постовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1208408",
"article": "2CLA867100A3101",
"name": "ABB SKY Moon Стекло чёрное Рамка 1-постовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1208409",
"article": "2CLA867100A4001",
"name": "ABB SKY Moon Нержавеющая сталь Рамка 1-постовая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000007"
},
{
"id": "1208190",
"article": "2CLA818500A1001",
"name": "ABB Механизм USB зарядного устройства",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002949"
},
{
"id": "1208192",
"article": "2CLA811800A1001",
"name": "ABB Розетка телекоммуникационная на 8 контактов, тип RJ45, категория 5е",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000018"
},
{
"id": "1208181",
"article": "2CLA819202A1001",
"name": "ABB Лампа подсветки LED белый ",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000199"
},
{
"id": "1208185",
"article": "2CLA866020A1401",
"name": "ABB SKY Moon Мех электронного поворотного светорегулятора для LED, 2 - 100 Вт, кольцо \"хром\"",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208187",
"article": "2CLA866090A1401",
"name": "ABB SKY Moon Мех электронного поворотного светорегулятора для люминесцентных ламп 700 Вт, 0/1-10 В, 50 мА, кольцо \"хром\"",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000025"
},
{
"id": "1208213",
"article": "2CLA850100A1101",
"name": "ABB SKY Альпийский белый Клавиша для 1-клавишных выключателей/переключателей/кнопок",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208214",
"article": "2CLA850100A2101",
"name": "ABB SKY Стекло белое Клавиша для 1-клавишных выключателей/переключателей/кнопок",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208215",
"article": "2CLA850100A2501",
"name": "ABB SKY Стекло чёрное Клавиша для 1-клавишных выключателей/переключателей/кнопок",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208216",
"article": "2CLA850100A1501",
"name": "ABB SKY Чёрный бархат Клавиша для 1-клавишных выключателей/переключателей/кнопок",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208217",
"article": "2CLA850100A1301",
"name": "ABB SKY Серебристый алюминий Клавиша для 1-клавишных выключателей/переключателей/кнопок",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208219",
"article": "2CLA851100A1101",
"name": "ABB SKY Альпийский белый Клавиша для 2-клавишных выключателей/переключателей/кнопок",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208220",
"article": "2CLA851100A2101",
"name": "ABB SKY Стекло белое Клавиша для 2-клавишных выключателей/переключателей/кнопок",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208221",
"article": "2CLA851100A2501",
"name": "ABB SKY Стекло чёрное Клавиша для 2-клавишных выключателей/переключателей/кнопок",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208222",
"article": "2CLA851100A1501",
"name": "ABB SKY Чёрный бархат Клавиша для 2-клавишных выключателей/переключателей/кнопок",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208223",
"article": "2CLA851100A1301",
"name": "ABB SKY Серебристый алюминий Клавиша для 2-клавишных выключателей/переключателей/кнопок",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208229",
"article": "2CLA850130A1101",
"name": "ABB SKY Альпийский белый Клавиша для 1-клавишных выключателей/переключателей/кнопок с линзой подсветки",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208232",
"article": "2CLA850130A1501",
"name": "ABB SKY Чёрный бархат Клавиша для 1-клавишных выключателей/переключателей/кнопок с линзой подсветки",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208233",
"article": "2CLA850130A1301",
"name": "ABB SKY Серебристый алюминий Клавиша для 1-клавишных выключателей/переключателей/кнопок с линзой подсветки",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208263",
"article": "2CLA854400A1101",
"name": "ABB SKY Альпийский белый Клавиша для мех выключателя жалюзи 8144 и 8144.1",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208385",
"article": "2CLA860100A1501",
"name": "ABB SKY Moon Клавиша для 1-клавишных выключателей/переключателей/кнопок, кольцо \"чёрное стекло\"",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208386",
"article": "2CLA860100A1401",
"name": "ABB SKY Moon Клавиша для 1-клавишных выключателей/переключателей/кнопок, кольцо \"хром\"",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208387",
"article": "2CLA861100A1501",
"name": "ABB SKY Moon Клавиша для 2-клавишных выключателей/переключателей/кнопок, кольцо \"чёрное стекло\"",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208388",
"article": "2CLA861100A1401",
"name": "ABB SKY Moon Клавиша для 2-клавишных выключателей/переключателей/кнопок, кольцо \"хром\"",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208390",
"article": "2CLA860130A1401",
"name": "ABB SKY Moon Клавиша для 1-клавишных выключателей/переключателей/кнопок с линзой подсветки, кольцо \"хром\"",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208327",
"article": "2CLA850000A1101",
"name": "ABB SKY Альпийский белый Заглушка с суппортом",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "1208328",
"article": "2CLA850000A1501",
"name": "ABB SKY Чёрный бархат Заглушка с суппортом",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000011"
},
{
"id": "360173",
"article": "2CTB803873R2400",
"name": "ABB OVR Ограничитель перенапряжения T2 3P 40 275 P ( тип 2 )",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000941"
},
{
"id": "365125",
"article": "2CDD281101R0032",
"name": "ABB SD201 Рубильник 1P 32A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "1186440",
"article": "2CLA226030N1801",
"name": "ABB Zenit Антрацит Механизм электронного поворотного светорегулятора для регулируемых LEDi ламп, 2-100 Вт, 2-модульный",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000025"
},
{
"id": "1186441",
"article": "2CLA226030N1101",
"name": "ABB Zenit Белый Механизм электронного поворотного светорегулятора для регулируемых LEDi ламп, 2-100 Вт, 2-модульный",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000025"
},
{
"id": "12710",
"article": "2CPX062752R9999",
"name": "ABB Клеммник N 8x4 + 2x25 мм² ZK82B",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000275"
},
{
"id": "992241",
"article": "1SLM004100A1944",
"name": "ABB Набор для устан в Г/К стены Mistral41F",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002601"
},
{
"id": "734468",
"article": "2CLA228500N1101",
"name": "ABB NIE Zenit Бел Механизм USB зарядного устройства, 2М, 2х750 мА / 1х1500мА",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002949"
},
{
"id": "813919",
"article": "2CLA218500N1801",
"name": "ABB NIE Zenit Антрацит Механизм USB зарядного устройства, 1М, 750 мА",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002949"
},
{
"id": "813920",
"article": "2CLA228500N1801",
"name": "ABB NIE Zenit Антрацит Механизм USB зарядного устройства, 2М, 2х750 мА / 1х1500мА",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002949"
},
{
"id": "813921",
"article": "2CLA218500N1301",
"name": "ABB NIE Zenit Серебро Механизм USB зарядного устройства, 1М, 750 мА",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002949"
},
{
"id": "813922",
"article": "2CLA228500N1301",
"name": "ABB NIE Zenit Серебро Механизм USB зарядного устройства, 2М, 2х750 мА / 1х1500мА",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002949"
},
{
"id": "813924",
"article": "2CLA228500N1901",
"name": "ABB NIE Zenit Шампань Механизм USB зарядного устройства, 2М, 2х750 мА / 1х1500мА",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002949"
},
{
"id": "813850",
"article": "2CDS241001R0105",
"name": "ABB Выключатель автоматический 1-полюсной SH201L B10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "813851",
"article": "2CDS241001R0165",
"name": "ABB Выключатель автоматический 1-полюсной SH201L B16",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "813852",
"article": "2CDS241001R0205",
"name": "ABB Выключатель автоматический 1-полюсной SH201L B20",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "813853",
"article": "2CDS241001R0255",
"name": "ABB Выключатель автоматический 1-полюсной SH201L B25",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "813854",
"article": "2CDS241001R0325",
"name": "ABB Выключатель автоматический 1-полюсной SH201L B32",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "813858",
"article": "2CDS241001R0065",
"name": "ABB Выключатель автоматический 1-полюсной SH201L B6",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "813865",
"article": "2CDS242001R0505",
"name": "ABB Выключатель автоматический 2-полюсной SH202L B50",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "813870",
"article": "2CDS243001R0205",
"name": "ABB Выключатель автоматический 3-полюсной SH203L B20",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "813871",
"article": "2CDS243001R0255",
"name": "ABB Выключатель автоматический 3-полюсной SH203L B25",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "813873",
"article": "2CDS243001R0405",
"name": "ABB Выключатель автоматический 3-полюсной SH203L B40",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "53194",
"article": "2CSR245180R0064",
"name": "ABB Выключатель автоматический дифференциального тока DS201 L C6 A10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000905"
},
{
"id": "357322",
"article": "2CDD281101R0050",
"name": "ABB SD201 Рубильник 1P 50A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "358235",
"article": "2CDD282101R0050",
"name": "ABB SD202 Рубильник 2P 50A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "358546",
"article": "2CDD283101R0063",
"name": "ABB SD203 Рубильник 3P 63A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "358696",
"article": "2CDD271111R0063",
"name": "ABB SHD201 Рубильник 1P 63A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "359688",
"article": "2CDD272111R0040",
"name": "ABB SHD202 Рубильник 2P 40A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "361327",
"article": "2CDD273111R0016",
"name": "ABB SHD203 Рубильник 3P 16A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "362060",
"article": "2CDD282101R0025",
"name": "ABB SD202 Рубильник 2P 25A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "362425",
"article": "2CDD284101R0025",
"name": "ABB SD204 Рубильник 4P 25A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "362501",
"article": "2CDD283101R0040",
"name": "ABB SD203 Рубильник 3P 40A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "363317",
"article": "2CDD273111R0040",
"name": "ABB SHD203 Рубильник 3P 40A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "363556",
"article": "2CDD281101R0063",
"name": "ABB SD201 Рубильник 1P 63A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "364626",
"article": "2CDD272111R0063",
"name": "ABB SHD202 Рубильник 2P 63A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "365283",
"article": "2CDD283101R0050",
"name": "ABB SD203 Рубильник 3P 50A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "366218",
"article": "2CDD272111R0050",
"name": "ABB SHD202 Рубильник 2P 50A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "366584",
"article": "2CDD273111R0032",
"name": "ABB SHD203 Рубильник 3P 32A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "366864",
"article": "2CDD271111R0040",
"name": "ABB SHD201 Рубильник 1P 40A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "367845",
"article": "2CDD283101R0032",
"name": "ABB SD203 Рубильник 3P 32A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "368637",
"article": "2CDD281101R0025",
"name": "ABB SD201 Рубильник 1P 25A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "368765",
"article": "2CDD282101R0063",
"name": "ABB SD202 Рубильник 2P 63A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "369150",
"article": "2CDD284101R0032",
"name": "ABB SD204 Рубильник 4P 32A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "370857",
"article": "2CDD282101R0016",
"name": "ABB SD202 Рубильник 2P 16A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "371676",
"article": "2CDD271111R0016",
"name": "ABB SHD201 Рубильник 1P 16A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "371986",
"article": "2CDD273111R0063",
"name": "ABB SHD203 Рубильник 3P 63A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "373653",
"article": "2CDD284101R0050",
"name": "ABB SD204 Рубильник 4P 50A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "375487",
"article": "2CDD283101R0025",
"name": "ABB SD203 Рубильник 3P 25A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "375978",
"article": "2CDD281101R0016",
"name": "ABB SD201 Рубильник 1P 16A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "376174",
"article": "2CDD282101R0032",
"name": "ABB SD202 Рубильник 2P 32A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "377451",
"article": "2CDD283101R0016",
"name": "ABB SD203 Рубильник 3P 16A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "377507",
"article": "2CDD284101R0040",
"name": "ABB SD204 Рубильник 4P 40A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "378411",
"article": "2CDD284101R0063",
"name": "ABB SD204 Рубильник 4P 63A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "378510",
"article": "2CDD273111R0050",
"name": "ABB SHD203 Рубильник 3P 50A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "380044",
"article": "2CDD274111R0040",
"name": "ABB SHD204 Рубильник 4P 40A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "1008717",
"article": "1SFA619403R5238",
"name": "ABB CL2-523C Лампа со светодиодом белая 230В AC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000272"
},
{
"id": "993718",
"article": "2TAZ311000R2011",
"name": "ABB Реле электромех. установ. E297-16-10/230",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001652"
},
{
"id": "993736",
"article": "2TAZ312000R2011",
"name": "ABB Реле электромех. E290-16-10/230",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000188"
},
{
"id": "993738",
"article": "2TAZ312000R2013",
"name": "ABB E290-16-11/230 Реле электромеханическое",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000188"
},
{
"id": "993745",
"article": "2TAZ312000R2041",
"name": "ABB Реле электромех. E290-16-10/24",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000188"
},
{
"id": "993737",
"article": "2TAZ312000R2012",
"name": "ABB E290-16-20/230 Реле электромеханическое",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000188"
},
{
"id": "972570",
"article": "2CLA961171N1001",
"name": "ABB NIE Zenit Бел Датчик присутствия, ИК, потолочный, 360 град., 1200 Вт",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000133"
},
{
"id": "987968",
"article": "1SVR730700R2100",
"name": "ABB CM-MSS.13S Термисторное реле защиты двигателя питание 110-130В AC, 220-240В AC, 1 ПК, винт клем",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002568"
},
{
"id": "1008633",
"article": "1SFA619403R5022",
"name": "ABB CL2-502G Лампа со светодиодом зеленая 24В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000272"
},
{
"id": "1008634",
"article": "1SFA619403R5021",
"name": "ABB CL2-502R Лампа со светодиодом красная 24В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000272"
},
{
"id": "1008635",
"article": "1SFA619403R5023",
"name": "ABB CL2-502Y Лампа со светодиодом желтая 24В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000272"
},
{
"id": "508337",
"article": "2TKA140003G1",
"name": "ABB Коробка разветвительная, квадратная, 104х104 мм IP 55, серая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002600"
},
{
"id": "1009304",
"article": "1SFA619403R5234",
"name": "ABB CL2-523L Лампа со светодиодом синяя 230В AC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000272"
},
{
"id": "1009305",
"article": "1SFA619403R5233",
"name": "ABB CL2-523Y Лампа со светодиодом желтая 230В AC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000272"
},
{
"id": "1009374",
"article": "1SFA619403R5232",
"name": "ABB CL2-523G Лампа со светодиодом зеленый 230В AC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000272"
},
{
"id": "1026652",
"article": "1SFA619403R5201",
"name": "ABB CL2-520R Лампа красная со встроенным светодиодом 220В DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000272"
},
{
"id": "869619",
"article": "1SLM004101A1105",
"name": "ABB Mistral41 Бокс в нишу 24М непрозрачная дверь (c клемм)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "869623",
"article": "1SLM004101A1109",
"name": "ABB Mistral41 Бокс в нишу 54М непрозрачная дверь (c клемм)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "869624",
"article": "1SLM004101A1110",
"name": "ABB Mistral41 Бокс в нишу 72М непрозрачная дверь (c клемм)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1046249",
"article": "1SFA619403R5203",
"name": "ABB CL2-520Y Лампа желтая со встроенным светодиодом 220В DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000272"
},
{
"id": "1046252",
"article": "1SFA619403R5231",
"name": "ABB CL2-523R Лампа красная со встроенным светодиодом 230В AC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000272"
},
{
"id": "498903",
"article": "1SDA065524R1",
"name": "ABB Блок автоматического управления переключением источников питания (АВР) ATS022",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002498"
},
{
"id": "991528",
"article": "1SAM451000R1016",
"name": "ABB Выключатель автоматический MS165-54 30кА с регулир. тепловой защитой 40А-54А Класс тепл. расцепит. 10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000074"
},
{
"id": "993476",
"article": "2CSF202006R2400",
"name": "ABB FH202AC УЗО 2Р 40А 100mA (AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "993477",
"article": "2CSF202006R2630",
"name": "ABB FH202AC УЗО 2Р 63А 100mA (AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "993486",
"article": "2CSF204006R2250",
"name": "ABB FH204AC УЗО 4Р 25А 100mA (AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "993487",
"article": "2CSF204006R2400",
"name": "ABB FH204AC УЗО 4Р 40А 100mA (AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "993488",
"article": "2CSF204006R2630",
"name": "ABB FH204AC УЗО 4Р 63А 100mA (AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "1402353",
"article": "2CDD641051R0016",
"name": "ABB Basic M Выключатель нагрузки 1P, 16A, BMD51116",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "1402356",
"article": "2CDD641051R0040",
"name": "ABB Basic M Выключатель нагрузки 1P, 40A, BMD51140",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "1402357",
"article": "2CDD641051R0050",
"name": "ABB Basic M Выключатель нагрузки 1P, 50A, BMD51150",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "1402358",
"article": "2CDD641051R0063",
"name": "ABB Basic M Выключатель нагрузки 1P, 63A, BMD51163",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "1402359",
"article": "2CDD642051R0016",
"name": "ABB Basic M Выключатель нагрузки 2P, 16A, BMD51216",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "1402360",
"article": "2CDD642051R0025",
"name": "ABB Basic M Выключатель нагрузки 2P, 25A, BMD51225",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "1402361",
"article": "2CDD642051R0032",
"name": "ABB Basic M Выключатель нагрузки 2P, 32A, BMD51232",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "1402362",
"article": "2CDD642051R0040",
"name": "ABB Basic M Выключатель нагрузки 2P, 40A, BMD51240",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "1402363",
"article": "2CDD642051R0050",
"name": "ABB Basic M Выключатель нагрузки 2P, 50A, BMD51250",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "1402364",
"article": "2CDD642051R0063",
"name": "ABB Basic M Выключатель нагрузки 2P, 63A, BMD51263",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "1402365",
"article": "2CDD643051R0016",
"name": "ABB Basic M Выключатель нагрузки 3P, 16A, BMD51316",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "1402366",
"article": "2CDD643051R0025",
"name": "ABB Basic M Выключатель нагрузки 3P, 25A, BMD51325",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "1402367",
"article": "2CDD643051R0032",
"name": "ABB Basic M Выключатель нагрузки 3P, 32A, BMD51332",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "1402368",
"article": "2CDD643051R0040",
"name": "ABB Basic M Выключатель нагрузки 3P, 40A, BMD51340",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "1402369",
"article": "2CDD643051R0050",
"name": "ABB Basic M Выключатель нагрузки 3P, 50A, BMD51350",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "1402370",
"article": "2CDD643051R0063",
"name": "ABB Basic M Выключатель нагрузки 3P, 63A, BMD51363",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "1402371",
"article": "2CDD644051R0016",
"name": "ABB Basic M Выключатель нагрузки 4P, 16A, BMD51416",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "1402372",
"article": "2CDD644051R0025",
"name": "ABB Basic M Выключатель нагрузки 4P, 25A, BMD51425",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "1402373",
"article": "2CDD644051R0032",
"name": "ABB Basic M Выключатель нагрузки 4P, 32A, BMD51432",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "1402374",
"article": "2CDD644051R0040",
"name": "ABB Basic M Выключатель нагрузки 4P, 40A, BMD51440",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "1402375",
"article": "2CDD644051R0050",
"name": "ABB Basic M Выключатель нагрузки 4P, 50A, BMD51450",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "1402376",
"article": "2CDD644051R0063",
"name": "ABB Basic M Выключатель нагрузки 4P, 63A, BMD51463",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "1402377",
"article": "2CDS641041R0064",
"name": "ABB Выключатель автоматический 1P, 6A, C, 4,5кА, BMS411C06",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402378",
"article": "2CDS641041R0104",
"name": "ABB Выключатель автоматический 1P, 10A, C, 4,5кА, BMS411C10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402379",
"article": "2CDS641041R0164",
"name": "ABB Выключатель автоматический 1P, 16A, C, 4,5кА, BMS411C16",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402380",
"article": "2CDS641041R0204",
"name": "ABB Выключатель автоматический 1P, 20A, C, 4,5кА, BMS411C20",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402381",
"article": "2CDS641041R0254",
"name": "ABB Выключатель автоматический 1P, 25A, C, 4,5кА, BMS411C25",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402382",
"article": "2CDS641041R0324",
"name": "ABB Выключатель автоматический 1P, 32A, C, 4,5кА, BMS411C32",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402383",
"article": "2CDS641041R0404",
"name": "ABB Выключатель автоматический 1P, 40A, C, 4,5кА, BMS411C40",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402384",
"article": "2CDS641041R0504",
"name": "ABB Выключатель автоматический 1P, 50A, C, 4,5кА, BMS411C50",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402385",
"article": "2CDS641041R0634",
"name": "ABB Выключатель автоматический 1P, 63A, C, 4,5кА, BMS411C63",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402386",
"article": "2CDS642041R0064",
"name": "ABB Выключатель автоматический 2P, 6A, C, 4,5кА, BMS412C06",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402387",
"article": "2CDS642041R0104",
"name": "ABB Выключатель автоматический 2P, 10A, C, 4,5кА, BMS412C10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402388",
"article": "2CDS642041R0164",
"name": "ABB Выключатель автоматический 2P, 16A, C, 4,5кА, BMS412C16",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402389",
"article": "2CDS642041R0204",
"name": "ABB Выключатель автоматический 2P, 20A, C, 4,5кА, BMS412C20",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402390",
"article": "2CDS642041R0254",
"name": "ABB Выключатель автоматический 2P, 25A, C, 4,5кА, BMS412C25",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402391",
"article": "2CDS642041R0324",
"name": "ABB Выключатель автоматический 2P, 32A, C, 4,5кА, BMS412C32",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402392",
"article": "2CDS642041R0404",
"name": "ABB Выключатель автоматический 2P, 40A, C, 4,5кА, BMS412C40",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402393",
"article": "2CDS642041R0504",
"name": "ABB Выключатель автоматический 2P, 50A, C, 4,5кА, BMS412C50",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402394",
"article": "2CDS642041R0634",
"name": "ABB Выключатель автоматический 2P, 63A, C, 4,5кА, BMS412C63",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402395",
"article": "2CDS643041R0064",
"name": "ABB Выключатель автоматический 3P, 6A, C, 4,5кА, BMS413C06",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402396",
"article": "2CDS643041R0104",
"name": "ABB Выключатель автоматический 3P, 10A, C, 4,5кА, BMS413C10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402397",
"article": "2CDS643041R0164",
"name": "ABB Выключатель автоматический 3P, 16A, C, 4,5кА, BMS413C16",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402398",
"article": "2CDS643041R0204",
"name": "ABB Выключатель автоматический 3P, 20A, C, 4,5кА, BMS413C20",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402399",
"article": "2CDS643041R0254",
"name": "ABB Выключатель автоматический 3P, 25A, C, 4,5кА, BMS413C25",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402400",
"article": "2CDS643041R0324",
"name": "ABB Выключатель автоматический 3P, 32A, C, 4,5кА, BMS413C32",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402401",
"article": "2CDS643041R0404",
"name": "ABB Выключатель автоматический 3P, 40A, C, 4,5кА, BMS413C40",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402402",
"article": "2CDS643041R0504",
"name": "ABB Выключатель автоматический 3P, 50A, C, 4,5кА, BMS413C50",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402403",
"article": "2CDS643041R0634",
"name": "ABB Выключатель автоматический 3P, 63A, C, 4,5кА, BMS413C63",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402406",
"article": "2CDS644041R0164",
"name": "ABB Выключатель автоматический 4P, 16A, C, 4,5кА, BMS414C16",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402407",
"article": "2CDS644041R0204",
"name": "ABB Выключатель автоматический 4P, 20A, C, 4,5кА, BMS414C20",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402408",
"article": "2CDS644041R0254",
"name": "ABB Выключатель автоматический 4P, 25A, C, 4,5кА, BMS414C25",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402409",
"article": "2CDS644041R0324",
"name": "ABB Выключатель автоматический 4P, 32A, C, 4,5кА, BMS414C32",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402410",
"article": "2CDS644041R0404",
"name": "ABB Выключатель автоматический 4P, 40A, C, 4,5кА, BMS414C40",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402411",
"article": "2CDS644041R0504",
"name": "ABB Выключатель автоматический 4P, 50A, C, 4,5кА, BMS414C50",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402412",
"article": "2CDS644041R0634",
"name": "ABB Выключатель автоматический 4P, 63A, C, 4,5кА, BMS414C63",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "1402413",
"article": "2CSF602041R1250",
"name": "ABB Basic M УЗО 2P, 25A, 30мA, AC, BMF41225",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "1402414",
"article": "2CSF602041R1400",
"name": "ABB Basic M УЗО 2P, 40A, 30мA, AC, BMF41240",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "1402415",
"article": "2CSF602041R1630",
"name": "ABB Basic M УЗО 2P, 63A, 30мA, AC, BMF41263",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "1402417",
"article": "2CSF602042R2400",
"name": "ABB Basic M УЗО 2P, 40A, 100мA, AC, BMF42240",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "1402418",
"article": "2CSF602042R2630",
"name": "ABB Basic M УЗО 2P, 63A, 100мA, AC, BMF42263",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "1402419",
"article": "2CSF602043R3250",
"name": "ABB Basic M УЗО 2P, 25A, 300мA, AC, BMF43225",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "1402420",
"article": "2CSF602043R3400",
"name": "ABB Basic M УЗО 2P, 40A, 300мA, AC, BMF43240",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "1402421",
"article": "2CSF602043R3630",
"name": "ABB Basic M УЗО 2P, 63A, 300мA, AC, BMF43263",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "1402422",
"article": "2CSF604041R1250",
"name": "ABB Basic M УЗО 4P, 25A, 30мA, AC, BMF41425",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "1402423",
"article": "2CSF604041R1400",
"name": "ABB Basic M УЗО 4P, 40A, 30мA, AC, BMF41440",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "1402424",
"article": "2CSF604041R1630",
"name": "ABB Basic M УЗО 4P, 63A, 30мA, AC, BMF41463",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "1402425",
"article": "2CSF604042R2250",
"name": "ABB Basic M УЗО 4P, 25A, 100мA, AC, BMF42425",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "1402426",
"article": "2CSF604042R2400",
"name": "ABB Basic M УЗО 4P, 40A, 100мA, AC, BMF42440",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "1402427",
"article": "2CSF604042R2630",
"name": "ABB Basic M УЗО 4P, 63A, 100мA, AC, BMF42463",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "1402428",
"article": "2CSF604043R3250",
"name": "ABB Basic M УЗО 4P, 25A, 300мA, AC, BMF43425",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "1402429",
"article": "2CSF604043R3400",
"name": "ABB Basic M УЗО 4P, 40A, 300мA, AC, BMF43440",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "1402430",
"article": "2CSF604043R3630",
"name": "ABB Basic M УЗО 4P, 63A, 300мA, AC, BMF43463",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "1402431",
"article": "2CSR645041R1064",
"name": "ABB Выключатель автоматический дифференциального тока, 1P+N, 6А, C, 4.5kA, 30мA, AC, BMR415C06",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000905"
},
{
"id": "1402432",
"article": "2CSR645041R1104",
"name": "ABB Выключатель автоматический дифференциального тока, 1P+N, 10А, C, 4.5kA, 30мA, AC, BMR415C10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000905"
},
{
"id": "1402434",
"article": "2CSR645041R1204",
"name": "ABB Выключатель автоматический дифференциального тока, 1P+N, 20А, C, 4.5kA, 30мA, AC, BMR415C20",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000905"
},
{
"id": "1402435",
"article": "2CSR645041R1254",
"name": "ABB Выключатель автоматический дифференциального тока, 1P+N, 25А, C, 4.5kA, 30мA, AC, BMR415C25",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000905"
},
{
"id": "1402436",
"article": "2CSR645041R1324",
"name": "ABB Выключатель автоматический дифференциального тока, 1P+N, 32А, C, 4.5kA, 30мA, AC, BMR415C32",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000905"
},
{
"id": "1402437",
"article": "2CSR645041R1404",
"name": "ABB Выключатель автоматический дифференциального тока, 1P+N, 40А, C, 4.5kA, 30мA, AC, BMR415C40",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000905"
},
{
"id": "1405402",
"article": "1SZR004002A1100",
"name": "ABB Basic E Бокс в нишу 2М белая непрозрачная дверь (без клемм)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1405403",
"article": "1SZR004002A2100",
"name": "ABB Basic E Бокс настенный 2М белая непрозрачная дверь (без клемм)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1405404",
"article": "1SZR004002A1200",
"name": "ABB Basic E Бокс в нишу 2М серая прозрачная дверь (без клемм)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1405405",
"article": "1SZR004002A2200",
"name": "ABB Basic E Бокс настенный 2М серая прозрачная дверь (без клемм)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1405408",
"article": "1SZR004002A1201",
"name": "ABB Basic E Бокс в нишу 4М серая прозрачная дверь (c клеммами)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1405409",
"article": "1SZR004002A2201",
"name": "ABB Basic E Бокс настенный 4М серая прозрачная дверь (с клеммами)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1405410",
"article": "1SZR004002A1102",
"name": "ABB Basic E Бокс в нишу 6М белая непрозрачная дверь (c клеммами)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1405411",
"article": "1SZR004002A2102",
"name": "ABB Basic E Бокс настенный 6М белая непрозрачная дверь (с клеммами)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1405412",
"article": "1SZR004002A1202",
"name": "ABB Basic E Бокс в нишу 6М серая прозрачная дверь (c клеммами)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1405413",
"article": "1SZR004002A2202",
"name": "ABB Basic E Бокс настенный 6М серая прозрачная дверь (с клеммами)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1405414",
"article": "1SZR004002A1103",
"name": "ABB Basic E Бокс в нишу 8М белая непрозрачная дверь (c клеммами)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1405415",
"article": "1SZR004002A2103",
"name": "ABB Basic E Бокс настенный 8М белая непрозрачная дверь (с клеммами)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1405416",
"article": "1SZR004002A1203",
"name": "ABB Basic E Бокс в нишу 8М серая прозрачная дверь (c клеммами)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1405417",
"article": "1SZR004002A2203",
"name": "ABB Basic E Бокс настенный 8М серая прозрачная дверь (с клеммами)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1405418",
"article": "1SZR004002A1104",
"name": "ABB Basic E Бокс в нишу 12М белая непрозрачная дверь (c клеммами)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1405419",
"article": "1SZR004002A2104",
"name": "ABB Basic E Бокс настенный 12М белая непрозрачная дверь (с клеммами)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1405420",
"article": "1SZR004002A1204",
"name": "ABB Basic E Бокс в нишу 12М серая прозрачная дверь (c клеммами)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1405421",
"article": "1SZR004002A2204",
"name": "ABB Basic E Бокс настенный 12М серая прозрачная дверь (с клеммами)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1405422",
"article": "1SZR004002A1105",
"name": "ABB Basic E Бокс в нишу 16М белая непрозрачная дверь (c клеммами)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1405423",
"article": "1SZR004002A2105",
"name": "ABB Basic E Бокс настенный 16М белая непрозрачная дверь (с клеммами)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1405424",
"article": "1SZR004002A1205",
"name": "ABB Basic E Бокс в нишу 16М серая прозрачная дверь (c клеммами)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1405425",
"article": "1SZR004002A2205",
"name": "ABB Basic E Бокс настенный 16М серая прозрачная дверь (с клеммами)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1405426",
"article": "1SZR004002A1107",
"name": "ABB Basic E Бокс в нишу 24М белая непрозрачная дверь (c клеммами)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1405427",
"article": "1SZR004002A2107",
"name": "ABB Basic E Бокс настенный 24М белая непрозрачная дверь (с клеммами)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1405428",
"article": "1SZR004002A1207",
"name": "ABB Basic E Бокс в нишу 24М серая прозрачная дверь (c клеммами)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1405429",
"article": "1SZR004002A2207",
"name": "ABB Basic E Бокс настенный 24М серая прозрачная дверь (с клеммами)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1405430",
"article": "1SZR004002A1109",
"name": "ABB Basic E Бокс в нишу 36М белая непрозрачная дверь 3 ряда (c клеммами)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1405431",
"article": "1SZR004002A2109",
"name": "ABB Basic E Бокс настенный 36М белая непрозрачная дверь (с клеммами)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1405432",
"article": "1SZR004002A1209",
"name": "ABB Basic E Бокс в нишу 36М серая прозрачная дверь 3 ряда (c клеммами)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "1405433",
"article": "1SZR004002A2209",
"name": "ABB Basic E Бокс настенный 36М серая прозрачная дверь (с клеммами)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "15868",
"article": "1SCA105413R1001",
"name": "ABB OT80F4N2 Выключатель-разъединитель до 80А 4P на DIN-рейку или монтажную плату(с резерв.ручкой)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "16134",
"article": "1SCA104884R1001",
"name": "ABB OT25FT3 Выключатель-разъединитель 3Р 25А дверного монтажа без ручки",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "16148",
"article": "2CDL210001R1060",
"name": "ABB PS1/60 Разводка шинная 1Ф. комп. 60мод.63А штырек",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000215"
},
{
"id": "16160",
"article": "2CDL210001R1012",
"name": "ABB PS1/12 Разводка шинная 1Ф комп. 12мод.63А штырек",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000215"
},
{
"id": "14699",
"article": "1SFA896211R1001",
"name": "ABB PSR16-MS116 Адаптер",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002498"
},
{
"id": "16254",
"article": "2CSL930001R1012",
"name": "ABB BS9 3/12 Разводка шинная 3Р на 12М",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000215"
},
{
"id": "16256",
"article": "2CDL240213R1012",
"name": "ABB PS4/12NA Шина к. 12мод.63А нейт. 4Ф",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000215"
},
{
"id": "16974",
"article": "2CSL910001R1012",
"name": "ABB BS9 1/12 Разводка шинная 1ф 12м для DS941 серая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000215"
},
{
"id": "17021",
"article": "1SCA022736R8840",
"name": "ABB OTS400G1L/3 Комплект клеммных крышек длинная серия (1 комплект - 3шт.)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002498"
},
{
"id": "17056",
"article": "2CDL220010R1012",
"name": "ABB PS2/12A Шина 2Ф к. 12мод.63А",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000215"
},
{
"id": "17132",
"article": "1SCA104857R1001",
"name": "ABB OT25F3 Выключатель-разъединитель 3Р 25А с ручкой управления",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "17144",
"article": "2CDL230001R1012",
"name": "ABB PS3/12 Разводка шинная 3Ф на 12М 63 А штырек",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000215"
},
{
"id": "17154",
"article": "2CDL230001R1660",
"name": "ABB PS3/60/16 Шина 3Ф. к. 60мод.80А",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000215"
},
{
"id": "16423",
"article": "2CDL210001R1057",
"name": "ABB PS1/57N Шина 1Ф. комп. 57мод.63А нейт.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000215"
},
{
"id": "16909",
"article": "1SCA022776R7890",
"name": "ABB OTS800G1L/3 Крышка клеммная длинная серия 1 комплект - 3шт.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002498"
},
{
"id": "17268",
"article": "2CDL231001R1012",
"name": "ABB PS3/12 Разводка шинная 3Р на 12М 63 А",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000215"
},
{
"id": "17276",
"article": "2CDL220001R1012",
"name": "ABB PS2/12 Разводка шинная 2Ф. комп. 12 мод.63А",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000215"
},
{
"id": "17381",
"article": "2CSL910011R1012",
"name": "ABB BS9 1/12NA Разводка шинная 1ф 12м DS941 синяя",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000215"
},
{
"id": "17391",
"article": "2CDL231001R1009",
"name": "ABB PS3/9 Шина 3Р к. 9мод.63А",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000215"
},
{
"id": "17448",
"article": "2CDL230001R1612",
"name": "ABB PS3/12/16 Разводка шинная 3Р на 12М 80 А",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000215"
},
{
"id": "17532",
"article": "1SCA022763R2700",
"name": "ABB OTV250EK Ручка для установки на OT200-250 черная",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000229"
},
{
"id": "17924",
"article": "1SCA022731R8150",
"name": "ABB OTS250G1L/3 Комплект клеммных крышек длинная серия (1 комплект - 3шт.)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002498"
},
{
"id": "18024",
"article": "1SCA105332R1001",
"name": "ABB OT63F3 Выключатель-разъединитель 3Р 63А с ручкой управления",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "18046",
"article": "1SCA104811R1001",
"name": "ABB OT16F3 Выключатель-разъединитель 3Р 16А",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "18070",
"article": "1SL0854A00",
"name": "ABB Коробка распределительная накладная с коническими сальниками 160х137х77 IP 55",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002600"
},
{
"id": "18136",
"article": "1SVR405659R0000",
"name": "ABB CR-PH Фиксатор для реле CR-P",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002586"
},
{
"id": "18243",
"article": "1SCA022767R6910",
"name": "ABB OTZC13 Комплект соед. шин для OT160-250E_C (1комплект - 3шт.)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002498"
},
{
"id": "18433",
"article": "2CDE283001R0100",
"name": "ABB E203r Рубильник 3Р 100A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "18443",
"article": "1SCA022383R2130",
"name": "ABB OTP16B3M Выключатель-разъединитель 3Р 16A, в корпусе, резьба 4хМ20",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "18470",
"article": "1SCA022497R0310",
"name": "ABB OT25M3 25А Выключатель-разъединитель 3Р 25A на DIN-рейку и монт. плату",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "18496",
"article": "2CCA703000R0001",
"name": "ABB E211-16-10 Выключатель",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "18785",
"article": "1SCA105798R1001",
"name": "ABB OT80F3 Выключатель-разъединитель 3Р 80А с ручкой управления",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "18860",
"article": "1SCA105033R1001",
"name": "ABB OT125F3 Выключатель-разъединитель 3Р 125А",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "18904",
"article": "2CDL200001R0001",
"name": "ABB Заглушка для распределительной шины PS-END",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002270"
},
{
"id": "19050",
"article": "2CPX064983R9999",
"name": "ABB Держатель клемм для B/C/G/W (ZK14)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002625"
},
{
"id": "19052",
"article": "2CDL200001R0004",
"name": "ABB Заглушки для распределительной шины PS-END 0 (1компл.=2шт.)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002270"
},
{
"id": "19153",
"article": "2CPX064982R9999",
"name": "ABB Держатель клемм для AT/U (ZK13)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002625"
},
{
"id": "19210",
"article": "2CDL200001R0002",
"name": "ABB Заглушка для распределительной шины PS-END1",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002270"
},
{
"id": "19387",
"article": "2CMA166524R1000",
"name": "ABB Вилка кабельная 32А, 3P+N+E, 380V, IP67",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000140"
},
{
"id": "19456",
"article": "2CMA166828R1000",
"name": "ABB Вилка кабельная 125А, 3P+N+E, 380V, IP67",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000140"
},
{
"id": "19470",
"article": "2CMA166764R1000",
"name": "ABB Вилка кабельная 63А, 3P+N+E, 380V, IP44",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000140"
},
{
"id": "19628",
"article": "2CPX010664R9999",
"name": "ABB TZW210 Цоколь 100x550x350 (ВxШxГ,мм)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000721"
},
{
"id": "19646",
"article": "2CPX010666R9999",
"name": "ABB TZW310 Цоколь 100x800x350 (ВxШxГ,мм)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000721"
},
{
"id": "19787",
"article": "1SVR500020R0000",
"name": "ABB CT-MFD Реле времени универсальное 24-48V DC, 24-240V AC 7",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001439"
},
{
"id": "19817",
"article": "1SCA109093R1001",
"name": "ABB OHBS11/1 Ручка управления прямого монтажа для реверсивных рубильников ОТ100..125F_С",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000229"
},
{
"id": "19870",
"article": "1SCA109094R1001",
"name": "ABB OHBS12/1 Ручка управления прямого монтажа для реверсивных рубильников ОТ16..80F_С",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000229"
},
{
"id": "19876",
"article": "1SCA109090R1001",
"name": "ABB OHBS2/1 Ручка управления прямого монтажа для рубильников OT16..125F и ОТ16-63F3C черная",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000229"
},
{
"id": "19892",
"article": "1SFA611920R8053",
"name": "ABB MA1-8053 Кожух защитный желтый, для кнопок авварийной остановки модульной серии",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002024"
},
{
"id": "20282",
"article": "1SVR550107R5100",
"name": "ABB CT-ERE Реле времени CT-ERE задержка на вкл 0,3-30 мин 24V AC/DC, 220-240V AC, 1ПК",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001439"
},
{
"id": "20417",
"article": "1SCA105023R1001",
"name": "ABB OT100FT3 Выключатель-разъединитель 3Р 100А дверного монтажа без ручки",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "20427",
"article": "1SCA104940R1001",
"name": "ABB OT40FT3 Выключатель-разъединитель 3P 40А дверного монтажа без ручки",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "20534",
"article": "1SCA108689R1001",
"name": "ABB OHBS9/1 Ручка управления прямого монтажа для рубильников ОТ63..125F черная",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000229"
},
{
"id": "20751",
"article": "2CDE283001R0125",
"name": "ABB E203r Рубильник 3P 125A рычаг крас.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "20059",
"article": "1SCA104838R1001",
"name": "ABB OT16FT3 Выключатель-разъединитель 3P 16 А дверного монтажа без ручки",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "20790",
"article": "1SDA066897R1",
"name": "ABB Tmax XT Выводы силовые для стационарного выключателя ES XT3 (комплект из 3шт.)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002019"
},
{
"id": "21050",
"article": "1SCA108688R1001",
"name": "ABB OHRS3/1 Ручка управления для OT16..125F_C красная",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000229"
},
{
"id": "21052",
"article": "1SCA108319R1001",
"name": "ABB OHBS3/1 Ручка управления прямого монтажа для рубильников OT16..125F черная",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000229"
},
{
"id": "21056",
"article": "1SCA022301R5350",
"name": "ABB YAST 1 Ручка управления черная для установки на выкл.-разъед. без переходника ОТ45..125E3C",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000229"
},
{
"id": "21066",
"article": "1SCA105060R1001",
"name": "ABB OT125FT3 Выключатель-разъединитель 3Р 125А дверного монтажа без ручки управл.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "21162",
"article": "1SCA104400R1001",
"name": "ABB YASDA35 Ручка управл. усилен. стальная для рубильн. дверного монтажа типа OT1000..2500 IP65",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000229"
},
{
"id": "21236",
"article": "1SCA104902R1001",
"name": "ABB OT40F3 Выключатель-разъединитель 3Р 40А с ручкой управления",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "21448",
"article": "2CMA166584R1000",
"name": "ABB Розетка кабельная 32А, 2P+E, 220V, IP67",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001320"
},
{
"id": "21470",
"article": "1SCA105004R1001",
"name": "ABB OT100F3 Выключатель-разъединитель 3Р 100А с ручкой управления",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "21500",
"article": "1SDA066905R1",
"name": "ABB Tmax XT Выводы силовые для стационарного выключателя FC Cu XT1 (комплект из 3шт.)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002019"
},
{
"id": "21564",
"article": "2CMA166862R1000",
"name": "ABB Розетка кабельная 63А, 3P+N+E, 380V, IP44",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001320"
},
{
"id": "21607",
"article": "1SCA108690R1001",
"name": "ABB OHRS9/1 Ручка управления прямого монтажа для рубильников OT63..125F_C красная",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000229"
},
{
"id": "21705",
"article": "2CMA166936R1000",
"name": "ABB Розетка кабельная 125А, 3P+N+E, 380V, IP67",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001320"
},
{
"id": "21717",
"article": "2CMA166618R1000",
"name": "ABB Розетка кабельная 32А, 3P+N+E, 380V, IP67",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001320"
},
{
"id": "21750",
"article": "1SCA105382R1001",
"name": "ABB OT63FT3 Выключатель-разъединитель 3P 63А дверного монтажа без ручки",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "22096",
"article": "1SVR550029R8100",
"name": "ABB CT-MFE Реле времени многофункц. (6 функций) 24-240V АС/DC(8 врем. диап-в 0,05с..100ч.) 1ПК",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001439"
},
{
"id": "22110",
"article": "1SVR550107R4100",
"name": "ABB CT-ERE Реле времени задержка на вкл 0,3-30 сек 220V AC/24V AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001439"
},
{
"id": "22326",
"article": "1SVR550107R1100",
"name": "ABB CT-ERE Реле времени задержка на вкл 0,1-10 сек 24V AC/DC, 220-240V AC, 1ПК",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001439"
},
{
"id": "22418",
"article": "1SVR550111R2100",
"name": "ABB CT-AHE Реле времени (задержка на выкл) 220-240V AC 3-300сек.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001439"
},
{
"id": "22472",
"article": "1SDA066913R1",
"name": "ABB Tmax XT Выводы силовые для стационарного выключателя FC Cu XT3 (комплект из 3шт.)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002019"
},
{
"id": "22521",
"article": "1SVR500020R1100",
"name": "ABB CT-MFD Реле времени универсальное 12-240V AC/DC 7",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001439"
},
{
"id": "22556",
"article": "1SFA611400R1001",
"name": "ABB ML1-100R Лампа красная (корпус)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000223"
},
{
"id": "22570",
"article": "1SFA611400R1002",
"name": "ABB ML1-100G Лампа зеленая (корпус)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000223"
},
{
"id": "23304",
"article": "2CMA166906R1000",
"name": "ABB Розетка кабельная 63А, 3P+N+E, 380V, IP67",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001320"
},
{
"id": "23742",
"article": "1SBL177001R1110",
"name": "ABB AF16-30-10-11 Контактор с универсальной катушкой управления 24-60BAC/20-60BDC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000066"
},
{
"id": "23950",
"article": "1SVR550871R9500",
"name": "ABB CM-PVE Реле контроля напряжения, 3ф, Umin/max L1- L2-L3 320-460В AC, 1НО контакт",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001441"
},
{
"id": "24088",
"article": "1SVR730831R1400",
"name": "ABB CM-ESS.2S Реле контроля напряжения 1Ф (3-30В, 6-60В, 30-300В, 60-600 AC/DC)240В AC,2ПК",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001438"
},
{
"id": "24090",
"article": "2CSM111310R1331",
"name": "ABB SQZ3 Реле перекоса фаз и падения напряжения",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001189"
},
{
"id": "24113",
"article": "1SVR730750R0400",
"name": "ABB CM-EFS.2S Реле контроля напряжения c реле времени, питание 24-240В AC/DC, 2ПК, винт.клеммы",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001438"
},
{
"id": "24332",
"article": "1SBN010010R1010",
"name": "ABB CA 5-10 Контакт дополнительный фронтальный 1НО для A9 - A110,N",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000041"
},
{
"id": "24388",
"article": "1SVR550870R9400",
"name": "ABB CM-PVE Реле контроля фаз 3ф с контролем N",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001441"
},
{
"id": "24413",
"article": "1SBL137001R1310",
"name": "ABB AF09-30-10-13 Контактор с универсальной катушкой управления 100-250BAC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000066"
},
{
"id": "24631",
"article": "2CDS200936R0003",
"name": "ABB S2C-H02L Контакт доп. 2НЗ для автоматов серии S200 (боковой монтаж, 0.5мод)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001286"
},
{
"id": "24637",
"article": "1SDA054911R1",
"name": "ABB Tmax Доп. Контакты (контакты 3состояния+1срабатывания) с кабелем и разъёмом для Т4-Т6",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000041"
},
{
"id": "24744",
"article": "1SFA611610R2001",
"name": "ABB MCB-10B Контактный блок 1НО для кнопочного поста",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000041"
},
{
"id": "24820",
"article": "GJL1211001R0101",
"name": "ABB В 6-30-10 24 Миниконтактор 9А (16А) 3НО сил.конт.1НО доп.конт. катушка 24V АС",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000066"
},
{
"id": "24836",
"article": "2CDS200936R0001",
"name": "ABB S2C-H11L Контакт доп. НО+НЗ для автоматов серии S200 (боковой монтаж, 0.5мод)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001286"
},
{
"id": "24854",
"article": "1SCA022353R4970",
"name": "ABB OA1G10 Контакт дополнительный для ОТ 16…800E_C, 1HO, правый",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000041"
},
{
"id": "24938",
"article": "1SVR730794R3300",
"name": "ABB CM-PVS.41S Реле контроля фаз без контр нуля,Umin/Umax=3x300-380В/420-500BAC,обрыв,чередов-е,2ПК",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001441"
},
{
"id": "22647",
"article": "1SVR500100R0000",
"name": "ABB CT-ERD Реле времени (задержка на вкл) 24-48V DC, 24-240B AC 7 1ПК",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001439"
},
{
"id": "22656",
"article": "1SVR500110R0000",
"name": "ABB CT-AHD Реле времени модульное (задержка откл.) 7 диапозонов вр.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001439"
},
{
"id": "22955",
"article": "2CCA703005R0001",
"name": "ABB E211-16-20 Выключатель",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "23073",
"article": "1SCA022497R0490",
"name": "ABB OT40M3 40А Выключатель-разъединитель 3Р 40A на DIN-рейку и монт. плату",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "21936",
"article": "1SVR500150R0000",
"name": "ABB CT-EBD.12 Реле времени модульное (мигание с нач. импульса) 24-48B DC, 24-240B AC (7 диапазонов)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001439"
},
{
"id": "22046",
"article": "1SDA066889R1",
"name": "ABB Tmax XT Выводы силовые для стационарного выключателя ES XT1 (комплект из 3шт.)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002019"
},
{
"id": "25231",
"article": "2CCA703151R0001",
"name": "ABB E215-16-11C Кнопка без подсветки красная на DIN-рейку",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001546"
},
{
"id": "25282",
"article": "1SBN010140R1122",
"name": "ABB CA4-22M Блок контактный дополнительный (2НО+2НЗ) для контакторов AF09…AF38",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000041"
},
{
"id": "25444",
"article": "2CCA703152R0001",
"name": "ABB E215-16-11D Кнопка без подсветки зеленая на DIN-рейку",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001546"
},
{
"id": "25503",
"article": "1SBN010010R1001",
"name": "ABB CA 5-01 Контакт дополнительный фронтальный 1НЗ для A9 - A110,N",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000041"
},
{
"id": "25521",
"article": "2CDS200922R0001",
"name": "ABB S2C-S/H6R Контакт доп./сигн. для автоматов серии S200 (боковой монтаж, 0.5мод)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001286"
},
{
"id": "25928",
"article": "GJL1211001R8100",
"name": "ABB В 6-30-10 230 Миниконтактор 9А (16А) 3НО сил.конт.1НО доп.конт. катушка 230V АС",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000066"
},
{
"id": "25957",
"article": "GJL1201330R0002",
"name": "ABB CAF 6-11E Контакт дополнительный фронтальный 1НО+1НЗ для В6, В7",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000041"
},
{
"id": "26143",
"article": "1SFA611610R1002",
"name": "ABB MCB-20 Контактный блок двойной 2НО",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000041"
},
{
"id": "26149",
"article": "1SBN010120R1011",
"name": "ABB CAL4-11 Контакт 1НО, 1НЗ боковой для контакторов AF09-AF38 и NF",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000041"
},
{
"id": "26157",
"article": "1SAM201903R1001",
"name": "ABB Контакты дополнительные SK1-11 (1НО+1НЗ) боковые сигнальные для автоматических выключателей MS116, MS132, MS132-T, MO132, MS165, MO165",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000041"
},
{
"id": "26346",
"article": "GJL1211201R8000",
"name": "ABB В 6-40-00 220 Миниконтактор 9A(16А)4НО сил.конт. катушка 220V",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000066"
},
{
"id": "26359",
"article": "1SCA022379R8100",
"name": "ABB OA2G11 Контакт дополнительный для ОТ16-125 Е_C, 1HO+1HЗ, слева и справа",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000041"
},
{
"id": "26437",
"article": "1SAM201901R1001",
"name": "ABB Контакты дополнительные HKF1-11 (1НО+1НЗ) фронтальные для автоматических выключателей MS116, MS132, MS132-T, MO132, MS165, MO165",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000041"
},
{
"id": "26733",
"article": "1SFA611610R1010",
"name": "ABB MCB-01 Контактный блок 1НЗ",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000041"
},
{
"id": "26826",
"article": "1SFN035700R1000",
"name": "ABB VM 750H Блокировка реверсивная для контакторов АF400 - AF750",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001044"
},
{
"id": "26840",
"article": "1SBN010110R1001",
"name": "ABB Контакт CA4-01 (1НЗ) фронтальный для контакторов AF09…AF96 реле NF22E…NF40E",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000041"
},
{
"id": "27115",
"article": "1SBL277001R1100",
"name": "ABB AF30-30-00-11 Контактор с универсальной катушкой управления 24-60BAC/20-60BDC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000066"
},
{
"id": "27228",
"article": "GJL1201330R0006",
"name": "ABB CAF6-20E Контакт дополнительный фронтальный 2НО для B6, B7",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000041"
},
{
"id": "27279",
"article": "1SBL177001R1310",
"name": "ABB AF16-30-10-13 Контактор с универсальной катушкой управления 100-250BAC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000066"
},
{
"id": "27423",
"article": "1SBN010110R1010",
"name": "ABB CA4-10 Контакт 1НО фронтальный для контакторов AF09-AF38 и NF",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000041"
},
{
"id": "27431",
"article": "1SAM201902R1002",
"name": "ABB Контакты дополнительные HK1-20 (2НО) боковые для автоматических выключателей MS116, MS132, MS132-T, MO132, MS165, MO165",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000041"
},
{
"id": "27511",
"article": "1SBL237001R1300",
"name": "ABB AF26-30-00-13 Контактор с универсальной катушкой управления 100-250BAC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000066"
},
{
"id": "27561",
"article": "1SDA066429R1",
"name": "ABB Tmax XT Контакт срабатывания расцепителя защиты с проводами AUX-SA-C 1S51 250Vac/dc XT2-XT4 F/P",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000041"
},
{
"id": "27755",
"article": "1SL1202A00",
"name": "ABB Mistral65 бокс навесной 12М прозрачная дверь (без клемм)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "27879",
"article": "1SFA611610R1001",
"name": "ABB MCB-10 Контактный блок 1НО",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000041"
},
{
"id": "27887",
"article": "2CDS200936R0002",
"name": "ABB S2C-H20L Контакт доп. 2НО для автоматов серии S200 (боковой монтаж, 0.5мод)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001286"
},
{
"id": "28107",
"article": "1SL1204A00",
"name": "ABB Mistral65 бокс навесной 24М прозрачная дверь (без клемм)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "28345",
"article": "2CMA193451R1000",
"name": "ABB Вилка панельная прямая 32A,3P+N+E,IP44",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001319"
},
{
"id": "28407",
"article": "GJL1201317R0002",
"name": "ABB CA6-11-E Контакт дополнительный боковой 1НО+1НЗ для В6, В7",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000041"
},
{
"id": "28427",
"article": "2CMA193314R1000",
"name": "ABB Вилка для монтажа на поверхность 32А, 2Р+Е, 220В",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001319"
},
{
"id": "28446",
"article": "1SL1200A00",
"name": "ABB Mistral65 бокс навесной 4М прозрачная дверь (без клемм)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "28462",
"article": "1SL1208A00",
"name": "ABB Mistral65 бокс настенный 54М прозрачная дверь (без клемм)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "28493",
"article": "1SBN010140R1022",
"name": "ABB CA4-22E Блок контактный дополнительный (2НО+2НЗ) для контакторов AF09…AF38",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000041"
},
{
"id": "28499",
"article": "1SAM201902R1001",
"name": "ABB Контакты дополнительные HK1-11 (1НО+1НЗ) боковые для автоматических выключателей MS116, MS132, MS132-T, MO132, MS165, MO165",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000041"
},
{
"id": "28507",
"article": "1SAM401901R1001",
"name": "ABB Контакты дополнительные HK4-11 (1НО+1НЗ) фронтальные для автоматических выключателей MS49* и MO49*",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000041"
},
{
"id": "28585",
"article": "1SBL157001R1310",
"name": "ABB AF12-30-10-13 Контактор с универсальной катушкой управления 100-250BAC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000066"
},
{
"id": "27791",
"article": "1SDA066431R1",
"name": "ABB Tmax XT Контакты состояния выключателя с проводами AUX-C 1Q+1SY 250Vac/dc XT1..XT4 F/P",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000041"
},
{
"id": "27811",
"article": "1SBL237201R1300",
"name": "ABB AF26-40-00-13 Контактор с универсальной катушкой управления 100-250BAC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000066"
},
{
"id": "28313",
"article": "1SL1201A00",
"name": "ABB Mistral65 бокс навесной 8М прозрачная дверь (без клемм)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000214"
},
{
"id": "28759",
"article": "1SBL137001R1110",
"name": "ABB AF09-30-10-11 Контактор с универсальной катушкой управления 24-60BAC/20-60BDC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000066"
},
{
"id": "28969",
"article": "1SBL157001R1301",
"name": "ABB AF12-30-01-13 Контактор с универсальной катушкой управления 100-250BAC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000066"
},
{
"id": "29085",
"article": "1SBL137501R1300",
"name": "ABB AF09-22-00-13 Контактор с универсальной катушкой управления 100-250BAC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000066"
},
{
"id": "29173",
"article": "1SFA611601R1100",
"name": "ABB MCBH5-00 Монтажная колодка на 5 блоков",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001020"
},
{
"id": "29175",
"article": "1SFA611605R1100",
"name": "ABB MCBH-00 Монтажная колодка на 3 блока",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001020"
},
{
"id": "29528",
"article": "2CMA193106R1000",
"name": "ABB Розетка для монтажа на поверхность 16 А, 3P+E, 380V, IP44",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001321"
},
{
"id": "29530",
"article": "2CMA193130R1000",
"name": "ABB Розетка для монтажа на поверхность 32А, 3P+E, 380V, IP44",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001321"
},
{
"id": "29568",
"article": "2CMA193139R1000",
"name": "ABB Розетка для монтажа на поверхность 32 А, 3P+N+E, 380V, IP44",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001321"
},
{
"id": "29572",
"article": "2CMA193115R1000",
"name": "ABB Розетка для монтажа на поверхность 16 А, 3P+N+E, 380V, IP44",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001321"
},
{
"id": "29576",
"article": "2CMA167189R1000",
"name": "ABB Розетка для монтажа на поверхность 32 А, 3P+N+E, 380V, IP67",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001321"
},
{
"id": "29577",
"article": "2CMA167484R1000",
"name": "ABB Розетка для монтажа на поверхность 63A, 3P+N+E, IP44",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001321"
},
{
"id": "29654",
"article": "1SBL277001R1300",
"name": "ABB AF30-30-00-13 Контактор с универсальной катушкой управления 100-250BAC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000066"
},
{
"id": "29866",
"article": "GJL1311201R8000",
"name": "ABB В 7-40-00 220 Миниконтактор 12A(20А)4НО сил.конт. катушка 220V AC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000066"
},
{
"id": "29907",
"article": "2CDS200912R0001",
"name": "ABB S2C-H6R Контакт доп. для автоматов серии S200 (0.5мод)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001286"
},
{
"id": "29931",
"article": "1SBL177001R1301",
"name": "ABB AF16-30-01-13 Контактор с универсальной катушкой управления 100-250BAC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000066"
},
{
"id": "29936",
"article": "1SBL137001R1301",
"name": "ABB AF09-30-01-13 Контактор с универсальной катушкой управления 100-250BAC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000066"
},
{
"id": "29998",
"article": "1SVR730884R3300",
"name": "ABB CM-MPS.41S Реле контроля, без контр нуля, Umin/Umax=3х300-380В/420- 500BAC, 2ПК, винт.клеммы",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001441"
},
{
"id": "30000",
"article": "1SVR730824R9300",
"name": "ABB CM-PFS.S Реле контроля напряж-я 3Ф (контроль обрыва и чередов-я фаз)3x200-500В AC,2ПК",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001441"
},
{
"id": "30049",
"article": "1SVR730885R3300",
"name": "ABB CM-MPS.21S Реле контроля, с контр нуля, Umin/Umax=3х180-220В/240-280BAC, 2ПК, винт.клеммы",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001441"
},
{
"id": "30419",
"article": "2CMA193122R1000",
"name": "ABB Розетка для монтажа на поверхность 32A, 2P+E, 220, IP44",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001321"
},
{
"id": "30427",
"article": "2CMA167264R1000",
"name": "ABB Розетка для монтажа на поверхность 125А, 3P+N+E, 380V, IP67",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001321"
},
{
"id": "30570",
"article": "2CMA193331R1000",
"name": "ABB Вилка для монтажа на поверхность 32A,3P+N+E,IP44",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001319"
},
{
"id": "30679",
"article": "1SBL297001R1300",
"name": "ABB AF38-30-00-13 Контактор с универсальной катушкой управления 100-250BAC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000066"
},
{
"id": "30858",
"article": "1SVR550824R9100",
"name": "ABB CM-PFE Реле контроля чередования фаз (напряжение питания/контрол я 3x208-440В) 1ПК",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001441"
},
{
"id": "30411",
"article": "2CMA193098R1000",
"name": "ABB Розетка для монтажа на поверхность 16A, 2P+E, 220V, IP44",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001321"
},
{
"id": "31317",
"article": "1SFA611811R1000",
"name": "ABB MEP-1-0 Корпус кнопочного поста на 1 элемент пластиковый",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000200"
},
{
"id": "31329",
"article": "1SFA611814R1000",
"name": "ABB MEP4-0 Корпус кнопочного поста на 4 элемента пластиковый",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000200"
},
{
"id": "31569",
"article": "1SVR405601R4000",
"name": "ABB CR-P012DC2 Промежуточное реле 12V 8A 2ПК (DC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001437"
},
{
"id": "31576",
"article": "1SVR405613R1100",
"name": "ABB CR-M024DC4L Промежуточное реле 24V 6A 4ПК (DC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001437"
},
{
"id": "31448",
"article": "1SVR550801R9300",
"name": "ABB CM-MSE Реле защиты двигателя 220-240В AC, 1К",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002568"
},
{
"id": "31635",
"article": "1SVR405613R1000",
"name": "ABB CR-M024DC4 Промежуточное реле 24V 6A 4ПК (DC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001437"
},
{
"id": "31727",
"article": "1SVR405601R1000",
"name": "ABB CR-P024DC2 Промежуточное реле 24V 8А 2ПК(DC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001437"
},
{
"id": "31741",
"article": "1SVR405600R1000",
"name": "ABB CR-P024DC1 Промежуточное реле 24V 16A 1ПК (DC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001437"
},
{
"id": "32103",
"article": "1SCA105008R1001",
"name": "ABB OT100F3C Выключатель-разъединитель реверсивный 3Р 100А без ручки управления",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "32165",
"article": "1SCA105037R1001",
"name": "ABB OT125F3C Выключатель-разъединитель реверсивный 3Р 125А без ручки управления",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "32185",
"article": "1SVR405611R3000",
"name": "ABB CR-M230AC2 Промежуточное реле 230V 12A 2ПК (AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001437"
},
{
"id": "32203",
"article": "1SVR405613R0000",
"name": "ABB CR-M024AC4 Промежуточное реле 24V 6A 4ПК (AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001437"
},
{
"id": "32347",
"article": "1SVR405651R2100",
"name": "ABB CR-M3LS Цоколь для реле CR-M 3ПК",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001456"
},
{
"id": "32370",
"article": "2CCA703026R0001",
"name": "ABB E214-25-101 Выключатель",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "32378",
"article": "2CDS271001R0164",
"name": "ABB Выключатель автоматический 1-полюсной S201M C16",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "32402",
"article": "1SVR405601R3000",
"name": "ABB CR-P230AC2 Промежуточное реле 230V 8А 2ПК(AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001437"
},
{
"id": "32413",
"article": "1SVR405613R4000",
"name": "ABB CR-M012DC4 Промежуточное реле 12V 6A 4ПК (DC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001437"
},
{
"id": "32425",
"article": "1SCA104913R1001",
"name": "ABB OT40F3С Выключатель-разъединитель реверсивный 3Р 40А с ручкой управления",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "32449",
"article": "1SVR405650R1000",
"name": "ABB CR-PSS Цоколь (стандартный) для реле CR-P",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001456"
},
{
"id": "32455",
"article": "1SVR405651R1100",
"name": "ABB CR-M2LS Цоколь для реле CR-M 2ПК",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001456"
},
{
"id": "32459",
"article": "1SVR405651R3000",
"name": "ABB CR-M4SS Цоколь (стандартный) для реле CR-M 2/4ПК",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001456"
},
{
"id": "32465",
"article": "1SVR405650R0000",
"name": "ABB CR-PLS Цоколь для реле CR-P с доп. изоляцией",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001456"
},
{
"id": "32498",
"article": "1SVR405601R0000",
"name": "ABB CR-P024AC2 Промежуточное реле 24V 8A 2ПК (AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001437"
},
{
"id": "32537",
"article": "1SFA611813R1000",
"name": "ABB MEP-3-0 Корпус кнопочного поста на 3 элемента пластиковый",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000200"
},
{
"id": "32573",
"article": "2CCA703031R0001",
"name": "ABB E214-25-202 Выключатель",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "32584",
"article": "2CCA703025R0001",
"name": "ABB E214-16-101 Выключатель",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "32586",
"article": "2CCA703030R0001",
"name": "ABB E214-16-202 Выключатель",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001545"
},
{
"id": "32600",
"article": "1SCA105019R1001",
"name": "ABB OT100F4C Выключатель-разъединитель реверсивный 4Р 100А без ручки,на DIN-рейку или монтаж. плату",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "32602",
"article": "1SCA104863R1001",
"name": "ABB OT25F3С Выключатель-разъединитель реверсивный 3Р 25А с ручкой управления",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "32621",
"article": "2CDS283001R0634",
"name": "ABB Выключатель автоматический 3-полюсный S203P C63",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "32673",
"article": "2CSM110000R0701",
"name": "ABB M1173 Розетка щитовая 2Р+N 16A",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001663"
},
{
"id": "32678",
"article": "1SVR405612R3000",
"name": "ABB CR-M230AC3 Промежуточное реле 230V 10A 3ПК (AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001437"
},
{
"id": "32704",
"article": "1SCA022042R6110",
"name": "ABB OXP12X535 535мм Переходник для ручки управления рубильниками типа OT315..800 / ОETL1000..3150",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000916"
},
{
"id": "32740",
"article": "GJL1211901R8010",
"name": "ABB VB6-30-01 Миниконтактор реверсивный 9A (400В AC3) 3НО сил.конт.1НЗ доп.конт. катушка 230V АС",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000010"
},
{
"id": "32777",
"article": "1SCA022042R6370",
"name": "ABB OXP6X290 Переходник для ручки для ОТ125-160, ОТ160-250",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000916"
},
{
"id": "32787",
"article": "1SCA022056R6030",
"name": "ABB OXP6X430 Переходник для ОТ 200...250",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000916"
},
{
"id": "32789",
"article": "1SCA022042R5810",
"name": "ABB OXP12X325 Переходник для OT315..800 / ОETL1000..3150",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000916"
},
{
"id": "32800",
"article": "1SCA105338R1001",
"name": "ABB OT63F3C Выключатель-разъединитель реверс 3P 63А, без ручки управления",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "32891",
"article": "1SCA022325R6980",
"name": "ABB OXP12X250 Переходник для ручки упр. 12mm длинной 250mm для OT/OETL",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000916"
},
{
"id": "32009",
"article": "1SVR405613R3000",
"name": "ABB CR-M230AC4 Реле 230V AC 4ПК(6A)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001437"
},
{
"id": "32949",
"article": "1SCA101661R1001",
"name": "ABB OXS6X330 Переходник 330мм для ручек управления рубильниками типа ОТ16..125F",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000916"
},
{
"id": "32951",
"article": "1SCA022042R5990",
"name": "ABB ОХP12X395 Переходник для ручки для OETL 400...3150",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000916"
},
{
"id": "33051",
"article": "1SCA104816R1001",
"name": "ABB OT16F3С Выключатель-разъединитель реверсивный 3Р 16А с ручкой управления",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "33055",
"article": "1SCA104934R1001",
"name": "ABB OT40F4C Выключатель-разъединитель реверсивный 4P 40A на DIN-рейку или монтажную плату",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "33069",
"article": "1SCA022042R6020",
"name": "ABB ОХP12X465 Переходник для ручки управления рубильниками типа OT315..800 / ОETL1000..3150",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000916"
},
{
"id": "33071",
"article": "1SCA101660R1001",
"name": "ABB OXS6X250 Переходник 250мм для ручки управления рубильниками типа ОТ16..125F",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000916"
},
{
"id": "33075",
"article": "1SCA108225R1001",
"name": "ABB Переходник OXP6X265",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000916"
},
{
"id": "33116",
"article": "1SVR405651R3100",
"name": "ABB CR-M4LS Цоколь для реле 4 ПК",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001456"
},
{
"id": "33173",
"article": "1SVR405613R3100",
"name": "ABB CR-M230AC4L Промежуточное реле 230V 6A 4ПК (AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001437"
},
{
"id": "33294",
"article": "1SVR405600R3000",
"name": "ABB CR-P230AC1 Промежуточное реле 230V 16A 1ПК (AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001437"
},
{
"id": "33323",
"article": "1SCA108226R1001",
"name": "ABB OXP6X400 Переходник 400мм для ручки управления рубильниками типа ОТ16..125F",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000916"
},
{
"id": "33605",
"article": "2CDS251001R0135",
"name": "ABB Выключатель автоматический 1-полюсный S201 B13",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "33794",
"article": "2CCS883001R0504",
"name": "ABB Выключатель автоматический 3 полюс. S803C C50",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "33911",
"article": "2CDS251001R0205",
"name": "ABB Выключатель автоматический 1-полюсный S201 B20",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "33969",
"article": "2CDS251001R0325",
"name": "ABB Выключатель автоматический 1-полюсный S201 B32",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "34037",
"article": "2CDS254001R0165",
"name": "ABB Выключатель автоматический 4-полюсный S204 B16",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "34081",
"article": "2CDS251001R0251",
"name": "ABB Выключатель автоматический 1-полюсной S201 D25",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "34176",
"article": "1SCA105402R1001",
"name": "ABB OT80F3C Выключатель-разъединитель реверсивный 3Р 80А без ручки управления",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "34229",
"article": "1SFA897110R7000",
"name": "ABB PSE142-600-70 Софтстартер 75кВт 600В 142А с функц. защиты двигателя",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000640"
},
{
"id": "34233",
"article": "1SFA897105R7000",
"name": "ABB PSE45-600-70 Софтстартер 22кВт 600В 45А с функц. защиты двигателя",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000640"
},
{
"id": "34238",
"article": "1SFA897107R7000",
"name": "ABB PSE72-600-70 Софтстартер 37кВт 600В 72А с функц. защиты двигателя",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000640"
},
{
"id": "34624",
"article": "2CDS254001R0324",
"name": "ABB Выключатель автоматический 4-полюсной S204 C32",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "34701",
"article": "1SFA896106R7000",
"name": "ABB PSR-12-600-70 Софтстартер 5,5 kW 400V 12A пуска эл.дв.(240-100V, AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000640"
},
{
"id": "34724",
"article": "2CDS251001R0044",
"name": "ABB Выключатель автоматический 1-полюсной S201 C4",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "34797",
"article": "1SFA897103R7000",
"name": "ABB PSE30-600-70 Софтстартер 15кВт 600В 30А с функц. защиты двигателя",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000640"
},
{
"id": "34819",
"article": "2CDS254001R0164",
"name": "ABB Выключатель автоматический 4-полюсной S204 C16",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "34895",
"article": "1SFA896112R7000",
"name": "ABB PSR60-600-70 Софтстартер 30 kW 400V 60A",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000640"
},
{
"id": "34897",
"article": "1SFA897111R7000",
"name": "ABB PSE170-600-70 Софтстартер 90кВт 600В 170А с функц. защиты двигателя",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000640"
},
{
"id": "34913",
"article": "1SFA619101R1312",
"name": "ABB CP2-13G-10 Кнопка с подсветкой зеленая 220В AC/DC с плоской клавишей с фиксацией 1НО",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001028"
},
{
"id": "34976",
"article": "1SFA896109R7000",
"name": "ABB PSR30-600-70 Софтстартер 15 kW 400V 30A пуска эл.дв.(240-100V, AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000640"
},
{
"id": "34980",
"article": "1SFA896103R7000",
"name": "ABB PSR-3-600-70 Софтстартер 1,5 kW 400V 3A пуска эл.дв.(240-100V, AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000640"
},
{
"id": "34984",
"article": "1SFA897109R7000",
"name": "ABB PSE105-600-70 Софтстартер 55кВт 600В 105А с функц. защиты двигателя",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000640"
},
{
"id": "34990",
"article": "1SFA896111R7000",
"name": "ABB PSR45-600-70 Софтстартер 22 kW 400V 45A пуска эл.дв.(100-240V, AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000640"
},
{
"id": "34994",
"article": "1SFA896110R7000",
"name": "ABB PSR37-600-70 Софтстартер 18,5 kW 400V 37A пуска эл.дв.(100-240V, AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000640"
},
{
"id": "35010",
"article": "1SFA611621R1011",
"name": "ABB Патрон MLBL-01R со встроенным светодиодом красный 24В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000204"
},
{
"id": "35100",
"article": "2CCS881001R0204",
"name": "ABB Выключатель автоматический 1 полюс. S801C C20",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "35117",
"article": "1SFA896107R7000",
"name": "ABB PSR16-600-70 Софтстартер 7,5 kW 400V 16A пуска эл.дв.(240-100V, AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000640"
},
{
"id": "34298",
"article": "1SFA896105R7000",
"name": "ABB PSR9-600-70 Софтстартер 4 kW 400V 9A пуска эл.дв.(240-100V, AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000640"
},
{
"id": "34310",
"article": "1SFA896115R7000",
"name": "ABB PSR105-600-70 Софтстартер 55кВт 400В",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000640"
},
{
"id": "34500",
"article": "1SFA896114R7000",
"name": "ABB PSR85-600-70 Софтстартер 45 kW 400V 85A",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000640"
},
{
"id": "34604",
"article": "1SFA896104R7000",
"name": "ABB PSR6-600-70 Софтстартер 3 kW 400V 6A пуска эл.дв.(240-100V, AC)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000640"
},
{
"id": "35267",
"article": "1SBN081406R1000",
"name": "ABB Адаптер BEA16/116 для соединения контакторов AX09-AX18 с автоматическими выключателями MS116 от 0,16А до 16А или MS132 от 0,16А до 1",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002498"
},
{
"id": "35298",
"article": "2CDS271001R0024",
"name": "ABB Выключатель автоматический 1-полюсной S201M C2",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "35303",
"article": "2CDS253001R0134",
"name": "ABB Выключатель автоматический 3-полюсной S203 C13",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "35359",
"article": "2CDS253001R0255",
"name": "ABB Выключатель автоматический 3-полюсный S203 B25",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "35399",
"article": "1SFA611621R1012",
"name": "ABB MLBL-01G Патрон со встроенным светодиодом зеленый 24В AC/DC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000204"
},
{
"id": "36232",
"article": "1SBN030111R1000",
"name": "ABB Блокировка электромеханическая VEM4 для контакторов AF09…AF38",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001044"
},
{
"id": "36347",
"article": "1SBN030210R1000",
"name": "ABB VE 5-2 Реверсивная блокировка для контакторов А45 - А110",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001044"
},
{
"id": "36352",
"article": "2CDS252001R0324",
"name": "ABB Выключатель автоматический 2-полюсной S202 C32",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "36461",
"article": "2CDS253001R0505",
"name": "ABB Выключатель автоматический 3-полюсный S203 B50",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "36822",
"article": "2CDS251001R0255",
"name": "ABB Выключатель автоматический 1-полюсный S201 B25",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "35771",
"article": "1SFA611621R1072",
"name": "ABB Патрон MLBL-07G со встроенным светодиодом зеленый 230В AC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000204"
},
{
"id": "37379",
"article": "2CDS200909R0002",
"name": "ABB S2C-A2 Реле дистанционного отключения для автоматов серии S200,диф.авт.DS200,110-415В (1мод)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001286"
},
{
"id": "37451",
"article": "1SDA054873R1",
"name": "ABB Tmax Реле дистан.отключения(незав. расцепитель)с кабелем, разъёмом на 220/240V для Т4-Т5-T6",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002483"
},
{
"id": "37499",
"article": "2CDS252001R0044",
"name": "ABB Выключатель автоматический 2-полюсной S202 C4",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "37510",
"article": "2CDS283001R0164",
"name": "ABB Выключатель автоматический 3-полюсный S203P C16",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "37719",
"article": "2CDS200909R0001",
"name": "ABB S2C-A1 Реле дистанционного отключения для автоматов серии S200,диф.авт.DS200,12-60В (1мод)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001286"
},
{
"id": "37723",
"article": "1SDA066317R1",
"name": "ABB Tmax XT Реле отключения (независимый расцепитель) SOR XT1..XT4 220...240 Vac-220...250 Vdc",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002483"
},
{
"id": "37734",
"article": "2CCA703403R0001",
"name": "ABB E219-E Лампа индикационная желтая 115-250В переменного тока",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001657"
},
{
"id": "37741",
"article": "2CCA703401R0001",
"name": "ABB E219-C Лампа индикационная красная 115-250В переменного тока",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001657"
},
{
"id": "37814",
"article": "2CCA703404R0001",
"name": "ABB E219-G Лампа Индикационная голубая",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001657"
},
{
"id": "37821",
"article": "2CCA703402R0001",
"name": "ABB E219-D Лампа индикационная зеленая 115-250В переменного тока",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001657"
},
{
"id": "37822",
"article": "2CCA703901R0001",
"name": "ABB E219-3D Лампа индикационная",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001657"
},
{
"id": "35732",
"article": "1SBN030105T1000",
"name": "ABB Блокировка механическая VM4 для контакторов AF09…AF38",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001044"
},
{
"id": "38023",
"article": "1SVR730841R1500",
"name": "ABB CM-SRS.22S Реле контроля тока 1Ф (0,3-1,5А, 1-5A, 3-15A) 240В AC, 2ПК, винт.клеммы",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001440"
},
{
"id": "38153",
"article": "1SAZ721201R1035",
"name": "ABB TF42-4.2 (3,10 - 4,2 A) Тепловое реле перегрузки для контакторов AF09-AF38",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000106"
},
{
"id": "38182",
"article": "1SFA616920R8121",
"name": "ABB KA1-8121 Шильдик широкий",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000621"
},
{
"id": "38470",
"article": "1SAZ721201R1040",
"name": "ABB TF42-7.6 (5,7 - 7,6 A) Тепловое реле перегрузки для контакторов AF09-AF38",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000106"
},
{
"id": "38524",
"article": "2CDS254001R0504",
"name": "ABB Выключатель автоматический 4-полюсной S204 C50",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "38535",
"article": "2CDS251001R0984",
"name": "ABB Выключатель автоматический 1-полюсной S201 C0.5",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "38621",
"article": "2CDS252001R0065",
"name": "ABB Выключатель автоматический 2-полюсный S202 B6",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "38708",
"article": "2CDS251001R0014",
"name": "ABB Выключатель автоматический 1-полюсной S201 C1",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "38736",
"article": "2CDS254001R0204",
"name": "ABB Выключатель автоматический 4-полюсной S204 C20",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "38776",
"article": "2CDS273001R0254",
"name": "ABB Выключатель автоматический 3-полюсной S203M C25",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "38794",
"article": "2CDS254001R0104",
"name": "ABB Выключатель автоматический 4-полюсной S204 C10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "38819",
"article": "2CDS251001R0101",
"name": "ABB Выключатель автоматический 1-полюсной S201 D10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "38821",
"article": "2CCA703910R0001",
"name": "ABB E219-2CD Лампа индикационная",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001657"
},
{
"id": "38887",
"article": "2CDS254001R0254",
"name": "ABB Выключатель автоматический 4-полюсной S204 C25",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "38910",
"article": "2CDS273001R0164",
"name": "ABB Выключатель автоматический 3-полюсной S203M C16",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "38944",
"article": "2CDS273001R0404",
"name": "ABB Выключатель автоматический 3-полюсной S203M C40",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "39118",
"article": "2CDS273001R0104",
"name": "ABB Выключатель автоматический 3-полюсной S203M C10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "39158",
"article": "2CDS273001R0504",
"name": "ABB Выключатель автоматический 3-полюсной S203M C50",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "39176",
"article": "2CDS252001R0405",
"name": "ABB Выключатель автоматический 2-полюсный S202 B40",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "39219",
"article": "2CDS253001R0044",
"name": "ABB Выключатель автоматический 3-полюсной S203 C4",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "39375",
"article": "1SEP201428R0001",
"name": "ABB XLP-000-6CC 100A Выключатель-разъеденитель с предохранителями на монтажную плату",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001040"
},
{
"id": "39464",
"article": "2CSM204733R1801",
"name": "ABB Рубильник с предохранителем E93N/32",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002705"
},
{
"id": "39553",
"article": "1SFA611133R1102",
"name": "ABB MPD4-11G Кнопка двойная с текстом START/STOP (зеленая/красная) зеленая линза",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000221"
},
{
"id": "39595",
"article": "1SEP101890R0002",
"name": "ABB Рубильник откидной XLP00-6BC под предохранители до 160А с кабельными клеммами",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001040"
},
{
"id": "39660",
"article": "1SFA611100R2001",
"name": "ABB MP1-20R Кнопка красная без подсветки без фикс. (корпус)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000221"
},
{
"id": "39815",
"article": "1SFA611101R2102",
"name": "ABB MP2-21G Кнопка зеленая с фикс. с подсветкой ( корпус)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000221"
},
{
"id": "39959",
"article": "1SFA611130R1108",
"name": "ABB MPD1-11С Кнопка двойная Пуск-Стоп с подсветкой прозрачная линза (корпус)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000221"
},
{
"id": "40518",
"article": "1SFA611213R2006",
"name": "ABB M3SS4-20B Переключатель (длин. ручка) черный без подсветки 3-х позиц. (корпус) с фикс.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000222"
},
{
"id": "40640",
"article": "1SFA611201R2006",
"name": "ABB M2SS2-20B Переключатель черный 2-х поз. с фиксацией (короткая ручка)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000222"
},
{
"id": "40733",
"article": "1SFA611100R2002",
"name": "ABB MP1-20G Кнопка зеленая без подсветки без фикс. (корпус)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000221"
},
{
"id": "40831",
"article": "2CDS253001R0024",
"name": "ABB Выключатель автоматический 3-полюсной S203 C2",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "40849",
"article": "1SFA611523R1001",
"name": "ABB MPET4-10R Кнопка ГРИБОК красная (только корпус) с усиленной фиксацией 40мм",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001038"
},
{
"id": "40925",
"article": "2CSM257543R1801",
"name": "ABB E 9F10 GG4 Предохранитель плавкий",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002704"
},
{
"id": "40939",
"article": "2CSM258713R1801",
"name": "ABB E 9F10 GG32 Предохранитель плавкий",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002704"
},
{
"id": "40282",
"article": "2CDS251103R0165",
"name": "ABB Выключатель автоматический 1P+N S201 B16NA",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "40292",
"article": "2CDS253001R0014",
"name": "ABB Выключатель автоматический 3-полюсной S203 C1",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "40318",
"article": "1SFA611100R2102",
"name": "ABB MP1-21G Кнопка зеленая с подсветкой без фикс. (корпус)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000221"
},
{
"id": "40364",
"article": "1SFA611210R2006",
"name": "ABB M3SS1-20B Переключатель (кор. ручка) черный без подсветки 3-х позиц. (корпус) с фикс.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000222"
},
{
"id": "40004",
"article": "2CDS251001R0504",
"name": "ABB Выключатель автоматический 1-полюсной S201 C50",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "40036",
"article": "1SFA611204R2102",
"name": "ABB M2SS5-21G Переключатель (длин. ручка) зеленый 2-х позиц. с подсветкой (корпус) с фикс.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000222"
},
{
"id": "41328",
"article": "1SFA611100R2103",
"name": "ABB MP1-21Y Кнопка желтая с подсветкой без фикс. (корпус)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000221"
},
{
"id": "41635",
"article": "1SDA066466R1",
"name": "ABB Tmax XT Привод моторный для дистанционного управления MOE XT2-XT4 220...250V ac/dc",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001030"
},
{
"id": "41641",
"article": "1SDA054897R1",
"name": "ABB MOE T4-T5 220…250V Tmax Моторный привод со взв.пруж.перем/пост",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001030"
},
{
"id": "41784",
"article": "1SFA611200R2006",
"name": "ABB M2SS1-20B Переключатель черный 2-х поз. с фиксацией (короткая ручка)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000222"
},
{
"id": "41796",
"article": "1SDA066460R1",
"name": "ABB Tmax XT Привод моторный для дистанционного управления MOD XT1-XT3 220...250V ac/dc",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001030"
},
{
"id": "42011",
"article": "1SFA611100R2101",
"name": "ABB MP1-21R Кнопка красная с подсветкой без фикс. (корпус)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000221"
},
{
"id": "42042",
"article": "1SFA611203R2006",
"name": "ABB M2SS4-20B Переключатель черный 2-х поз.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000222"
},
{
"id": "42137",
"article": "2CDS273001R0204",
"name": "ABB Выключатель автоматический 3-полюсной S203M C20",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "42259",
"article": "2CDS254001R0634",
"name": "ABB Выключатель автоматический 4-полюсной S204 C63",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "42296",
"article": "2CDS252001R0165",
"name": "ABB Выключатель автоматический 2-полюсный S202 B16",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "42446",
"article": "2CDS252001R0014",
"name": "ABB Выключатель автоматический 2-полюсной S202 C1",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "42516",
"article": "1SFA619210R3026",
"name": "ABB C3SS1-30B-20 Переключатель черный 3-х поз 2НО с фикс.",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001029"
},
{
"id": "42701",
"article": "1SFA611100R2006",
"name": "ABB MP1-20B Кнопка черная без подсветки без фикс. (корпус)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000221"
},
{
"id": "42758",
"article": "1SFA619550R1071",
"name": "ABB CE4T-10R-11 Кнопка аварийной остановки 1НО+1НЗ отпускание поворотом 40мм",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002034"
},
{
"id": "42768",
"article": "1SFA619550R1051",
"name": "ABB CE4T-10R-02 Кнопка аварийной остановки 2НЗ отпускание поворотом 40мм",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002034"
},
{
"id": "42809",
"article": "1SFA619551R1051",
"name": "ABB CE4P-10R-02 Кнопка аварийного останова с фиксацией 2НЗ отпускани е вытягиванием 40мм",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002034"
},
{
"id": "43124",
"article": "2CDS252001R0204",
"name": "ABB Выключатель автоматический 2-полюсной S202 C20",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "43217",
"article": "2CDS253001R0325",
"name": "ABB Выключатель автоматический 3-полюсный S203 B32",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "43304",
"article": "2CDS283001R0101",
"name": "ABB Выключатель автоматический 3-полюсный S203P D10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "43449",
"article": "2CDS251103R0065",
"name": "ABB Выключатель автоматический 1P+N S201 B6NA",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "43469",
"article": "2CDS252001R0255",
"name": "ABB Выключатель автоматический 2-полюсный S202 B25",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "43634",
"article": "2CDS252001R0034",
"name": "ABB Выключатель автоматический 2-полюсной S202 C3",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "43884",
"article": "1SFA611930R1060",
"name": "ABB MA6-1060 Держатель шильдика (кнопочные посты)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001032"
},
{
"id": "43886",
"article": "1SFA616920R8120",
"name": "ABB KA1-8120 Держатель шильдика шир. 20",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001032"
},
{
"id": "43892",
"article": "1SAM250000R1002",
"name": "ABB Выключатель автоматический MS116-0.25 50 кА с регулир. тепловой защитой 0,16A-0,25А Класс тепл. расцепит. 10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000074"
},
{
"id": "43894",
"article": "1SAM250000R1014",
"name": "ABB Выключатель автоматический MS116-25 10кА с регулир. тепловой защитой 20A-25А Класс тепл. расцепит. 10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000074"
},
{
"id": "43896",
"article": "1SAM250000R1013",
"name": "ABB Выключатель автоматический MS116-20 10кА с регулир. тепловой защитой 16A-20А Класс тепл. расцепит. 10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000074"
},
{
"id": "43900",
"article": "2CDS252001R0164",
"name": "ABB Выключатель автоматический 2-полюсной S202 C16",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "43930",
"article": "1SAM350000R1014",
"name": "ABB Выключатель автоматический MS132-25 50кА с регулир. тепловой защитой 20A-25А Класс тепл. расцепит. 10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000074"
},
{
"id": "43943",
"article": "1SAM250000R1011",
"name": "ABB Выключатель автоматический MS116-16 16 кА с регулир. тепловой защитой 10A-16А Класс тепл. расцепит. 10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000074"
},
{
"id": "43961",
"article": "1SAM250000R1010",
"name": "ABB Выключатель автоматический MS116-10 50 кА с регулир. тепловой защитой 6,3A-10А Класс тепл. расцепит. 10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000074"
},
{
"id": "43967",
"article": "2CDS252001R0205",
"name": "ABB Выключатель автоматический 2-полюсный S202 B20",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "43996",
"article": "1SAM250000R1007",
"name": "ABB Выключатель автоматический MS116-2.5 50 кА с регулир. тепловой защитой 1,6A-2,5А Класс тепл. расцепит. 10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000074"
},
{
"id": "44085",
"article": "1SAM350000R1011",
"name": "ABB Выключатель автоматический MS132-16 100кА с регулир. тепловой защитой 10A-16А Класс тепл. расцепит. 10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000074"
},
{
"id": "44100",
"article": "1SAM250000R1012",
"name": "ABB Выключатель автоматический MS116-12 25 кА с регулир. тепловой защитой 8A-12А Класс тепл. расцепит. 10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000074"
},
{
"id": "44123",
"article": "2CDS253001R0061",
"name": "ABB Выключатель автоматический 3-полюсной S203 D6",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "44166",
"article": "1SAM250000R1008",
"name": "ABB Выключатель автоматический MS116-4.0 50 кА с регулир. тепловой защитой 2,5A-4,0А Класс тепл. расцепит. 10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000074"
},
{
"id": "44206",
"article": "1SAM350000R1013",
"name": "ABB Выключатель автоматический MS132-20 100кА с регулир. тепловой защитой 16A-20А Класс тепл. расцепит. 10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000074"
},
{
"id": "44208",
"article": "1SAM250000R1009",
"name": "ABB Выключатель автоматический MS116-6.3 50 кА с регулир. тепловой защитой 4A-6,3А Класс тепл. расцепит. 10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000074"
},
{
"id": "44225",
"article": "2CDS251001R0405",
"name": "ABB Выключатель автоматический 1-полюсный S201 B40",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "42831",
"article": "2CDS271001R0064",
"name": "ABB Выключатель автоматический 1-полюсной S201M C6",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "42856",
"article": "2CDS251001R0061",
"name": "ABB Выключатель автоматический 1-полюсной S201 D6",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "42870",
"article": "2CDS251001R0034",
"name": "ABB Выключатель автоматический 1-полюсной S201 C3",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "42876",
"article": "2CDS251001R0105",
"name": "ABB Выключатель автоматический 1-полюсный S201 B10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "44301",
"article": "2CDS251001R0084",
"name": "ABB Выключатель автоматический 1-полюсной S201 C8",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "44323",
"article": "1SAM350000R1015",
"name": "ABB Выключатель автоматический MS132-32 25кА с регулир. тепловой защитой 25A-32А Класс тепл. расцепит. 10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000074"
},
{
"id": "44324",
"article": "1SAM250000R1015",
"name": "ABB Выключатель автоматический MS116-32 10кА с регулир. тепловой защитой 25A-32А Класс тепл. расцепит. 10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000074"
},
{
"id": "44332",
"article": "1SAM250000R1005",
"name": "ABB Выключатель автоматический MS116-1.0 50 кА с регулир. тепловой защитой 0,63A-1,00А Класс тепл. расцепит. 10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000074"
},
{
"id": "44528",
"article": "2CDS253001R0404",
"name": "ABB Выключатель автоматический 3-полюсной S203 C40",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "44609",
"article": "2CDS252001R0984",
"name": "ABB Выключатель автоматический 2-полюсной S202 C0.5",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "44766",
"article": "2CCS883001R0324",
"name": "ABB Выключатель автоматический 3 полюс. S803C C32",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "44772",
"article": "2CDS253001R0501",
"name": "ABB Выключатель автоматический 3-полюсной S203 D50",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "44780",
"article": "2CDS271001R0104",
"name": "ABB Выключатель автоматический 1-полюсной S201M C10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "44841",
"article": "2CDS253001R0105",
"name": "ABB Выключатель автоматический 3-полюсный S203 B10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "44851",
"article": "2CDS251001R0974",
"name": "ABB Выключатель автоматический 1-полюсной S201 C1.6",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "44889",
"article": "2CDS271001R0204",
"name": "ABB Выключатель автоматический 1-полюсной S201M C20",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "44923",
"article": "1SAM350000R1009",
"name": "ABB Выключатель автоматический MS132-6.3 100кА с регулир. тепловой защитой 4A-6.3А Класс тепл. расцепит. 10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000074"
},
{
"id": "44928",
"article": "1SAM250000R1006",
"name": "ABB Выключатель автоматический MS116-1.6 50 кА с регулир. тепловой защитой 1,0A-1,6А Класс тепл. расцепит. 10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000074"
},
{
"id": "44989",
"article": "1SDA054117R1",
"name": "ABB Выключатель автоматический T4N 320 PR221DS-LS/I In=320 3p F F",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000228"
},
{
"id": "45011",
"article": "2CDS272001R0064",
"name": "ABB Выключатель автоматический 2-полюсной S202M C6",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "45102",
"article": "2CDS253001R0631",
"name": "ABB Выключатель автоматический 3-полюсной S203 D63",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "44357",
"article": "1SAM250000R1004",
"name": "ABB Выключатель автоматический MS116-0.63 50 кА с регулир. тепловой защитой 0,40A-0,63А Класс тепл. расцепит. 10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000074"
},
{
"id": "44376",
"article": "1SAM350000R1010",
"name": "ABB Выключатель автоматический MS132-10 100кА с регулир. тепловой защитой 6.3A-10А Класс тепл. расцепит. 10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000074"
},
{
"id": "44387",
"article": "1SAM250000R1003",
"name": "ABB Выключатель автоматический MS116-0.4 50 кА с регулир. тепловой защитой 0,25A-0,40А Класс тепл. расцепит. 10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000074"
},
{
"id": "44402",
"article": "2CDS251001R1165",
"name": "ABB Выключатель автоматический 1-полюсный S201 B16",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "44417",
"article": "2CDS251001R0634",
"name": "ABB Выключатель автоматический 1-полюсной S201 C63",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "44487",
"article": "2CDS283001R0324",
"name": "ABB Выключатель автоматический 3-полюсный S203P C32",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "45108",
"article": "2CDS251001R0404",
"name": "ABB Выключатель автоматический 1-полюсной S201 C40",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "45122",
"article": "1SFA611510R1101",
"name": "ABB MPMT3-11R Кнопка авар. красная ГРИБОК 40мм отпуск. поворотом с подсветкой",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001038"
},
{
"id": "45358",
"article": "2CDS253001R0205",
"name": "ABB Выключатель автоматический 3-полюсный S203 B20",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "45515",
"article": "2CCS883001R0404",
"name": "ABB Выключатель автоматический 3 полюс. S803C C40",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "45630",
"article": "2CDS253001R0161",
"name": "ABB Выключатель автоматический 3-полюсной S203 D16",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "45636",
"article": "2CDS253001R0251",
"name": "ABB Выключатель автоматический 3-полюсной S203 D25",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "45807",
"article": "2CDS253001R0104",
"name": "ABB Выключатель автоматический 3-полюсной S203 C10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "45940",
"article": "2CDS253001R0201",
"name": "ABB Выключатель автоматический 3-полюсной S203 D20",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "45942",
"article": "2CDS252001R0064",
"name": "ABB Выключатель автоматический 2-полюсной S202 C6",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "46085",
"article": "2CDS251103R0104",
"name": "ABB Выключатель автоматический 1P+N S201 C10NA",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "46409",
"article": "2CDS253001R0064",
"name": "ABB Выключатель автоматический 3-полюсной S203 C6",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "46414",
"article": "2CDS252001R0634",
"name": "ABB Выключатель автоматический 2-полюсной S202 C63",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "46675",
"article": "2CDS252001R0104",
"name": "ABB Выключатель автоматический 2-полюсной S202 C10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "46864",
"article": "2CDS271001R0044",
"name": "ABB Выключатель автоматический 1-полюсной S201M C4",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "46534",
"article": "2CDS251001R0065",
"name": "ABB Выключатель автоматический 1-полюсный S201 B6",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "46575",
"article": "2CDS252001R0325",
"name": "ABB Выключатель автоматический 2-полюсный S202 B32",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "47183",
"article": "2CDS273001R0324",
"name": "ABB Выключатель автоматический 3-полюсной S203M C32",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "47264",
"article": "2CDS251001R0134",
"name": "ABB Выключатель автоматический 1-полюсной S201 C13",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "47288",
"article": "1SDA067416R1",
"name": "ABB Выключатель автоматический XT1N 160 TMD 100-1000 3p F F",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000228"
},
{
"id": "47498",
"article": "2CDS253001R0204",
"name": "ABB Выключатель автоматический 3-полюсной S203 C20",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "47506",
"article": "2CCS883001R0254",
"name": "ABB Выключатель автоматический 3 полюс. S803C C25",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "47654",
"article": "2CDS254001R0404",
"name": "ABB Выключатель автоматический 4-полюсной S204 C40",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "47683",
"article": "2CCS881001R0164",
"name": "ABB Выключатель автоматический 1 полюс. S801C C16",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "47544",
"article": "2CDS252001R0024",
"name": "ABB Выключатель автоматический 2-полюсной S202 C2",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "47824",
"article": "2CDS252001R0105",
"name": "ABB Выключатель автоматический 2-полюсный S202 B10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "47961",
"article": "2CDS253001R0101",
"name": "ABB Выключатель автоматический 3-полюсной S203 D10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "48141",
"article": "2CDS252001R0404",
"name": "ABB Выключатель автоматический 2-полюсной S202 C40",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "48364",
"article": "1SDA067417R1",
"name": "ABB Выключатель автоматический XT1N 160 TMD 125-1250 3p F F",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000228"
},
{
"id": "48509",
"article": "2CDS251001R0201",
"name": "ABB Выключатель автоматический 1-полюсной S201 D20",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "48577",
"article": "1SDA066806R1",
"name": "ABB Выключатель автоматический XT1B 160 TMD 80-800 3p F F",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000228"
},
{
"id": "48704",
"article": "2CDS252001R0504",
"name": "ABB Выключатель автоматический 2-полюсной S202 C50",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "48959",
"article": "2CDS251001R0161",
"name": "ABB Выключатель автоматический 1-полюсной S201 D16",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "49006",
"article": "2CDS283001R0254",
"name": "ABB Выключатель автоматический 3-полюсный S203P C25",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "49010",
"article": "2CDS251103R0254",
"name": "ABB Выключатель автоматический 1P+N S201 C25NA",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "49964",
"article": "2CDS253001R0034",
"name": "ABB Выключатель автоматический 3-полюсной S203 C3",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "50069",
"article": "2CSF204101R2400",
"name": "ABB F204A УЗО 4Р 40A 100mA (A)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "50073",
"article": "2CSF202101R1250",
"name": "ABB F202A УЗО 2Р 25А 30mA (A)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "50083",
"article": "2CSF202101R1630",
"name": "ABB F202A УЗО 2Р 63А 30mA (А)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "50188",
"article": "2CSF202101R2400",
"name": "ABB F202A УЗО 2Р 40A 100mA (A)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "50190",
"article": "2CSF204201R3630",
"name": "ABB F204A УЗО 4Р 63А 300mA селективный",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "50196",
"article": "2CSF204201R2630",
"name": "ABB F204A УЗО 4Р 63А 100mA селективный",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "50268",
"article": "2CSF202401R1630",
"name": "ABB F202A УЗО 2Р 63А 30mA (A) AP-R",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "50269",
"article": "2CSF204101R1400",
"name": "ABB F204A УЗО 4Р 40А 30mA (A)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "50272",
"article": "2CSF202201R3400",
"name": "ABB F202A УЗО 2Р 40А 300mA селективный",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "50286",
"article": "2CSF202201R2400",
"name": "ABB F202 A УЗО 2мод. S-40/0,1",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "50318",
"article": "2CSF204101R1250",
"name": "ABB F204A УЗО 4Р 25А 30mA (A)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "50320",
"article": "2CSF204201R2400",
"name": "ABB F204A УЗО 4Р 40A 100mA селективный",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "50328",
"article": "2CSF202101R0160",
"name": "ABB F202A УЗО 2Р 16А 10mA (A)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "50362",
"article": "2CSF202201R3630",
"name": "ABB F202A УЗО 2Р 63А 300mA селективный",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "50407",
"article": "2CSF204101R1630",
"name": "ABB F204A УЗО 4Р 63А 30mA (А)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "49314",
"article": "2CDS253001R0405",
"name": "ABB Выключатель автоматический 3-полюсный S203 B40",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "49354",
"article": "2CDS253001R0504",
"name": "ABB Выключатель автоматический 3-полюсной S203 C50",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "49439",
"article": "2CDS251001R0505",
"name": "ABB Выключатель автоматический 1-полюсный S201 B50",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "49508",
"article": "2CDS253001R0401",
"name": "ABB Выключатель автоматический 3-полюсной S203 D40",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "49520",
"article": "2CDS253001R0165",
"name": "ABB Выключатель автоматический 3-полюсный S203 B16",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "49554",
"article": "2CDS253001R0635",
"name": "ABB Выключатель автоматический 3-полюсный S203 B63",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "49092",
"article": "2CDS252001R0505",
"name": "ABB Выключатель автоматический 2-полюсный S202 B50",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "49240",
"article": "2CCS881001R0104",
"name": "ABB Выключатель автоматический 1 полюс. S801C C10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "49653",
"article": "2CDS253001R0321",
"name": "ABB Выключатель автоматический 3-полюсной S203 D32",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "50499",
"article": "2CSF204201R3900",
"name": "ABB F204A УЗО 4Р 100А 300mA селективный",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "50512",
"article": "2CSF202201R2630",
"name": "ABB F202A УЗО 2Р 63А 100mA селективный",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "50569",
"article": "2CSF204201R3400",
"name": "ABB F204A УЗО 4Р 40А 300mA селективный",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "50574",
"article": "2CSF202401R1400",
"name": "ABB F202A УЗО 2Р 40А 30mA (A) AP-R",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "50579",
"article": "2CSF204101R3630",
"name": "ABB F204A УЗО 4Р 63А 300mA (A)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "84021",
"article": "1SCA022712R1010",
"name": "ABB OT200E03 Выключатель-разъединитель 3Р 200A,без ручки и переходника",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "84057",
"article": "1SCA022775R3670",
"name": "ABB OT630E03 Выключатель-разъединитель 3Р 630A,без ручки и переходника",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "50893",
"article": "2CDS283001R0204",
"name": "ABB Выключатель автоматический 3-полюсный S203P C20",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "50979",
"article": "2CSR255180R1104",
"name": "ABB Выключатель автоматический дифференциального тока DS201 C10 A30",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000905"
},
{
"id": "51198",
"article": "2CSF202101R1400",
"name": "ABB F202A УЗО 2Р 40А 30mA (А)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "51200",
"article": "2CSF202401R1250",
"name": "ABB Выключатель диф.тока 2мод. F202 A-25/0,03 AP-R",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000003"
},
{
"id": "49742",
"article": "2CDS251103R0164",
"name": "ABB Выключатель автоматический 1P+N S201 C16NA",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "51527",
"article": "2CSR255180R0105",
"name": "ABB Выключатель автоматический дифференциального тока DS201 B10 A10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000905"
},
{
"id": "51675",
"article": "2CSR255180R0164",
"name": "ABB Выключатель автоматический дифференциального тока DS201 C16 A10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000905"
},
{
"id": "51789",
"article": "2CSR255180R1404",
"name": "ABB Выключатель автоматический дифференциального тока DS201 C40 A30",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000905"
},
{
"id": "52607",
"article": "2CSR255180R1165",
"name": "ABB Выключатель автоматический дифференциального тока DS201 B16 A30",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000905"
},
{
"id": "52787",
"article": "2CSR255180R1254",
"name": "ABB Выключатель автоматический дифференциального тока DS201 C25 A30",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000905"
},
{
"id": "52830",
"article": "2CSR255180R0104",
"name": "ABB Выключатель автоматический дифференциального тока DS201 C10 A10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000905"
},
{
"id": "52900",
"article": "2CSR245180R0164",
"name": "ABB Выключатель автоматический дифференциального тока DS201 L C16 A10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000905"
},
{
"id": "52902",
"article": "2CSR255180R1324",
"name": "ABB Выключатель автоматический дифференциального тока DS201 C32 A30",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000905"
},
{
"id": "53023",
"article": "1SDA066809R1",
"name": "ABB Выключатель автоматический XT1B 160 TMD 160-1600 3p F F",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000228"
},
{
"id": "53053",
"article": "2CSR255180R1105",
"name": "ABB Выключатель автоматический дифференциального тока DS201 B10 A30",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000905"
},
{
"id": "53191",
"article": "2CSR255180R0165",
"name": "ABB Выключатель автоматический дифференциального тока DS201 B16 A10",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000905"
},
{
"id": "53234",
"article": "1SDA066803R1",
"name": "ABB Выключатель автоматический XT1B 160 TMD 40-450 3p F F",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000228"
},
{
"id": "53242",
"article": "2CSR255180R1164",
"name": "ABB Выключатель автоматический дифференциального тока DS201 C16 A30",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000905"
},
{
"id": "52148",
"article": "2CSR245180R1164",
"name": "ABB Выключатель автоматический дифференциального тока DS201 L C16 A30",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000905"
},
{
"id": "53656",
"article": "1SDA054849R1",
"name": "ABB Tmax Комплект преобр. в выкатной T5 630 3p (Imax = 570 A)",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002049"
},
{
"id": "53900",
"article": "1SDA066802R1",
"name": "ABB Выключатель автоматический XT1B 160 TMD 32-450 3p F F",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000228"
},
{
"id": "54043",
"article": "1SDA054924R1",
"name": "ABB Tmax Переходник для втычн./выкатн. исполнения Т4-Т5 10-ти контактный",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002498"
},
{
"id": "54150",
"article": "1SDA066808R1",
"name": "ABB Выключатель автоматический XT1B 160 TMD 125-1250 3p F F",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000228"
},
{
"id": "54240",
"article": "2CSM110000R1011",
"name": "ABB Вольтметр цифровой 600V на DIN-рейку",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002306"
},
{
"id": "54365",
"article": "1SDA054317R1",
"name": "ABB Выключатель автоматический T5N 400 PR221DS-LS/I In=400 3p F F",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000228"
},
{
"id": "56100",
"article": "1SDA067396R1",
"name": "ABB Выключатель автоматический XT1C 160 TMD 80-800 3p F F",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000228"
},
{
"id": "56150",
"article": "1SDA067415R1",
"name": "ABB Выключатель автоматический XT1N 160 TMD 80-800 3p F F",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000228"
},
{
"id": "55935",
"article": "1SDA066807R1",
"name": "ABB Выключатель автоматический XT1B 160 TMD 100-1000 3p F F",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000228"
},
{
"id": "56263",
"article": "1SDA067057R1",
"name": "ABB Выключатель автоматический XT2N 160 Ekip LS/I In=100A 3p F F",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000228"
},
{
"id": "56737",
"article": "1SDA066801R1",
"name": "ABB Выключатель автоматический XT1B 160 TMD 25-450 3p F F",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000228"
},
{
"id": "56559",
"article": "1SDA068058R1",
"name": "ABB Выключатель автоматический XT3N 250 TMD 200-2000 3p F F",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000228"
},
{
"id": "57607",
"article": "1SDA067056R1",
"name": "ABB Выключатель автоматический XT2N 160 Ekip LS/I In=63A 3p F F",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000228"
},
{
"id": "58235",
"article": "1SDA054396R1",
"name": "ABB Выключатель автоматический T5N 630 PR221DS-LS/I In=630 3p F F",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000228"
},
{
"id": "64375",
"article": "1SDA054768R1",
"name": "ABB Tmax Фиксированная часть выкатного выключателя T5 W 630 FP EF 3P",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC002043"
},
{
"id": "59411",
"article": "2CDE100000R1601",
"name": "ABB Е233-230 Реле часов работы",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC001641"
},
{
"id": "59944",
"article": "1SDA067414R1",
"name": "ABB Выключатель автоматический XT1N 160 TMD 63-630 3p F F",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000228"
},
{
"id": "60431",
"article": "1SDA066805R1",
"name": "ABB Выключатель автоматический XT1B 160 TMD 63-630 3p F F",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000228"
},
{
"id": "61560",
"article": "1SDA067418R1",
"name": "ABB Выключатель автоматический XT1N 160 TMD 160-1600 3p F F",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000228"
},
{
"id": "74028",
"article": "1SCA022709R8610",
"name": "ABB OT250E03 Выключатель-разъединитель 3Р 250A,без ручки и переходника",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "74033",
"article": "1SCA022727R7960",
"name": "ABB OT400E03 Выключатель-разъединитель 3Р 400A,без ручки и переходника",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "74038",
"article": "1SCA022727R5910",
"name": "ABB OT315E03 Выключатель-разъединитель 3Р 315A,без ручки и переходника",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000216"
},
{
"id": "76592",
"article": "2CDS272061R0044",
"name": "ABB Выключатель автоматический 2-полюсной S202M C4UC",
"brand": "ABB",
"brandId": "1",
"categoryid": "EC000042"
},
{
"id": "76960",
"article": "MTN515525",
"name": "SE Merten SM M-Plan Бел Актив Рамка 5-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "77271",
"article": "A9E18321",
"name": "SE Acti 9 iIL Индикатор световой зеленый 230В",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001657"
},
{
"id": "77369",
"article": "13948",
"name": "SE Kaedra Замок для бокса",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000327"
},
{
"id": "77689",
"article": "MTN404403",
"name": "SE Merten SM M-Elegance Стекло Черное кальцит Рамка 4-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "77703",
"article": "A9F74204",
"name": "SE Acti 9 iC60N Автоматический выключатель 2P 4A (C)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "77743",
"article": "MTN536400",
"name": "SE Merten Механизм Терморегулятора с переключающим контактом, 10А 230В",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC010927"
},
{
"id": "77757",
"article": "MTN4054-3471",
"name": "SE Merten SM M-Elegance Венге Рамка 4-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "78030",
"article": "A9F75210",
"name": "SE Acti 9 iC60N Автоматический выключатель 2P 10A (D)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "78065",
"article": "MTN411544",
"name": "SE Merten SD Беж Клавиша 2-ая жалюзийная (термопласт)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000011"
},
{
"id": "78078",
"article": "MTN2311-0460",
"name": "SE Merten SM Алюминий Розетка с/з с крышкой безвинт. зажим",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000125"
},
{
"id": "78225",
"article": "LV429329",
"name": "SE Compact NSX Комплект разделителей полюсов (NSX100/250) (компл.=6шт.)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC002035"
},
{
"id": "78334",
"article": "MTN486314",
"name": "SE Merten SM M-Plan Антрацит Рамка 3-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "78401",
"article": "LADN22",
"name": "SE Contactors D Telemecanique Контакт дополнительный фронтальный 2НО+2НЗ для контакторов cерии D",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000041"
},
{
"id": "78407",
"article": "GV2ME22",
"name": "SE GV2 Автоматический выключатель с комбинированным расцепителем (20-25А)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000074"
},
{
"id": "78470",
"article": "MTN3420-0344",
"name": "SE Merten SM Беж глянец Клавиша 2-ая с подсветкой",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000011"
},
{
"id": "78813",
"article": "XB7EV07MP",
"name": "SE XB7 Лампа сигнальная прозрачная 22мм 230В",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000272"
},
{
"id": "78821",
"article": "MTN483519",
"name": "SE Merten SD Antik Бел Рамка 5-ая (термопласт)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "79080",
"article": "A9S60120",
"name": "SE Acti 9 iSW Выключатель нагрузки 1P 20A",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001545"
},
{
"id": "79127",
"article": "MTN403405",
"name": "SE Merten SM M-Elegance Титан Рамка 4-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "79178",
"article": "A9S60432",
"name": "SE Acti 9 iSW Выключатель нагрузки 4P 32A",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001545"
},
{
"id": "79338",
"article": "A9C20732",
"name": "SE Acti 9 iCT25A Контактор модульный 2НО 230/240В АС 50Гц",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001653"
},
{
"id": "79371",
"article": "A9F89316",
"name": "SE Acti 9 iC60H Автоматический выключатель 3P 16A (C)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "79620",
"article": "A9F79325",
"name": "SE Acti 9 iC60N Автоматический выключатель 3P 25A (C)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "79832",
"article": "NSYCR150WU2C",
"name": "SE Sarel Нагреватель 150ВТ 110-230В",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000737"
},
{
"id": "80030",
"article": "XB4BVM4",
"name": "SE XB4 Лампа сигнальная красная светодиодная 230В",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000272"
},
{
"id": "80569",
"article": "MTN412519",
"name": "SE Merten SD Бел Клавиша 2-ая (термопласт)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000011"
},
{
"id": "80701",
"article": "MTN4053-3473",
"name": "SE Merten SM M-Elegance Орех Рамка 3-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "80739",
"article": "LC1D18P7",
"name": "SE Contactors D Telemecanique Контактор 3Р 380В, 18A, 3НО сил.конт. 1НО+1НЗ доп.конт. катушка 230В АС",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000066"
},
{
"id": "80750",
"article": "08871",
"name": "SE Prisma Plus G Интерф. сальн. панель с вырезом под FL21 для шкафа",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000211"
},
{
"id": "81100",
"article": "MTN2301-4044",
"name": "SE Merten SD Бежевый Розетка 16А с з/к б/шт",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000125"
},
{
"id": "81216",
"article": "RXM2AB2P7",
"name": "SE Промежуточное реле Мини 2ПК,светодиод, 230V AC",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001437"
},
{
"id": "81446",
"article": "MTN465706",
"name": "SE Merten Механизм розетки компьютерной 2-ая наклонной RJ45 кат.6",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001264"
},
{
"id": "81622",
"article": "29450",
"name": "SE Compact NSX Контакт сигнализации (OF)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000041"
},
{
"id": "81623",
"article": "DF101",
"name": "SE Разъединитель-предохранитель 32A.1P.10Х38",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC002705"
},
{
"id": "81714",
"article": "A9F75310",
"name": "SE Acti 9 iC60N Автоматический выключатель 3P 10A (D)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "81738",
"article": "LC1D32M7",
"name": "SE Contactors D Telemecanique Контактор 3Р 380В, 32A, 3НО сил.конт. 1НО+1НЗ доп.конт. катушка 220В АС",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000066"
},
{
"id": "81758",
"article": "MTN2310-4019",
"name": "SE Merten SD Белый Розетка 16А с з/к c шт. c крышкой",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000125"
},
{
"id": "81835",
"article": "MTN515119",
"name": "SE Merten SM M-Plan Бел глянец Рамка 1-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "81923",
"article": "GV2ME16",
"name": "SE GV2 Автоматический выключатель с комбинированным расцепителем (9-14А)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000074"
},
{
"id": "82025",
"article": "A9F79125",
"name": "SE Acti 9 iC60N Автоматический выключатель 1P 25A (C)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "82077",
"article": "13934",
"name": "SE Kaedra Соединительный комплект для щитов",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000441"
},
{
"id": "82139",
"article": "MTN2301-0414",
"name": "SE Merten SM Антрацит Розетка с/з безвинт.зажим",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000125"
},
{
"id": "82235",
"article": "NSYTRV42",
"name": "SE Клеммник винтовой проходной, сечением провода 4мм2, 2 точки подключения, C",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000897"
},
{
"id": "82268",
"article": "13977",
"name": "SE Kaedra Мини бокс 1 ряд 6 модулей IP65 без клемм",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000214"
},
{
"id": "82467",
"article": "XB7NA35",
"name": "SE XB7 Кнопка 22мм зеленая с возвратом НО + НЗ",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001028"
},
{
"id": "82521",
"article": "A9F79432",
"name": "SE Acti 9 iC60N Автоматический выключатель 4P 32A (C)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "82562",
"article": "A9F79350",
"name": "SE Acti 9 iC60N Автоматический выключатель 3P 50A (C)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "82734",
"article": "MTN3117-0000",
"name": "SE Merten Механизм QuickFlex Переключателя перекрёстного безвинт.зажим",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001590"
},
{
"id": "82742",
"article": "RXZE2M114",
"name": "SE Колодка простая, 4 перекидных комбинировыанных контакта, 30мм",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001456"
},
{
"id": "82773",
"article": "13976",
"name": "SE Kaedra Мини бокс 1 ряд 4 модуля IP65 без клемм",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000214"
},
{
"id": "83257",
"article": "MTN4020-3215",
"name": "SE Merten SM M-Elegance Стекло Махагон Рамка 2-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "83864",
"article": "MTN391944",
"name": "SE Merten SD Беж Заглушка (термопласт)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000018"
},
{
"id": "83875",
"article": "MTN535860",
"name": "SE Merten SM Алюминий Накладка регулятора тёплого пола",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000011"
},
{
"id": "74266",
"article": "A9F79240",
"name": "SE Acti 9 iC60N Автоматический выключатель 2P 40A (C)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "74396",
"article": "A9F79425",
"name": "SE Acti 9 iC60N Автоматический выключатель 4P 25A (C)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "74606",
"article": "GV2ME05",
"name": "SE GV2 Автоматический выключатель с комбинированным расцепителем (0,63-1А)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000074"
},
{
"id": "74751",
"article": "13983",
"name": "SE Kaedra Бокс 2 ряда 24 модуля IP65",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000214"
},
{
"id": "75080",
"article": "MTN435514",
"name": "SE Merten SM Антрацит Клавиша 2-ая жалюзийная",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000011"
},
{
"id": "75141",
"article": "MTN3155-0000",
"name": "SE Merten Механизм QuickFlex Выключателя 2-клавишного кнопочного, 2НО контакта",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000029"
},
{
"id": "75186",
"article": "LV431541",
"name": "SE Compact NSX Мотор-редуктор для T250 на 220/240V 50/60Гц (NSX250)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001030"
},
{
"id": "75203",
"article": "GV2ME32",
"name": "SE GV2 Автоматический выключатель с комбинированным расцепителем (24-32А)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000074"
},
{
"id": "75234",
"article": "MTN432119",
"name": "SE Merten SM Бел глянец Клавиша 1-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000011"
},
{
"id": "75238",
"article": "A9F79220",
"name": "SE Acti 9 iC60N Автоматический выключатель 2P 20A (C)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "75331",
"article": "A9C22715",
"name": "SE Acti 9 iCT16A Контактор модульный 1НО 1НЗ 230/240В АС",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001653"
},
{
"id": "75488",
"article": "SR3B261BD",
"name": "SE Zelio Logic Интеллектуальное реле 26 I/O 24V (DC)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001417"
},
{
"id": "75527",
"article": "XCKP2145P16",
"name": "SE Выключатель концевой пластиковый НО+НЗ ввод iso16 (XCKP2145P16)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000030"
},
{
"id": "75634",
"article": "MTN3755-0000",
"name": "SE Merten Механизм QuickFlex Выключателя жалюзийного кнопочного",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000044"
},
{
"id": "75802",
"article": "MTN431060",
"name": "SE Merten SM Алюминий Клавиша 1-ая с подсветкой",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000011"
},
{
"id": "75824",
"article": "MTN4053-3470",
"name": "SE Merten SM M-Elegance Бук Рамка 3-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "75858",
"article": "MTN483421",
"name": "SE Merten SD Antik Золото (Блестящая латунь) Рамка 4-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "75881",
"article": "MTN515419",
"name": "SE Merten SM M-Plan Бел глянец Рамка 4-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "75984",
"article": "MTN5133-0000",
"name": "SE Merten Механизм Светорегулятора поворотного 40-600Вт/ВА для л/н и обм тр-ров",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000025"
},
{
"id": "76033",
"article": "MTN2310-4044",
"name": "SE Merten SD Бежевый Розетка 16А с з/к c шт. c крышкой",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000125"
},
{
"id": "76161",
"article": "XB4BD21",
"name": "SE XB4 Переключатель с фиксацией 1-2 чёрный 1НО IP66",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001029"
},
{
"id": "61956",
"article": "LV429770",
"name": "SE Compact NSX 100F Автоматический выключатель Micrologic 2.2 100A 3P 3T",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000228"
},
{
"id": "62076",
"article": "MTN466099",
"name": "SE Merten Механизм розетки TV-SAT оконечной",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000439"
},
{
"id": "62148",
"article": "RXM4AB1P7",
"name": "SE Промежуточное реле Мини 4ПК, 230V AC",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001437"
},
{
"id": "62351",
"article": "MTN515244",
"name": "SE Merten SM M-Plan Беж глянец Рамка 2-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "62377",
"article": "XB4BD53",
"name": "SE XB4 Переключатель 1-0-2 с возвратом в 0 черный 2НО",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001029"
},
{
"id": "62483",
"article": "A9F79263",
"name": "SE Acti 9 iC60N Автоматический выключатель 2P 63A (C)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "62635",
"article": "SR2USB01",
"name": "SE Zelio Logic Кабель для соединения с ПК через порт USB",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000237"
},
{
"id": "60526",
"article": "RSZL300",
"name": "SE Маркировка для колодок RSZE",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC002586"
},
{
"id": "60579",
"article": "03804",
"name": "SE Prisma Plus G Панель передняя непрозрачная 4 модуля",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000456"
},
{
"id": "60591",
"article": "XB5AA31",
"name": "SE XB5 Кнопка с возвратом зеленая 1НО",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001028"
},
{
"id": "60899",
"article": "MTN391619",
"name": "SE Merten SM Бел глянец Заглушка",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000018"
},
{
"id": "60950",
"article": "ABL8MEM12020",
"name": "SE Блок питания модульный 12В 2A",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC002540"
},
{
"id": "59983",
"article": "MTN297960",
"name": "SE Merten SM Алюминий Накладка аудиорозетки 2-ой (мех М46701х)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000018"
},
{
"id": "60139",
"article": "A9C20731",
"name": "SE Acti 9 iCT25A Контактор модульный 1НО 230/240В АС 50Гц",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001653"
},
{
"id": "64472",
"article": "MTN2314-0319",
"name": "SE Merten SM Бел глянец Розетка с/з с защитными шторками с крышкой,с упл.кольц, IP44,безвинт. зажим",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000125"
},
{
"id": "64554",
"article": "MTN3615-0000",
"name": "SE Merten Механизм QuickFlex Выключателя 2-клавишного сх.1+1, 16AX",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001590"
},
{
"id": "64559",
"article": "MTN296019",
"name": "SE Merten SM Бел глянец Накладка аудиорозетки 2-ой (мех М46701х)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000018"
},
{
"id": "64599",
"article": "MTN515544",
"name": "SE Merten SM M-Plan Беж глянец Рамка 5-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "64698",
"article": "MTN4052-3471",
"name": "SE Merten SM M-Elegance Венге Рамка 2-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "64791",
"article": "NSYTRV22",
"name": "SE Клеммник винтовой проходной, сечением провода 2,5мм2, 2 точки подключения",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000897"
},
{
"id": "64935",
"article": "A9C20834",
"name": "SE Acti 9 iCT25A Контактор модульный 4НО 220/240В АС 50Гц",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001653"
},
{
"id": "65269",
"article": "A9F79163",
"name": "SE Acti 9 iC60N Автоматический выключатель 1P 63A (C)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "65280",
"article": "13984",
"name": "SE Kaedra Бокс 2 ряда 36 модулей IP65",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000214"
},
{
"id": "65317",
"article": "RSB2A080M7",
"name": "SE Реле интерфейсное,8А,2ПК,220В AC",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001437"
},
{
"id": "65345",
"article": "MTN2301-0344",
"name": "SE Merten SM Беж глянец Розетка с/з безвинт.зажим",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000125"
},
{
"id": "65350",
"article": "A9F75250",
"name": "SE Acti 9 iC60N Автоматический выключатель 2P 50A (D)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "65400",
"article": "ZBE101",
"name": "SE XB5 Блок контактный 1НО 3А 240В для кнопок и переключателей XB4, ХВ5",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000041"
},
{
"id": "65506",
"article": "MTN404104",
"name": "SE Merten SM M-Elegance Стекло Зеленое кальцит Рамка 1-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "65956",
"article": "RXZE2M114M",
"name": "SE Колодка простая, 4 перекидных комбинировыанных контакта, 27мм",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001456"
},
{
"id": "66003",
"article": "MTN5138-0000",
"name": "SE Merten Механизм Светорегулятора поворотного универсальный 20-420ВТ",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000025"
},
{
"id": "66118",
"article": "NSYCAG291LPF",
"name": "SE Sarel Выпускная решетка 291х291 цвет RAL7035",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000331"
},
{
"id": "66333",
"article": "MTN483119",
"name": "SE Merten SD Antik Бел Рамка 1-ая (термопласт)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "66348",
"article": "MTN2301-4019",
"name": "SE Merten SD Белый Розетка 16А с з/к б/шт",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000125"
},
{
"id": "66469",
"article": "MTN297514",
"name": "SE Merten SM Антрацит Накладка розетки TV-FM/TV-FM-SAT",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000018"
},
{
"id": "66671",
"article": "GV2ME10",
"name": "SE GV2 Автоматический выключатель с комбинированным расцепителем (4-6,3А)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000074"
},
{
"id": "66926",
"article": "NSYCRN44200P",
"name": "SE Spacial CRN Шкаф с платой 400x400x200",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000261"
},
{
"id": "67112",
"article": "MTN483319",
"name": "SE Merten SD Antik Бел Рамка 3-ая (термопласт)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "67122",
"article": "MTN432144",
"name": "SE Merten SM Беж глянец Клавиша 1-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000011"
},
{
"id": "67142",
"article": "GVAE11",
"name": "SE GV2 Блок контактный НО+НЗ",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000041"
},
{
"id": "67653",
"article": "MTN4020-3260",
"name": "SE Merten SM M-Elegance Стекло Серебро Рамка 2-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "67674",
"article": "MTN403305",
"name": "SE Merten SM M-Elegance Титан Рамка 3-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "67795",
"article": "MTN297560",
"name": "SE Merten SM Алюминий Накладка розетки TV-FM/TV-FM-SAT",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000018"
},
{
"id": "67854",
"article": "MTN2301-0325",
"name": "SE Merten SM Бел Актив Розетка с/з безвинт. зажим",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000125"
},
{
"id": "68254",
"article": "XB4BA31",
"name": "SE XB4 Кнопка с возвратом зеленая 1НО",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001028"
},
{
"id": "68275",
"article": "A9F78125",
"name": "SE Acti 9 iC60N Автоматический выключатель 1P 25A (B)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "68492",
"article": "LV431563",
"name": "SE Compact NSX Расширители полюсов 3P (NSX250)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC002019"
},
{
"id": "68511",
"article": "XB7NA45",
"name": "SE XB7 Кнопка 22мм красная с возвратом НО + НЗ",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001028"
},
{
"id": "68676",
"article": "MTN412544",
"name": "SE Merten SD Беж Клавиша 2-ая (термопласт)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000011"
},
{
"id": "68707",
"article": "LC1D18M7",
"name": "SE Contactors D Telemecanique Контактор 3Р 380В, 18A, 3НО сил.конт. 1НО+1НЗ доп.конт. катушка 220В АС",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000066"
},
{
"id": "68856",
"article": "MTN2300-4044",
"name": "SE Merten SD Бежевый Розетка 16А с з/к с/ шт",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000125"
},
{
"id": "68863",
"article": "NSYCVF560M230PF",
"name": "SE Sarel Вентилятор 526 м3/час, 230В, RAL7035",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000320"
},
{
"id": "68868",
"article": "A9A26478",
"name": "SE Acti 9 iMX Расцепитель 12-24В АС",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001286"
},
{
"id": "68942",
"article": "MTN486514",
"name": "SE Merten SM M-Plan Антрацит Рамка 5-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "69345",
"article": "A9S60232",
"name": "SE Acti 9 iSW Выключатель нагрузки 2P 32A",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001545"
},
{
"id": "69486",
"article": "PRA90047",
"name": "SE Pragma Клеммы 6х4мм.кв. (1 компл. = 10 шт.)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000275"
},
{
"id": "69499",
"article": "MTN483344",
"name": "SE Merten SD Antik Беж Рамка 3-ая (термопласт)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "69710",
"article": "A9XPCM04",
"name": "SE Acti 9 Переходники изолированные A9X (компл.=4шт.)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC002498"
},
{
"id": "69813",
"article": "A9C20838",
"name": "SE Acti 9 iCT25A Контактор модульный 2НО 2НЗ 220/240В АС 50Гц",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001653"
},
{
"id": "69847",
"article": "ZBP0",
"name": "SE XB5 Колпачок защитный прозрачный для круглых кнопок",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC002040"
},
{
"id": "70013",
"article": "MTN2300-0414",
"name": "SE Merten SM Антрацит Розетка с/з с защитными шторками безвинт. зажим",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000125"
},
{
"id": "70051",
"article": "A9C30814",
"name": "SE Acti 9 iTL Реле импульсное 16A 4НО 230В АС 50-60Гц 110В DC",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000188"
},
{
"id": "70105",
"article": "A9F79106",
"name": "SE Acti 9 iC60N Автоматический выключатель 1P 6A (C)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "70106",
"article": "XB5AL73415",
"name": "SE XB5 Кнопка двойная с возвратом",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001028"
},
{
"id": "70219",
"article": "XB7NA25",
"name": "SE XB7 Кнопка 22мм черная с возвратом НО + НЗ",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001028"
},
{
"id": "70333",
"article": "XB7NH31",
"name": "SE XB7 Кнопка 22мм зеленая с фиксацией 1НО",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001028"
},
{
"id": "70500",
"article": "A9F73102",
"name": "SE Acti 9 iC60N Автоматический выключатель 1P 2A (B)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "70529",
"article": "RXZE2S108M",
"name": "SE Колодка простая, 2 перекидных разделительных контакта",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001456"
},
{
"id": "70542",
"article": "XB4BW34B5",
"name": "SE XB4 Кнопка с возвратом красная с подсветкой 24В 1НО+1НЗ",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001028"
},
{
"id": "70549",
"article": "XB7EV06MP",
"name": "SE XB7 Лампа сигнальная синяя светодиодная 230В",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000272"
},
{
"id": "70559",
"article": "MTN2311-0414",
"name": "SE Merten SM Антрацит Розетка с/з с крышкой безвинт. зажим",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000125"
},
{
"id": "70952",
"article": "A9F75140",
"name": "SE Acti 9 iC60N Автоматический выключатель 1P 40A (D)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "71165",
"article": "03805",
"name": "SE Prisma Plus G Панель передняя непрозрачная 5 модулей",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000456"
},
{
"id": "71169",
"article": "SR3B261FU",
"name": "SE Zelio Logic Интелектуальное реле 26 I/O 240V (AC)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001417"
},
{
"id": "71272",
"article": "MTN3420-0414",
"name": "SE Merten SM Антрацит Клавиша 2-ая с подсветкой",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000011"
},
{
"id": "71370",
"article": "A9F79250",
"name": "SE Acti 9 iC60N Автоматический выключатель 2P 50A (C)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "71500",
"article": "MTN483244",
"name": "SE Merten SD Antik Беж Рамка 2-ая (термопласт)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "71578",
"article": "NSYCAG104X95LM",
"name": "SE Sarel Жалюзи вентиляционные 70мм 120х120",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000331"
},
{
"id": "71765",
"article": "SR2B201FU",
"name": "SE Zelio Logic Интеллектуальное реле компактное 20 I/O 240V (AC)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001417"
},
{
"id": "71785",
"article": "MTN5250-0325",
"name": "SE Merten SM Бел Актив Накладка светорегулятора поворотного",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000011"
},
{
"id": "71913",
"article": "MTN291844",
"name": "SE Merten SD Беж Накладка розетки ТЛФ/комп 1-ой наклонной (термопласт)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000018"
},
{
"id": "72193",
"article": "MTN5135-0000",
"name": "SE Merten Механизм Светорегулятора поворотного 60-1000ВА для л/н и обм тр-ров",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000025"
},
{
"id": "72213",
"article": "ISM50800",
"name": "SE OptiLine 45 Крышка для суппорта ISM50809 (2х45)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC002420"
},
{
"id": "72301",
"article": "A9C22711",
"name": "SE Acti 9 iCT16A Контактор модульный 1НО 230/240В АС 50Гц",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001653"
},
{
"id": "72324",
"article": "XB5KSM",
"name": "SE XB5 Звонок 85 дБ 230В IP40",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001026"
},
{
"id": "72627",
"article": "MTN312619",
"name": "SE Merten SM Бел глянец Клавиша 3-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000011"
},
{
"id": "73047",
"article": "GV3P40",
"name": "SE GV3 Автоматический выключатель с регулир. тепловой защитой (3040А)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000074"
},
{
"id": "73049",
"article": "MTN4051-3470",
"name": "SE Merten SM M-Elegance Бук Рамка 1-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "73249",
"article": "13986",
"name": "SE Kaedra Бокс 3 рядa 54 модуля IP65",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000214"
},
{
"id": "73265",
"article": "MTN403260",
"name": "SE Merten SM M-Elegance Платина серебро Рамка 2-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "73271",
"article": "MTN478119",
"name": "SE Merten SM M-Smart Бел глянец Рамка 1-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "73282",
"article": "MTN483321",
"name": "SE Merten SD Antik Золото (Блестящая латунь) Рамка 3-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "73653",
"article": "XB7EV04BP",
"name": "SE XB7 Лампа сигнальная красная светодиодная 24В АС/DC",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000272"
},
{
"id": "73727",
"article": "LV429289",
"name": "SE Compact NSX Комплект цоколя 3P для NSX100/250",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC002049"
},
{
"id": "73783",
"article": "A9C22712",
"name": "SE Acti 9 iCT16A Контактор модульный 2НО 220/240В АС",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001653"
},
{
"id": "73911",
"article": "MTN536302",
"name": "SE Merten Механизм Терморегулятора-выключателя 10A 230В",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC010927"
},
{
"id": "73990",
"article": "GV2ME21",
"name": "SE GV2 Автоматический выключатель с комбинированным расцепителем (17-23А)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000074"
},
{
"id": "58305",
"article": "A9F79340",
"name": "SE Acti 9 iC60N Автоматический выключатель 3P 40A (C)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "58381",
"article": "MTN537544",
"name": "SE Merten SD Беж Накладка регулятора тёплого пола (термопласт)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000011"
},
{
"id": "58454",
"article": "LV432538",
"name": "SE Compact NSX Комплект цоколя 3P для NSX400/630",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC002049"
},
{
"id": "58631",
"article": "MTN292619",
"name": "SE Merten SD Бел Накладка розетки ТЛФ/комп 2-ой наклонной (термопласт)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000018"
},
{
"id": "59104",
"article": "ABL6TS16U",
"name": "SE Трансформатор 230-400В 1x230В 160ВA",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC002486"
},
{
"id": "59106",
"article": "A9F74202",
"name": "SE Acti 9 iC60N Автоматический выключатель 2P 2A (C)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "59179",
"article": "MTN296244",
"name": "SE Merten SM Беж глянец Накладка розетки ТЛФ/комп 1-ой наклонной",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000018"
},
{
"id": "59303",
"article": "XB4BW33B5",
"name": "SE XB4 Кнопка с возвратом зеленая с подсветкой 24В 1НО+1НЗ",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001028"
},
{
"id": "57805",
"article": "MTN403160",
"name": "SE Merten SM M-Elegance Платина серебро Рамка 1-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "56702",
"article": "MTN466919",
"name": "SE Merten Полярно-Бел Механизм АудиоРозетки 1-ой, пружинные клеммы",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000018"
},
{
"id": "56740",
"article": "NSYCAG125LPF",
"name": "SE Sarel Выпускная решетка 125х125 цвет RAL7035",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000331"
},
{
"id": "56843",
"article": "MTN404103",
"name": "SE Merten SM M-Elegance Стекло Черное кальцит Рамка 1-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "56929",
"article": "13979",
"name": "SE Kaedra Мини бокс 1 ряд 12 модулей IP65 без клемм",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000214"
},
{
"id": "56497",
"article": "MTN4054-3470",
"name": "SE Merten SM M-Elegance Бук Рамка 4-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "55936",
"article": "MTN432419",
"name": "SE Merten SM Бел глянец Клавиша 2-ая жалюзийная",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000011"
},
{
"id": "56231",
"article": "MTN433514",
"name": "SE Merten SM Антрацит Клавиша 2-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000011"
},
{
"id": "56246",
"article": "XB7NA42",
"name": "SE XB7 Кнопка 22мм красная с возвратом 1НЗ",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001028"
},
{
"id": "54436",
"article": "NSYCRN65200P",
"name": "SE Spacial CRN Шкаф с платой 600x500x200",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000261"
},
{
"id": "54780",
"article": "XB7EV05BP",
"name": "SE XB7 Лампа сигнальная желтая светодиодная 24В АС/DC",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000272"
},
{
"id": "54896",
"article": "XB5KSB",
"name": "SE XB5 Звонок 85 дБ 24В IP40",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001026"
},
{
"id": "54944",
"article": "GV2ME20",
"name": "SE GV2 Автоматический выключатель с комбинированным расцепителем (13-18А)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000074"
},
{
"id": "55454",
"article": "PRA90051",
"name": "SE Pragma Держатель клеммников к щиту Pragma",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC002287"
},
{
"id": "55652",
"article": "A9F78210",
"name": "SE Acti 9 iC60N Автоматический выключатель 2P 10A (B)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "55882",
"article": "LC1D25P7",
"name": "SE Contactors D Telemecanique Контактор 3Р 380В, 25A, 3НО сил.конт. 1НО+1НЗ доп.конт. катушка 230В АС",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000066"
},
{
"id": "53926",
"article": "MTN412144",
"name": "SE Merten SD Беж Клавиша 1-ая (термопласт)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000011"
},
{
"id": "53752",
"article": "ABL6TS16B",
"name": "SE Трансформатор 230-400/24В 160ВА",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC002486"
},
{
"id": "52274",
"article": "A9F74104",
"name": "SE Acti 9 iC60N Автоматический выключатель 1P 4A (C)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "52360",
"article": "LADN11",
"name": "SE Contactors D Telemecanique Контакт дополнительный фронтальный 1НО+1НЗ для контакторов cерии D",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000041"
},
{
"id": "52469",
"article": "MTN296144",
"name": "SE Merten SM Беж глянец Накладка розетки ТЛФ/комп 2-ой наклонной",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000018"
},
{
"id": "52585",
"article": "MTN297844",
"name": "SE Merten SD Беж Накладка для TAE-розетки, моно-/стерео аудио розетки (термопласт)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000018"
},
{
"id": "53351",
"article": "MTN534819",
"name": "SE Merten SM Бел глянец Накладка термостата комнатного (Мех.536302,536304)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000011"
},
{
"id": "53357",
"article": "LC1D09M7",
"name": "SE Contactors D Telemecanique Контактор 3Р 380В, 9A, 3НО сил.конт. 1НО+1НЗ доп.конт. катушка 220В АС",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000066"
},
{
"id": "53539",
"article": "GV2ME07",
"name": "SE GV2 Автоматический выключатель с комбинированным расцепителем (1,6-2,5А)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000074"
},
{
"id": "53559",
"article": "A9XPH324",
"name": "SE Acti 9 Шинка гребенчатая 3P (L1L2L3…) 24 мод.18мм 100А разрезаемая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000215"
},
{
"id": "53573",
"article": "A9F74304",
"name": "SE Acti 9 iC60N Автоматический выключатель 3P 4A (C)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "51817",
"article": "A9A26924",
"name": "SE Acti 9 iOF Контакт состояния",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001286"
},
{
"id": "51837",
"article": "NSYCVF38M230PF",
"name": "SE Sarel Вентилятор 30м3/ч 230В, цвет RAL7035",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000320"
},
{
"id": "51999",
"article": "A9N18367",
"name": "SE Acti 9 C120N Автоматический выключатель 3P 100A (C)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "52129",
"article": "A9F74302",
"name": "SE Acti 9 iC60N Автоматический выключатель 3P 2A (C)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "51606",
"article": "MTN483419",
"name": "SE Merten SD Antik Бел Рамка 4-ая (термопласт)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "49959",
"article": "03203",
"name": "SE Prisma Plus G Панель передняя с вырезом, 3 мод.",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000456"
},
{
"id": "51257",
"article": "MTN432544",
"name": "SE Merten SM Беж глянец Клавиша 2-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000011"
},
{
"id": "51262",
"article": "MTN2310-0319",
"name": "SE Merten SM Бел глянец Розетка с/з с защитными шторками с крышкой безвинт. зажим",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000125"
},
{
"id": "51284",
"article": "ATV12H075M2",
"name": "SE Altivar 12 Частотный преобразователь 0,75кВт 240В 1Ф",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001857"
},
{
"id": "51471",
"article": "A9E18070",
"name": "SE Acti 9 iSSW Переключатель 2P 1 переключающий контакт",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001545"
},
{
"id": "51520",
"article": "LV432641",
"name": "SE Compact NSX Мотор-редуктор для T630 на 220/240V AC (NSX630)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001030"
},
{
"id": "84258",
"article": "XB5AVM4",
"name": "SE XB5 Лампа сигнальная красная светодиодная 230В",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000272"
},
{
"id": "84456",
"article": "MTN404519",
"name": "SE Merten SM M-Elegance Стекло Белое Рамка 5-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "84735",
"article": "XB5AA42",
"name": "SE XB5 Кнопка с возвратом красная 1НЗ",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001028"
},
{
"id": "85035",
"article": "A9C30811",
"name": "SE Acti 9 iTL Реле импульсное 16A 1НО 230В АС 110В DC",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000188"
},
{
"id": "85105",
"article": "RSZR215",
"name": "SE Скоба-держатель пластиковая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC002586"
},
{
"id": "85167",
"article": "ZBE102",
"name": "SE XB5 Блок контактный 1НЗ 3А 240В для кнопок и переключателей XB4, ХВ5",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000041"
},
{
"id": "85359",
"article": "A9F78116",
"name": "SE Acti 9 iC60N Автоматический выключатель 1P 16A (B)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "85370",
"article": "MTN404319",
"name": "SE Merten SM M-Elegance Стекло Белое Рамка 3-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "85461",
"article": "MTN403460",
"name": "SE Merten SM M-Elegance Платина серебро Рамка 4-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "85677",
"article": "RXM4AB2P7",
"name": "SE Промежуточное реле Мини 4ПК,светодиод, слаботочные контакты, 230V AC",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001437"
},
{
"id": "85874",
"article": "03172",
"name": "SE Prisma Plus G Плата фигурная перфорированная 300mm",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000213"
},
{
"id": "85921",
"article": "XBKH70000002M",
"name": "SE Таймер суммирующий электромех.",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001641"
},
{
"id": "86310",
"article": "NSYCCOTHO",
"name": "SE Sarel Термостат с НО контактом",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC002014"
},
{
"id": "86324",
"article": "GV3P65",
"name": "SE GV3 Автоматический выключатель с регулир. тепловой защитой (48-65А)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000074"
},
{
"id": "86328",
"article": "MTN4052-3473",
"name": "SE Merten SM M-Elegance Орех Рамка 2-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "86411",
"article": "MTN297914",
"name": "SE Merten SM Антрацит Накладка аудиорозетки 2-ой (мех М46701х)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000018"
},
{
"id": "87049",
"article": "RM17TG20",
"name": "SE Telemecanique Реле контроля чередования обрыва фаз 2CO",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001441"
},
{
"id": "87274",
"article": "08867",
"name": "SE Prisma Pack Комплект держателей хомутов (2шт)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC002620"
},
{
"id": "87784",
"article": "04264",
"name": "SE Prisma Plus G Комплект креплений для вертик. кабелей, серия g(12шт)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC002620"
},
{
"id": "87945",
"article": "MTN432044",
"name": "SE Merten SM Беж глянец Клавиша 1-ая, IP44",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000011"
},
{
"id": "87997",
"article": "MTN3128-0000",
"name": "SE Merten Механизм QuickFlex Переключатель + Переключатель кнопочный",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001590"
},
{
"id": "88125",
"article": "A9C22813",
"name": "SE Acti 9 iCT16A Контактор модульный 3НО 220/240В АС",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001653"
},
{
"id": "88956",
"article": "A9F75363",
"name": "SE Acti 9 iC60N Автоматический выключатель 3P 63A (D)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "89649",
"article": "RXM4AB1BD",
"name": "SE Промежуточное реле Мини 4ПК 24V DC",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001437"
},
{
"id": "89722",
"article": "XB5AVB4",
"name": "SE XB5 Лампа сигнальная красная светодиодная 24В",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000272"
},
{
"id": "89792",
"article": "A9S60132",
"name": "SE Acti 9 iSW Выключатель нагрузки 1P 32A",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001545"
},
{
"id": "89951",
"article": "LRD07",
"name": "SE Contactors D Telemecanique Тепловое реле 1,6-2,5А",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000106"
},
{
"id": "90525",
"article": "A9C22722",
"name": "SE Acti 9 Контактор модульный iCT20A 2НО 230/240В АС 50Гц",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001653"
},
{
"id": "91030",
"article": "A9F89116",
"name": "SE Acti 9 iC60H Автоматический выключатель 1P 16A (C)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "91198",
"article": "MTN515990",
"name": "SE Merten Кольцо уплотнительное для повышения степени защиты до IP44, SM",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC002554"
},
{
"id": "91331",
"article": "XB7NA31",
"name": "SE XB7 Кнопка 22мм зеленая с возвратом 1НО",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001028"
},
{
"id": "91848",
"article": "31106",
"name": "SE Interpact INS/INV Выключатель-разъединитель 3P 250А рукоятка спереди",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000216"
},
{
"id": "92123",
"article": "A9F79116",
"name": "SE Acti 9 iC60N Автоматический выключатель 1P 16A (C)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "92415",
"article": "MTN5131-0000",
"name": "SE Merten Механизм Светорегулятора поворотного 40-400Вт/ВА для л/н и обм тр-ров",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000025"
},
{
"id": "92572",
"article": "LC1D40AB7",
"name": "SE Contactors D Telemecanique Контактор 3P Everlink AC3 440В 40A катушка управления 24В AC 50/60Гц",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000066"
},
{
"id": "92683",
"article": "A9XPH424",
"name": "SE Acti 9 Шинка гребенчатая 4P (NL1L2L3…) 24 мод.18мм 100А разрезаемая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000215"
},
{
"id": "92899",
"article": "RXM4AB2BD",
"name": "SE Промежуточное реле Мини 4ПК,светодиод, слаботочные контакты, 24V DC",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001437"
},
{
"id": "92914",
"article": "ATS01N222QN",
"name": "SE Altistart 01 Устройство плавного пуска/торможения 22A",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000640"
},
{
"id": "93314",
"article": "MTN3150-0000",
"name": "SE Merten Механизм QuickFlex Выключателя кнопочный 1НО",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000029"
},
{
"id": "93344",
"article": "A9F74303",
"name": "SE Acti 9 iC60N Автоматический выключатель 3P 3A (C)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "93912",
"article": "MTN312625",
"name": "SE Merten SM Бел Актив Клавиша 3-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000011"
},
{
"id": "94103",
"article": "MTN4040-3215",
"name": "SE Merten SM M-Elegance Стекло Махагон Рамка 4-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "94158",
"article": "NSYS3D6425P",
"name": "SE S3D Sarel Шкаф Spacial 600x400x250 с платой IP66 RAL 7035",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000261"
},
{
"id": "94227",
"article": "LV430770",
"name": "SE Compact NSX 160F Автоматический выключатель Micrologic 2.2 160A 3P 3T",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000228"
},
{
"id": "95040",
"article": "08868",
"name": "SE Prisma Plus G Комплект перекладин для крепления кабелей в кабельном канале(4шт)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC002620"
},
{
"id": "95475",
"article": "08963",
"name": "SE Prisma Plus G Карман для документации",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000317"
},
{
"id": "95513",
"article": "13982",
"name": "SE Kaedra Бокс 1 ряд 18 модулей IP65",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000214"
},
{
"id": "95668",
"article": "A9F75316",
"name": "SE Acti 9 iC60N Автоматический выключатель 3P 16A (D)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "95812",
"article": "A9F74103",
"name": "SE Acti 9 iC60N Автоматический выключатель 1P 3A (C)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "96169",
"article": "MTN2311-0344",
"name": "SE Merten SM Беж глянец Розетка с/з с крышкой безвинт. зажим",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000125"
},
{
"id": "96228",
"article": "A9C20844",
"name": "SE Acti 9 iCT40A Контактор модульный 4НО 220/240В АС",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001653"
},
{
"id": "96276",
"article": "MTN432525",
"name": "SE Merten SM Бел Актив Клавиша 2-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000011"
},
{
"id": "96389",
"article": "XB5AD33",
"name": "SE XB5 Переключатель 1-0-2 с фиксацией чёрный 2НО",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001029"
},
{
"id": "96393",
"article": "CCT56P008",
"name": "SE Argus Standard Датчик движения наружный 360°",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000133"
},
{
"id": "96492",
"article": "XB5AS8445",
"name": "SE XB5 Кнопка аварийная грибок d 40мм 1НО+1НЗ возврат поворотом",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC002034"
},
{
"id": "96635",
"article": "MTN311914",
"name": "SE Merten SM Антрацит Клавиша 3-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000011"
},
{
"id": "97165",
"article": "28912",
"name": "SE Interpact INS/INV Выключатель-разъединитель 3P 160А рукоятка спереди",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000216"
},
{
"id": "97257",
"article": "XB4BVB3",
"name": "SE XB4 Лампа сигнальная зеленая светодиодная 24В",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000272"
},
{
"id": "97666",
"article": "MTN298060",
"name": "SE Merten SM Алюминий Накладка розетки ТЛФ/комп 2-ой наклонной",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000018"
},
{
"id": "97799",
"article": "MTN467014",
"name": "SE Merten Антрацит Механизм АудиоРозетки 2-ой, пружинные клеммы",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000018"
},
{
"id": "97888",
"article": "A9E18320",
"name": "SE Acti 9 iIL Индикатор световой красный 230В",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001657"
},
{
"id": "98060",
"article": "MTN515425",
"name": "SE Merten SM M-Plan Бел Актив Рамка 4-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "98091",
"article": "MTN4010-3500",
"name": "SE Merten SM M-Creativ Бел Рамка 1-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "98292",
"article": "MTN535814",
"name": "SE Merten SM Антрацит Накладка регулятора тёплого пола",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000011"
},
{
"id": "98405",
"article": "GV2P05",
"name": "SE GV2 Автоматический выключатель с комбинированным расцепителем (0,63-1А)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000074"
},
{
"id": "98686",
"article": "MTN412119",
"name": "SE Merten SD Бел Клавиша 1-ая (термопласт)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000011"
},
{
"id": "98822",
"article": "NSYCRN64200P",
"name": "SE Spacial CRN Шкаф с платой 600x400x200",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000261"
},
{
"id": "98848",
"article": "A9F79216",
"name": "SE Acti 9 iC60N Автоматический выключатель 2P 16A (C)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "98874",
"article": "A9S60320",
"name": "SE Acti 9 iSW Выключатель нагрузки 3P 20A",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001545"
},
{
"id": "98909",
"article": "ZBZ32",
"name": "SE Держатель ZBZ-32 для маркировки 8х27мм",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001032"
},
{
"id": "98917",
"article": "08222",
"name": "SE Prisma Plus G Дверь непрозрачная для шкафа навесного или напольного шкафа 27 мод.",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000747"
},
{
"id": "98968",
"article": "A9N18365",
"name": "SE Acti 9 C120N Автоматический выключатель 3P 80A (C)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "99126",
"article": "GV2ME14",
"name": "SE GV2 Автоматический выключатель с комбинированным расцепителем (6-10А)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000074"
},
{
"id": "99214",
"article": "A9F79110",
"name": "SE Acti 9 iC60N Автоматический выключатель 1P 10A (C)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "99284",
"article": "A9N18369",
"name": "SE Acti 9 C120N Автоматический выключатель 3P 125A (C)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000042"
},
{
"id": "99463",
"article": "XB4BD33",
"name": "SE XB4 Переключатель 1-0-2 черный 2НО",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001029"
},
{
"id": "99476",
"article": "MTN2314-4019",
"name": "SE Merten SD Бел Розетка с/з с защитными шторками с крышкой,с упл.кольцом, IP44, безвинт. зажим",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000125"
},
{
"id": "99486",
"article": "GV3P50",
"name": "SE GV3 Автоматический выключатель с регулир. тепловой защитой (37-50А)",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000074"
},
{
"id": "99502",
"article": "MTN466914",
"name": "SE Merten Антрацит Механизм АудиоРозетки 1-ой, пружинные клеммы",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000018"
},
{
"id": "99521",
"article": "MTN403360",
"name": "SE Merten SM M-Elegance Платина серебро Рамка 3-ая",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC000007"
},
{
"id": "99670",
"article": "RSB2A080P7",
"name": "SE Реле переменного тока, 2CO, 230В",
"brand": "Schneider Electric",
"brandId": "2",
"categoryid": "EC001437"
}
]
}'




	DELETE FROM [7gostore_db].[dbo].GetIdByArticles
	IF OBJECT_ID('tempdb..#temptable') IS NOT NULL DROP TABLE #temptable
	create table #temptable (priceObject nvarchar(max), id int identity (1,1))
	declare @ROW_COUNT int
	declare @priceObj nvarchar(max)
	declare @numId int



	insert into #temptable(priceObject)
	select root.value from openjson(@Price, '$."result"') as root

	select * from #temptable

	set @ROW_COUNT = (select count(*) from #temptable)
	WHILE (@ROW_COUNT > 0)
	begin
		set @priceObj = (select priceobject from #temptable where @ROW_COUNT = id)
		Begin
			INSERT INTO [7gostore_db].[dbo].GetIdByArticles
			(id,article,Name,Brand,BrandId,CategoryId)
		 select * from openjson(@priceObj) 
		 WITH ( 
				[Id] int '$.id'	
				,[article] nvarchar(max) '$.article'			  
				,[Name] nvarchar(max) '$.name'			  
				,[Brand] nvarchar(max) '$.brand'
				,[BrandId] nvarchar(max) '$.brandId'
				,[CategoryId] nvarchar(max) '$.categoryid'
 
		 )	 
	 
	End


 set @ROW_COUNT = @ROW_COUNT - 1

END

end