-- Criando e usando o database;

create database Wingardium_Leviosa;

use Wingardium_Leviosa;

-- Criando as tabelas, referentes a modelagem;

create table casa(
idcasa int primary key,
casa varchar(45));

create table usuario(
id int primary key auto_increment,
nome varchar(50),
email varchar(50),
feitiço varchar(50),
senha varchar(50),
fkcasa int);

 CREATE TABLE aviso (
  id int primary key auto_increment,
  titulo varchar(100),
  descricao TEXT,
  fk_usuario int
);

-- Alterando as tabelas, para referenciar as foreign key;

alter table usuario add foreign key (fkcasa) references casa(idcasa);
alter table aviso add foreign key (fkusuario) references usuario(id);

-- Insirindo dados na tabela casa, as demais tabelas a API fará isso automaticamente;

insert into casa values
(1, 'Grifinória'),
(2, 'Sonserina'),
(3, 'Corvinal'),
(4, 'Lufa-lufa');

INSERT INTO usuario (nome, email, feitiço, senha, fkcasa)
VALUES
  ("Seth Hall","sethhall3028@yahoo.org","Estupefaço,","CWQ37J",4),
  ("Kylynn Schroeder","kylynnschroeder@icloud.ca","Accio,","ISL52O",2),
  ("Paloma Alvarez","palomaalvarez@icloud.couk","Totalus,","NIK77O",3),
  ("Adria Stewart","adriastewart@gmail.com","Aguamenti,","PVB53P",4),
  ("Quinlan Mccullough","quinlanmccullough@yahoo.couk","Expectro","BBN06G",3),
  ("Gavin Hudson","gavinhudson5421@aol.edu","Aguamenti,","FLW23V",4),
  ("Murphy Marquez","murphymarquez1014@icloud.edu","Petrificus","UPX45C",1),
  ("Ainsley Hayes","ainsleyhayes9201@outlook.couk","Totalus,","UGT43P",4),
  ("Melissa Knight","melissaknight@icloud.net","Aguamenti,","OQV04J",3),
  ("Tarik Sears","tariksears@yahoo.couk","Expectro","OCW21J",3),
  ("Olga Mccarty","olgamccarty1155@yahoo.ca","Accio,","BXN46K",2),
  ("Brendan Haney","brendanhaney5026@outlook.com","Aguamenti,","OLL93R",2),
  ("Fletcher Johnston","fletcherjohnston1247@icloud.couk","Expectro","RUT05K",3),
  ("Delilah Glover","delilahglover@yahoo.couk","Abaffiato,","EJR31F",3),
  ("Kellie Boone","kellieboone@yahoo.ca","Abaffiato,","PEK92U",4),
  ("Tanek Wood","tanekwood6950@yahoo.org","Petrificus","RWB20O",2),
  ("Willow Beck","willowbeck3929@hotmail.couk","Expelliarmus,","FOK35I",3),
  ("Griffin Franks","griffinfranks2624@icloud.couk","Estupefaço,","LLO11W",2),
  ("Walter Lee","walterlee9311@aol.net","Estupefaço,","NVU67W",3),
  ("Craig Mcmillan","craigmcmillan@icloud.ca","Accio,","LRE18V",1),
  ("Eugenia Mcdaniel","eugeniamcdaniel@hotmail.ca","Expectro","KPK81P",2),
  ("Hu Austin","huaustin5275@yahoo.ca","Accio,","HLE83V",3),
  ("Iona Kelly","ionakelly@gmail.org","Accio,","NSV26R",3),
  ("Brenna Weiss","brennaweiss@gmail.couk","Expelliarmus,","PVH74V",2),
  ("Hanna Byers","hannabyers@outlook.net","Patronum,","TEK65T",2),
  ("Martha Head","marthahead@hotmail.edu","Petrificus","UVI26M",3),
  ("Ivory Marks","ivorymarks@aol.couk","Expelliarmus,","IVA28T",4),
  ("Cheryl Ross","cherylross8571@gmail.couk","Petrificus","NLN07L",1),
  ("Felicia Baird","feliciabaird5368@yahoo.couk","Accio,","XXU12B",4),
  ("Donovan Shannon","donovanshannon@icloud.couk","Expectro","IWR15I",3),
  ("Ciara Warner","ciarawarner2657@gmail.couk","Petrificus","KKV35Y",2),
  ("Jescie Moore","jesciemoore@outlook.net","Abaffiato,","COS13T",2),
  ("Nola English","nolaenglish@gmail.couk","Expectro","FSI37V",3),
  ("Tobias Maxwell","tobiasmaxwell@yahoo.ca","Expectro","XSP25S",2),
  ("Ainsley Burt","ainsleyburt1919@aol.edu","Aguamenti,","CJF81X",2),
  ("Allegra Mcclain","allegramcclain6041@aol.net","Petrificus","VIB58X",4),
  ("Chancellor Wiggins","chancellorwiggins9985@aol.edu","Estupefaço,","SPN61D",3),
  ("Rebekah Tyson","rebekahtyson@aol.net","Accio,","MJT76I",3),
  ("Vivian Barber","vivianbarber@gmail.couk","Estupefaço,","XDS78B",1),
  ("Charity Phillips","charityphillips7764@outlook.couk","Patronum,","UPD36J",2),
    ("Riley Snyder","rileysnyder@hotmail.edu","Petrificus","UKH77N",3),
  ("Brian Morrow","brianmorrow7042@aol.org","Estupefaço,","JFE42F",1),
  ("Sarah Anthony","sarahanthony@outlook.edu","Aguamenti,","WFO46C",2),
  ("Randall Stanley","randallstanley7742@aol.org","Aguamenti,","ITR22J",3),
  ("Rogan Snow","rogansnow@yahoo.org","Expectro","GFW77O",3),
  ("Sophia Blake","sophiablake@hotmail.edu","Aguamenti,","FSB10A",3),
  ("Camilla Bradford","camillabradford@gmail.couk","Abaffiato,","RFI86W",3),
  ("Haviva Peters","havivapeters3940@outlook.net","Patronum,","GTW81N",4),
  ("Lionel Fry","lionelfry6577@gmail.edu","Accio,","ORS65D",1),
  ("Gloria Pratt","gloriapratt@aol.org","Expectro","WSS58S",2),
    ("Fredericka West","frederickawest6804@hotmail.com","Expelliarmus,","MJP83T",4),
  ("Carissa O'brien","carissaobrien@icloud.edu","Aguamenti,","VHV51T",3),
  ("Thor Barker","thorbarker3520@icloud.com","Abaffiato,","QWI34K",1),
  ("Angelica Melendez","angelicamelendez1763@outlook.edu","Accio,","NCJ20I",4),
  ("Deborah Walsh","deborahwalsh4428@icloud.ca","Expectro","HOS14X",1),
  ("Calvin Murray","calvinmurray4748@hotmail.couk","Expectro","QQI79U",4),
  ("Aspen Brooks","aspenbrooks@yahoo.com","Aguamenti,","IYW21J",3),
  ("Maia Bauer","maiabauer6031@hotmail.org","Patronum,","REQ34J",3),
  ("Porter Briggs","porterbriggs@aol.org","Expelliarmus,","JLV06Z",1),
  ("Rhea Morin","rheamorin7059@icloud.ca","Accio,","VCD58C",4),
    ("Clarke Russo","clarkerusso3919@yahoo.edu","Petrificus","WCQ66L",1),
  ("Timothy Spencer","timothyspencer@yahoo.couk","Expelliarmus,","HWW63T",2),
  ("Orson Elliott","orsonelliott231@yahoo.couk","Petrificus","LWV73M",3),
  ("Keiko Nichols","keikonichols6856@hotmail.ca","Accio,","LOQ42R",4),
  ("Kimberley Barker","kimberleybarker@gmail.org","Estupefaço,","EEL04I",2),
  ("Bo Stanley","bostanley@yahoo.edu","Expectro","PGY79F",4),
  ("Luke Dale","lukedale5958@aol.couk","Expectro","OTS26H",4),
  ("Bo Briggs","bobriggs1532@hotmail.com","Accio,","CLN15J",3),
  ("Deirdre Avila","deirdreavila7197@icloud.couk","Petrificus","DFG45I",2),
  ("Barrett Mayo","barrettmayo@hotmail.ca","Accio,","VIF74O",1),
  ("Gisela Carson","giselacarson9209@yahoo.com","Patronum,","OON62J",2),
  ("TaShya Duran","tashyaduran2228@yahoo.ca","Expectro","UWT73S",4),
  ("Glenna Livingston","glennalivingston6021@gmail.com","Expectro","HAK33J",3),
  ("Timon Carrillo","timoncarrillo@gmail.org","Petrificus","NWX17D",4),
  ("Giacomo Whitaker","giacomowhitaker@icloud.ca","Totalus,","VQW46Z",2),
  ("Dillon Mcclain","dillonmcclain272@hotmail.couk","Estupefaço,","UNC78Q",3),
  ("Byron Bates","byronbates@icloud.couk","Expelliarmus,","KOL84U",2),
  ("Jenna Donaldson","jennadonaldson8369@gmail.edu","Estupefaço,","PDQ12X",4),
  ("Carl Dominguez","carldominguez@icloud.org","Patronum,","QTY73X",2),
  ("Arden Russo","ardenrusso5356@yahoo.ca","Expelliarmus,","NGU30B",1),
  ("Harriet Jordan","harrietjordan3003@gmail.edu","Patronum,","TJV84S",3),
  ("Dominique Rutledge","dominiquerutledge@icloud.couk","Totalus,","OJI72W",4),
  ("Ursa Byers","ursabyers5194@icloud.ca","Patronum,","XZM80T",4),
  ("Allen Robertson","allenrobertson@yahoo.ca","Expelliarmus,","VMB15M",2),
  ("Nyssa Lara","nyssalara3483@outlook.ca","Totalus,","LCC58S",3),
  ("Hector Howell","hectorhowell923@hotmail.couk","Patronum,","MWE61Z",3),
  ("Ashton Morton","ashtonmorton7116@yahoo.com","Expectro","DVQ66L",2),
  ("Logan Knapp","loganknapp@aol.com","Estupefaço,","MKF64W",2),
  ("Palmer Cortez","palmercortez69@aol.edu","Petrificus","UUL85L",2),
  ("Allen Lynn","allenlynn@gmail.ca","Totalus,","PHH52L",1),
  ("Jessica Casey","jessicacasey@aol.org","Estupefaço,","NBT19E",1),
  ("Moses Garrett","mosesgarrett@yahoo.couk","Patronum,","GSH87V",4),
  ("Deborah Lindsey","deborahlindsey564@icloud.ca","Aguamenti,","GDE17E",1),
  ("Amos Fernandez","amosfernandez@outlook.couk","Expectro","SKH22T",2),
  ("Rogan Holloway","roganholloway544@hotmail.ca","Totalus,","LBC15T",2),
  ("Amos Koch","amoskoch4099@aol.org","Expectro","MPQ08T",1),
  ("Joy Weiss","joyweiss@outlook.net","Patronum,","VKW65M",3),
  ("Dylan Wise","dylanwise8138@yahoo.net","Expectro","XNP63F",4),
  ("Hedwig Schroeder","hedwigschroeder@outlook.net","Expelliarmus,","OSV71X",4),
  ("Rama Carrillo","ramacarrillo@gmail.net","Estupefaço,","FSY94H",1),
  ("Colin Kent","colinkent2455@outlook.couk","Aguamenti,","IOR23G",3),
  ("Freya Barr","freyabarr5036@outlook.ca","Patronum,","TQK12P",3),
  ("Kuame Wilcox","kuamewilcox@outlook.org","Abaffiato,","CND32K",3),
  ("Igor Gallegos","igorgallegos6621@outlook.ca","Petrificus","XRL43V",3),
  ("Armando Byrd","armandobyrd9780@icloud.com","Petrificus","DDK38L",3),
  ("Stuart Miles","stuartmiles@outlook.com","Petrificus","UUW51J",4),
  ("Abraham Mayo","abrahammayo@outlook.org","Patronum,","EVI17Y",1),
  ("Willow Chavez","willowchavez8646@outlook.ca","Expectro","VQV02B",4),
  ("Akeem Jefferson","akeemjefferson@icloud.org","Expelliarmus,","BKC77T",4),
  ("Demetrius Day","demetriusday@aol.net","Accio,","JOQ53G",1),
  ("Micah Mccarty","micahmccarty2397@aol.org","Expectro","RDZ92V",2),
  ("Maggy Holloway","maggyholloway@yahoo.couk","Aguamenti,","KLR66E",3),
  ("Timothy Keller","timothykeller@gmail.edu","Expectro","NAS77U",2),
  ("Vernon Frost","vernonfrost5577@outlook.org","Abaffiato,","HHF66F",2),
  ("Judah Stanley","judahstanley@aol.com","Estupefaço,","YTN03P",1),
  ("Rajah Allen","rajahallen2174@gmail.couk","Totalus,","ZUC02M",3),
  ("Kyra Herring","kyraherring1530@hotmail.ca","Patronum,","CDP15J",1),
  ("Callum Bailey","callumbailey6418@icloud.ca","Estupefaço,","KNE29Y",3),
  ("Lillian Garner","lilliangarner5964@icloud.couk","Accio,","FSC18S",4),
  ("Beck Cleveland","beckcleveland@icloud.net","Abaffiato,","EDX36R",1),
  ("Upton Herman","uptonherman@hotmail.ca","Estupefaço,","VFR62K",1),
  ("Sara Mccray","saramccray@outlook.edu","Petrificus","YAL11Q",2),
  ("Ali Day","aliday8268@yahoo.net","Estupefaço,","FVD84Y",4),
  ("Bradley Bell","bradleybell@outlook.ca","Totalus,","PKB59U",4),
  ("Vera Mooney","veramooney6359@outlook.couk","Expelliarmus,","FQJ21B",1),
  ("Charde Reeves","chardereeves@yahoo.couk","Totalus,","SZC37I",2),
  ("Molly Townsend","mollytownsend8338@aol.couk","Petrificus","HNT78E",4),
  ("Hamish Hudson","hamishhudson@yahoo.ca","Petrificus","OUZ37T",2),
  ("Nicholas Valenzuela","nicholasvalenzuela8331@gmail.org","Expectro","XHG81I",1),
  ("Mikayla Hoffman","mikaylahoffman@icloud.ca","Petrificus","NIZ02Q",2),
    ("Gabriel Roth","gabrielroth4736@outlook.net","Estupefaço,","ZSP81Y",2),
  ("Molly Rosales","mollyrosales9004@icloud.org","Expectro","LEG78N",2),
  ("Jason Case","jasoncase@hotmail.net","Aguamenti,","WWQ27B",4),
  ("Ivan Clements","ivanclements1184@hotmail.com","Expelliarmus,","RKJ56D",3),
  ("Rhea Gibbs","rheagibbs7443@gmail.net","Patronum,","BKI13Y",2),
  ("Pandora Mendoza","pandoramendoza1838@outlook.org","Expelliarmus,","YOS46W",3),
  ("Jolie Wiggins","joliewiggins@hotmail.net","Petrificus","UUZ06M",3),
  ("Kato Nash","katonash@aol.couk","Aguamenti,","ELB90P",4),
  ("Armand Witt","armandwitt@icloud.couk","Patronum,","BWX72U",2),
  ("Jessamine Rowe","jessaminerowe@gmail.net","Patronum,","XWQ18D",2),
    ("Oren Hendrix","orenhendrix9632@yahoo.ca","Expelliarmus,","CEF32U",3),
  ("Odessa Wolf","odessawolf@icloud.couk","Expectro","JUG66B",3),
  ("Gloria Chapman","gloriachapman@gmail.com","Accio,","WFI75X",3),
  ("Indigo Cummings","indigocummings@icloud.edu","Expelliarmus,","MWK82M",2),
  ("Lareina Trevino","lareinatrevino3392@hotmail.org","Aguamenti,","LNE28N",3),
  ("Brock Walton","brockwalton7865@icloud.ca","Aguamenti,","BBK44D",4),
  ("Guinevere Camacho","guineverecamacho@icloud.com","Petrificus","FME13L",2),
  ("Nolan Irwin","nolanirwin@gmail.couk","Expectro","LEB62U",3),
  ("Trevor Torres","trevortorres3086@aol.edu","Accio,","BWF94P",2),
  ("Solomon Reid","solomonreid@gmail.ca","Estupefaço,","HKD62N",3),
    ("Alea Anthony","aleaanthony2524@icloud.ca","Expectro","EXK81Z",3),
  ("Charles Buckner","charlesbuckner@yahoo.com","Petrificus","IBO24I",3),
  ("Michael Curry","michaelcurry2990@outlook.org","Aguamenti,","UGC27W",1),
  ("Wylie Berry","wylieberry@aol.couk","Patronum,","JMR70H",3),
  ("Cheryl Wooten","cherylwooten@outlook.com","Estupefaço,","GNV91G",3),
  ("Oliver Hunter","oliverhunter7365@hotmail.org","Aguamenti,","PKP18W",3),
  ("Chastity Anderson","chastityanderson4461@hotmail.couk","Estupefaço,","KZK48C",2),
  ("Ronan Cervantes","ronancervantes5803@icloud.ca","Expelliarmus,","MWB75U",1),
  ("Anika Parks","anikaparks5060@hotmail.org","Abaffiato,","JZU22X",4),
  ("Bruno Lara","brunolara8485@aol.net","Expectro","JTD44N",3),
    ("Cathleen Thornton","cathleenthornton3329@gmail.com","Abaffiato,","TKE87W",2),
  ("Kareem Patterson","kareempatterson@yahoo.ca","Expectro","CEV89L",3),
  ("Linus Conrad","linusconrad@outlook.edu","Totalus,","WNW03W",1),
  ("Rhiannon Noble","rhiannonnoble4350@aol.couk","Petrificus","YPG82E",2),
  ("Kameko Mccormick","kamekomccormick@hotmail.net","Patronum,","FEV98Z",3),
  ("Amanda Collier","amandacollier8137@icloud.ca","Petrificus","TZT68X",2),
  ("Andrew Hubbard","andrewhubbard@outlook.com","Expectro","KZS17J",4),
  ("Fiona Madden","fionamadden@gmail.net","Expectro","BEK14Q",1),
  ("Nasim Roach","nasimroach@outlook.couk","Patronum,","UGU27E",3),
  ("Quail Lucas","quaillucas@aol.com","Totalus,","PIF43B",3),
    ("Althea Mercado","altheamercado@icloud.net","Abaffiato,","MDO83Z",2),
  ("Kermit Espinoza","kermitespinoza@icloud.edu","Expelliarmus,","HIS44O",1),
  ("Keegan Ashley","keeganashley2323@aol.org","Abaffiato,","OVL74O",2),
  ("Bo Duncan","boduncan@hotmail.org","Estupefaço,","GRX11C",4),
  ("Brenda Estes","brendaestes@hotmail.net","Accio,","MFY22R",2),
  ("Baker Short","bakershort@gmail.org","Aguamenti,","GUG52A",1),
  ("Bo Potter","bopotter8887@hotmail.net","Expelliarmus,","HLF26B",2),
  ("Keith Rodgers","keithrodgers@icloud.org","Patronum,","KSO62K",4),
  ("Jordan Knox","jordanknox9266@yahoo.ca","Abaffiato,","IWP33B",1),
  ("Moses Wallace","moseswallace7819@yahoo.couk","Expelliarmus,","QRY47E",3),
    ("Debra Wilson","debrawilson5460@icloud.com","Petrificus","ASV61C",1),
  ("Merrill Christian","merrillchristian3300@outlook.edu","Expelliarmus,","LQA16F",3),
  ("Colton Howell","coltonhowell@gmail.couk","Aguamenti,","VCP73F",2),
  ("Brennan Byrd","brennanbyrd@hotmail.ca","Petrificus","HWB07O",3),
  ("Leo Campos","leocampos@gmail.org","Aguamenti,","HSY85A",2),
  ("Barclay Stout","barclaystout4892@yahoo.com","Aguamenti,","WKK67R",4),
  ("Lester Gordon","lestergordon@yahoo.couk","Accio,","ILZ11O",2),
  ("Louis Flynn","louisflynn@icloud.org","Patronum,","DIN86E",3),
  ("Kane Quinn","kanequinn5912@aol.org","Accio,","SGL01J",3),
  ("Justin Baldwin","justinbaldwin@yahoo.couk","Abaffiato,","FFE51S",3),
  ("Alfreda Schultz","alfredaschultz7277@outlook.edu","Petrificus","KZW11A",3),
  ("Buffy Hendrix","buffyhendrix4165@hotmail.ca","Estupefaço,","RMJ91J",3),
  ("Barrett Wilkinson","barrettwilkinson3833@yahoo.org","Totalus,","SKG71Q",2),
  ("Lee Decker","leedecker@gmail.com","Patronum,","UWL60T",3),
  ("Kermit Chan","kermitchan@icloud.com","Totalus,","YQN35C",3),
  ("Simon Sharpe","simonsharpe3361@icloud.org","Estupefaço,","NDD50D",1),
  ("Tashya Curry","tashyacurry@gmail.com","Estupefaço,","QXI10N",4),
  ("Gabriel Hyde","gabrielhyde@hotmail.couk","Patronum,","IQM57T",3),
  ("Alexander Travis","alexandertravis@outlook.ca","Expelliarmus,","RBD83E",4),
  ("Bianca Fletcher","biancafletcher@outlook.couk","Petrificus","VKT61H",2),
  ("Dylan Ford","dylanford6844@aol.net","Aguamenti,","IVS99L",4),
  ("Emma Malone","emmamalone8669@aol.com","Patronum,","ACP41P",1),
  ("Judith Walker","judithwalker1558@gmail.com","Accio,","NBA76Q",1),
  ("Vivian Pearson","vivianpearson@gmail.couk","Abaffiato,","KUY32Q",1),
  ("Reuben Kennedy","reubenkennedy2401@yahoo.org","Expectro","USU66J",2),
  ("September Pratt","septemberpratt9363@hotmail.org","Expelliarmus,","EBL28A",2),
  ("Tashya Curry","tashyacurry@gmail.com","Estupefaço,","QXI10N",1),
  ("Gabriel Hyde","gabrielhyde@hotmail.couk","Patronum,","IQM57T",1),
  ("Alexander Travis","alexandertravis@outlook.ca","Expelliarmus,","RBD83E",1),
  ("Bianca Fletcher","biancafletcher@outlook.couk","Petrificus","VKT61H",1),
  ("Dylan Ford","dylanford6844@aol.net","Aguamenti,","IVS99L",1),
    ("Alfreda Schultz","alfredaschultz7277@outlook.edu","Petrificus","KZW11A",2),
  ("Buffy Hendrix","buffyhendrix4165@hotmail.ca","Estupefaço,","RMJ91J",2),
  ("Barrett Wilkinson","barrettwilkinson3833@yahoo.org","Totalus,","SKG71Q",1),
  ("Lee Decker","leedecker@gmail.com","Patronum,","UWL60T",2),
  ("Kermit Chan","kermitchan@icloud.com","Totalus,","YQN35C",2),
  ("Simon Sharpe","simonsharpe3361@icloud.org","Estupefaço,","NDD50D",1),
  ("Suki Rutledge","sukirutledge5648@icloud.couk","Accio,","TAX77F",1),
  ("Channing Woods","channingwoods@yahoo.edu","Abaffiato,","OAY64S",2),
  ("Maxwell Patrick","maxwellpatrick7352@yahoo.com","Accio,","NUL96K",2),
  ("Beck Hawkins","beckhawkins1343@aol.com","Expectro","DFB13Z",1),
  ("Beatrice Watson","beatricewatson@outlook.org","Estupefaço,","IGV76J",1),
  ("Slade Craft","sladecraft@gmail.org","Estupefaço,","UIB58F",1),
  ("Dacey Finch","daceyfinch@hotmail.com","Patronum,","TUG67Q",1),
  ("Kyle Mckinney","kylemckinney3709@gmail.net","Estupefaço,","PNQ58W",1),
  ("Shelly Dominguez","shellydominguez7852@icloud.couk","Aguamenti,","WQB88Y",1),
  ("Hanna Paul","hannapaul5481@yahoo.com","Aguamenti,","YQL78X",1),
  ("Hedley Ellison","hedleyellison@icloud.couk","Accio,","PDN22Y",1),
  ("Timon Harrison","timonharrison@yahoo.edu","Expelliarmus,","TET26X",1),
  ("Ora Mccray","oramccray@aol.couk","Patronum,","KXY54F",1),
  ("Zena Henson","zenahenson4064@aol.com","Petrificus","GSK72V",1),
    ("Ian Townsend","iantownsend6349@aol.org","Patronum,","CQU09N",1),
  ("Louis Burnett","louisburnett5931@icloud.net","Petrificus","UVF42G",1),
  ("Clarke Terry","clarketerry@icloud.ca","Expectro","DEL56D",1),
  ("Yetta Reynolds","yettareynolds@yahoo.net","Aguamenti,","MDC18Q",1),
  ("Howard Diaz","howarddiaz1651@hotmail.com","Accio,","VTS41R",1),
  ("Brody Britt","brodybritt9044@gmail.edu","Accio,","MWR62R",1),
  ("Gary Cannon","garycannon9067@icloud.edu","Estupefaço,","RLU32J",1),
  ("Susan Herman","susanherman3063@yahoo.com","Expectro","QDT65M",1),
  ("Finn Best","finnbest@gmail.ca","Accio,","UPJ02N",1),
  ("Vladimir Kane","vladimirkane@gmail.org","Estupefaço,","KPS88E",1),
    ("Ingrid Mayer","ingridmayer@gmail.couk","Aguamenti,","DJY28F",1),
  ("Astra Berry","astraberry7170@gmail.net","Patronum,","HXW33E",1),
  ("Keane Delacruz","keanedelacruz7333@outlook.edu","Patronum,","TCV27L",1),
  ("Ferdinand Tillman","ferdinandtillman@outlook.net","Petrificus","GCF54T",1),
  ("Nina Wright","ninawright5643@hotmail.net","Aguamenti,","JWS61P",1),
  ("Kamal Moran","kamalmoran@gmail.couk","Expelliarmus,","CTU43F",1),
  ("Amos Alexander","amosalexander@hotmail.edu","Expectro","JAG52E",1),
  ("Sybill Bond","sybillbond@aol.couk","Expectro","TLS30E",1),
  ("Wylie Mclaughlin","wyliemclaughlin4146@aol.couk","Accio,","DCR39V",1),
  ("Colby Mcfadden","colbymcfadden@aol.net","Expectro","DEG81J",1),
    ("Hayden Sellers","haydensellers3978@gmail.edu","Aguamenti,","SUL79F",1),
  ("Jorden Griffith","jordengriffith7848@aol.couk","Expectro","UCU21I",1),
  ("Audrey Lynn","audreylynn7764@hotmail.net","Abaffiato,","IKU77J",1),
  ("Allegra Graham","allegragraham2085@hotmail.couk","Patronum,","KCE46D",1),
  ("Cain Dixon","caindixon3929@icloud.ca","Totalus,","MUO28L",1),
  ("Uma Delgado","umadelgado422@hotmail.com","Patronum,","GFI90W",1),
  ("Jackson Parks","jacksonparks9345@gmail.com","Accio,","UKB71S",1),
  ("Hu Russo","hurusso930@gmail.ca","Aguamenti,","WRH72H",1),
  ("Cain Glass","cainglass9563@icloud.org","Abaffiato,","LNE37D",1),
  ("Kirestin Brennan","kirestinbrennan6293@aol.org","Petrificus","AXI79Z",1),
    ("Kyle Alexander","kylealexander459@hotmail.couk","Expectro","WWZ16Q",1),
  ("Karen Ellison","karenellison@gmail.net","Patronum,","NDH53D",1),
  ("Donna Pierce","donnapierce8742@aol.net","Expelliarmus,","JNC04G",1),
  ("Adele Mendez","adelemendez4927@outlook.net","Petrificus","PYH25W",1),
  ("Benjamin Jordan","benjaminjordan@icloud.net","Expelliarmus,","FBA82W",1),
  ("Willow Phillips","willowphillips@icloud.couk","Aguamenti,","JDY24S",1),
  ("Scarlet Pickett","scarletpickett4402@aol.net","Expelliarmus,","ZJR54O",1),
  ("Kenyon Manning","kenyonmanning2534@gmail.edu","Patronum,","VHK00M",1),
  ("Kiara Everett","kiaraeverett@aol.couk","Estupefaço,","YWN77F",1),
  ("Violet Glass","violetglass8359@outlook.couk","Expectro","JZH82W",1),
    ("Ruth Phelps","ruthphelps@gmail.couk","Totalus,","PYB22M",1),
  ("Marny Dalton","marnydalton589@yahoo.ca","Aguamenti,","WWP28S",1),
  ("Hop Johnston","hopjohnston@icloud.edu","Totalus,","FRT46M",1),
  ("Herman Pace","hermanpace8013@hotmail.com","Abaffiato,","YTZ18T",1),
  ("Deirdre Dillon","deirdredillon5992@aol.org","Estupefaço,","TRK27A",1),
  ("Ivan Dale","ivandale8455@hotmail.couk","Expectro","FXN17T",1),
  ("Rhona Vance","rhonavance@hotmail.org","Estupefaço,","MGX11D",1),
  ("Zachary Hensley","zacharyhensley@hotmail.com","Aguamenti,","FDJ23L",1),
  ("Stacy Huffman","stacyhuffman@outlook.ca","Aguamenti,","FEN05X",1),
  ("Kirsten Barr","kirstenbarr@outlook.org","Petrificus","ISB28O",1),
  ("Ruth Phelps","ruthphelps@gmail.couk","Totalus,","PYB22M",2),
  ("Marny Dalton","marnydalton589@yahoo.ca","Aguamenti,","WWP28S",2),
  ("Hop Johnston","hopjohnston@icloud.edu","Totalus,","FRT46M",2),
  ("Herman Pace","hermanpace8013@hotmail.com","Abaffiato,","YTZ18T",2),
  ("Deirdre Dillon","deirdredillon5992@aol.org","Estupefaço,","TRK27A",2),
  ("Ivan Dale","ivandale8455@hotmail.couk","Expectro","FXN17T",2),
  ("Rhona Vance","rhonavance@hotmail.org","Estupefaço,","MGX11D",2),
  ("Zachary Hensley","zacharyhensley@hotmail.com","Aguamenti,","FDJ23L",2),
  ("Stacy Huffman","stacyhuffman@outlook.ca","Aguamenti,","FEN05X",2),
  ("Kirsten Barr","kirstenbarr@outlook.org","Petrificus","ISB28O",2),
    ("Kyle Alexander","kylealexander459@hotmail.couk","Expectro","WWZ16Q",2),
  ("Karen Ellison","karenellison@gmail.net","Patronum,","NDH53D",2),
  ("Donna Pierce","donnapierce8742@aol.net","Expelliarmus,","JNC04G",2),
  ("Adele Mendez","adelemendez4927@outlook.net","Petrificus","PYH25W",2),
  ("Benjamin Jordan","benjaminjordan@icloud.net","Expelliarmus,","FBA82W",2),
  ("Willow Phillips","willowphillips@icloud.couk","Aguamenti,","JDY24S",2),
  ("Scarlet Pickett","scarletpickett4402@aol.net","Expelliarmus,","ZJR54O",2),
  ("Kenyon Manning","kenyonmanning2534@gmail.edu","Patronum,","VHK00M",2),
  ("Kiara Everett","kiaraeverett@aol.couk","Estupefaço,","YWN77F",2),
  ("Violet Glass","violetglass8359@outlook.couk","Expectro","JZH82W",2),
    ("Chadwick Chapman","chadwickchapman4210@icloud.couk","Expelliarmus,","QMQ63R",2),
  ("Tarik Larsen","tariklarsen@icloud.com","Petrificus","MUR65T",2),
  ("Mollie Sandoval","molliesandoval6511@icloud.com","Abaffiato,","GBJ91E",2),
  ("Lana Contreras","lanacontreras@hotmail.net","Estupefaço,","IBM37N",2),
  ("Eagan Massey","eaganmassey6380@yahoo.edu","Expectro","JNH62W",2),
  ("Alika Olson","alikaolson1120@aol.org","Expelliarmus,","FWD89V",2),
  ("Yuli Franks","yulifranks4738@gmail.com","Patronum,","WXV57I",2),
  ("Kaseem Simon","kaseemsimon@icloud.org","Aguamenti,","BON52R",2),
  ("Lynn Carroll","lynncarroll706@hotmail.net","Totalus,","GNG15R",2),
  ("Rebecca Banks","rebeccabanks@icloud.org","Petrificus","YVY45G",2),
    ("Caesar Cole","caesarcole6337@aol.net","Estupefaço,","WZO35B",2),
  ("Talon Hale","talonhale@aol.org","Expectro","GYA39K",2),
  ("Brady Hansen","bradyhansen@hotmail.com","Expectro","MXQ97D",2),
  ("Hedwig Durham","hedwigdurham8024@yahoo.net","Abaffiato,","LFS71Q",2),
  ("Dacey Joyce","daceyjoyce9448@gmail.ca","Totalus,","UPW13T",2),
  ("Kiona Mcfadden","kionamcfadden@aol.couk","Expectro","OHU86M",2),
  ("Dustin Nicholson","dustinnicholson4430@gmail.ca","Petrificus","KLZ69E",2),
  ("Barry Ayala","barryayala5447@gmail.org","Expectro","TND07Z",2),
  ("Megan Bowen","meganbowen1136@icloud.edu","Abaffiato,","NNW89D",2),
  ("Joy O'Neill","joyoneill8361@yahoo.edu","Accio,","GZX50M",2),
    ("Grant Strong","grantstrong@gmail.com","Expelliarmus,","DVH52E",2),
  ("Freya Hendrix","freyahendrix7223@hotmail.com","Abaffiato,","VNP97W",2),
  ("Lavinia Woods","laviniawoods@icloud.net","Abaffiato,","HAD18R",2),
  ("Merritt Wall","merrittwall@yahoo.edu","Petrificus","AEW88T",2),
  ("Kennan Stevenson","kennanstevenson@outlook.net","Abaffiato,","VWS38B",2),
  ("Kai Christian","kaichristian2418@gmail.com","Patronum,","TIU56P",2),
  ("Kim Glass","kimglass@yahoo.couk","Petrificus","XPK53X",2),
  ("Chancellor Austin","chancelloraustin@hotmail.edu","Patronum,","SZH46Q",2),
  ("Imogene Hunter","imogenehunter1308@aol.org","Accio,","WJX56P",2),
  ("Libby Lowe","libbylowe5456@yahoo.edu","Abaffiato,","YES51Y",2);

  INSERT INTO aviso (titulo, descricao, fk_usuario)
VALUES
  ("Patronum, Expelliarmus, Petrificus","fala (sim, ele fala!) em qual casa o menino deve ficar. Edwiges: é a coruja de Harry. Quase todos os meninos magos têm corujas como bichinho",1003),
  ("Aguamenti,","férias, o trem vermelho leva todos os alunos de volta a Hogwarts. Para pegá-lo, é preciso ir até a Estação King´s Cross (que existe de verdade em Londres) e dirigir-se à plataforma 9 e 1/2. Ela fica entre a 9 e a 10, e só os bruxos conseguem",741),
  ("Patronum, Expelliarmus, Petrificus","alunos de volta a Hogwarts. Para pegá-lo, é preciso ir até a Estação King´s Cross (que existe de verdade em Londres) e dirigir-se à plataforma 9 e 1/2. Ela fica entre a",701),
  ("Patronum,","o mais longe possivel. Infelizmente, o filme não mostra uma desgnomização :( Diabretes - eles lembram um pouco os Gremlins, uns bichinhos verdes que fizeram muito sucesso na decada",755),
  ("Patronum, Expelliarmus,","única forma dele ser libertado é receber um presente de seu dono. Dobby é um elfo doméstico Ofidioglota - é a língua das cobras. Você se lembra que no primeiro livro Harry conversa com uma cobra brasileira",27),
  ("Patronum, Expelliarmus, Petrificus","eles são tratados como pragas de jardim e",1047),
  ("Expectro Patronum, Expelliarmus,","em gnomos? No mundo",345),
  ("Expectro Patronum,","Cada Casa tem a sua e ela muda todo ano. No primeiro ano, a senha de Grinfinória era cabeça de dragão, no segundo, é maçarico Travessa do tranco - é",341),
  ("Patronum, Expelliarmus,","o filme não mostra uma desgnomização :( Diabretes -",190),
  ("Aguamenti, Estupefaço, Expectro","só na popularidade, pois a",870),
    ("Patronum, Expelliarmus, Petrificus","gigantesca que fica do lado de fora de Hogwarts. Em A Câmara Secreta ela quase mata Harry e Rony. Mas também, os dois bateram com o carro nela! Sangue ruim - é uma palavra discriminatória e um dos piores xingamentos",803),
  ("Estupefaço, Expectro Patronum,","acredita em gnomos? No mundo",766),
  ("Expelliarmus, Petrificus","em Grifinória), Frei Gorducho (Lufa-lufa), Barão Sangrento (Sonserina), Pirraça e Murta que geme (Corvinal). Feijõezinhos: é no Expresso Hogwarts que os alunos encontram uma de suas",247),
  ("Expelliarmus, Petrificus","Harry. Quase todos os meninos magos têm corujas como bichinho de estimação. Elas são muito úteis, pois levam mensagens para qualquer",1124),
  ("Estupefaço, Expectro","vêm acompanhados de figurinhas com os bruxos mais famosos. Detalhe: a foto dos magos se mexe, como todas as outras no mundo dos bruxos. Trouxas: é como",430),
  ("Estupefaço, Expectro Patronum,","de fora de Hogwarts. Em A Câmara Secreta ela quase mata Harry e Rony. Mas também, os dois bateram com o carro nela! Sangue ruim - é uma palavra discriminatória e um dos piores xingamentos que existe para um bruxo (ou bruxa) que tem os pais trouxas. Senha -",945),
  ("Estupefaço, Expectro Patronum,","devem ser primos do Gizmo Elfo doméstico - famílias mega-tradicionais de bruxos riquíssimos têm em",626),
  ("Patronum, Expelliarmus,","escola de magia onde Harry estuda) compram o material escolar. Funciona como uma espécie de Shopping. As lojas do Beco vendem de",560),
  ("Expectro","em estátua),",944),
  ("Estupefaço, Expectro Patronum,","Harry e Rony. Mas também, os dois bateram com",712),
    ("Expectro Patronum,","mágicas, livros de magias, ingredientes para poções, etc. É lá também que se localiza o Caldeirão Furado, o bar dos magos, e Gringotes, o banco dos bruxos. Berrador: é uma carta vermelha que literalmente grita seu conteúdo e todos em voltam",660),
  ("Estupefaço, Expectro","bruxos mais famosos. Detalhe: a foto dos magos se mexe, como todas as outras no mundo dos bruxos. Trouxas: é",618),
  ("Estupefaço,","estuda) compram o material escolar. Funciona como uma espécie de",1033),
  ("Aguamenti, Estupefaço,","que é chamada de Pomo",677),
  ("Patronum,","famosos. Detalhe: a foto dos magos se mexe, como todas as outras no mundo dos bruxos. Trouxas: é como são conhecidas todas as pessoas que",1041),
  ("Aguamenti, Estupefaço,","verdade em Londres) e dirigir-se à plataforma 9 e 1/2. Ela fica entre a 9 e a 10, e só os bruxos conseguem encontrá-la. Fantasmas: são os habitantes mais antigos de Hogwarts, mestres em",286),
  ("Estupefaço, Expectro Patronum,","comportamento. A Grifinória é a casa de Harry, Rony e Hermione, onde a maior parte da",593),
  ("Estupefaço,","espelho verá seu maior desejo. Sabe-se que se uma pessoa completamente feliz olhar para a sua superfície, verá apenas a si mesmo, sem alterações.",1099),
  ("Patronum,","Rony. Mas também, os dois bateram com o carro nela! Sangue ruim - é uma palavra discriminatória e um dos piores xingamentos que existe para um bruxo (ou",607),
  ("Patronum, Expelliarmus, Petrificus","com a visão do que",930),
    ("Patronum, Expelliarmus, Petrificus","de espinafre, cera de ouvido ou de pimenta. Feitiços: desde o primeiro ano, os alunos de Hogwarts aprendem a fazer mágicas com suas varinhas. Para isso, basta, além de ter o dom, pronunciar palavras como: alorromora (para abrir portas), lumus (iluminar), petrificus totalis (transforma em estátua),",1194),
  ("Expectro Patronum, Expelliarmus,","caso do Filch, o bedel que cuida dos corredores de Hogwarts. Não é à toa que ele é tão azedo com a vida. Imagine só o que é ser uma das maiores vergonhas para os seus pais (ver sangue ruim). PUBLICIDADE Desgnomização -",411),
  ("Estupefaço, Expectro Patronum,","na cabeça fala (sim, ele fala!) em qual casa o menino deve ficar. Edwiges: é a coruja de Harry. Quase todos os meninos magos têm corujas como bichinho de estimação. Elas são",353),
  ("Expectro Patronum, Expelliarmus,","dos bruxos. Berrador: é uma carta vermelha que literalmente grita seu conteúdo e todos em voltam ficam sabendo do que se trata. Neville Longbottom costuma",513),
  ("Expectro Patronum,","usadas quatro bolas: uma pequenininha dourada, duas médias pretas e uma grande vermelha. Para ganhar pontos, é preciso acertar uma bola chamada goles dentro de aros que",744),
  ("Patronum, Expelliarmus,","como todas as outras",596),
  ("Patronum, Expelliarmus,","de Hogwarts é dividida em quatro casas. Os alunos de cada uma ganham - ou perdem - pontos por tarefas realizadas e pelo comportamento. A Grifinória é a casa de Harry, Rony e Hermione, onde a maior parte da história se passa. Sonserina é a dos alunos",616),
  ("Patronum, Expelliarmus, Petrificus","e pelo comportamento.",23),
  ("Expectro Patronum,","primeiro ano, a senha de Grinfinória era cabeça de dragão, no segundo, é maçarico Travessa do tranco - é um lugar parecido com o beco diagonal, mas com lojas especializadas em magia negra. Adivinha qual",130),
  ("Estupefaço, Expectro Patronum,","Diabretes - eles lembram um pouco os Gremlins, uns bichinhos verdes que fizeram muito sucesso na decada de 80 [N.E. Gremlins (de Joe Dante - 1984) foi escrito por Chris Columbus]. A diferenca é que eles são azuis, mais",894),
    ("Patronum, Expelliarmus, Petrificus","As lojas do Beco vendem de tudo: varinhas mágicas, livros de magias, ingredientes para poções, etc. É lá também que se localiza o Caldeirão Furado, o bar dos magos, e Gringotes, o banco dos bruxos. Berrador: é uma carta vermelha que literalmente grita",782),
  ("Aguamenti, Estupefaço,","a entrada, é",540),
  ("Patronum, Expelliarmus,","o trem vermelho leva todos os alunos de volta a Hogwarts. Para pegá-lo, é",185),
  ("Estupefaço, Expectro","ingredientes para poções, etc. É lá também que se localiza o Caldeirão Furado, o bar dos magos,",477),
  ("Expectro Patronum,","são algumas delas. Nimbus: a marca da vassoura de Harry Potter. É o modelo mais moderno e veloz",1204),
  ("Expectro Patronum, Expelliarmus,","só os bruxos conseguem encontrá-la. Fantasmas: são os habitantes mais antigos de Hogwarts, mestres em criar confusões e pregar peças nos alunos. Alguns deles: Nick Quase Sem Cabeça (que mora em Grifinória), Frei Gorducho",941),
  ("Patronum, Expelliarmus, Petrificus","entre a 9 e a 10, e só os bruxos conseguem encontrá-la. Fantasmas: são os habitantes mais antigos de Hogwarts, mestres em criar",565),
  ("Estupefaço, Expectro","livros de magias, ingredientes para poções, etc. É lá também que se",217),
  ("Patronum, Expelliarmus, Petrificus","mata Harry e Rony. Mas também, os",904),
  ("Expectro Patronum, Expelliarmus,","um aluno de Grifinória entrar nos dormitórios da Sonserina porque o caminho é complicado e, mesmo que",103),
    ("Expelliarmus,","de Harry, Rony e Hermione, onde a maior parte da história se passa. Sonserina é a dos alunos malvados, onde mora um grande inimigo de Harry, Draco Malfoy. As outras",115),
  ("Expectro","para a sua superfície, verá apenas a si mesmo, sem alterações. Muitos já definharam diante do espelho, deleitando-se deleitando-se com a",144),
  ("Estupefaço, Expectro","dia de aula há uma cerimônia que divide os alunos entre as quatro casas de Hogwarts. Nela, o tal chapéu mágico, quando colocado na cabeça fala (sim, ele fala!) em qual casa o menino deve ficar. Edwiges: é a",1178),
  ("Aguamenti,","a Estação King´s Cross (que existe de verdade em Londres) e dirigir-se à plataforma 9 e 1/2. Ela fica entre a 9 e a 10, e só os bruxos conseguem encontrá-la. Fantasmas:",800),
  ("Estupefaço, Expectro","os bruxos mais famosos. Detalhe: a foto dos magos se mexe, como todas as outras no mundo dos bruxos. Trouxas: é como são conhecidas todas as pessoas que não são",764),
  ("Expectro Patronum,","que existe. Uma espécie de Ferrari das vassouras. Vale lembrar que os alunos do primeiro ano não podem usar vassouras pessoais.",247),
  ("Aguamenti, Estupefaço, Expectro","gigantesca que",747),
  ("Expectro Patronum,","que geme (Corvinal). Feijõezinhos: é no Expresso Hogwarts que os alunos encontram uma",109),
  ("Expectro Patronum, Expelliarmus,","casas. Os alunos de cada uma ganham - ou perdem - pontos por tarefas realizadas e pelo comportamento. A Grifinória",336),
  ("Estupefaço,","de pimenta. Feitiços: desde o primeiro ano, os alunos de Hogwarts aprendem a fazer mágicas com suas varinhas. Para isso, basta, além de ter",1082),
    ("Expectro Patronum,","maior parte da história se passa. Sonserina é a dos alunos malvados, onde mora um grande inimigo de Harry, Draco Malfoy. As outras são Lufa-lufa e Corvinal. Chapéu seletor: no primeiro dia de aula há uma cerimônia que divide os alunos entre as quatro casas de Hogwarts. Nela,",460),
  ("Patronum, Expelliarmus,","uma cerimônia que divide os alunos entre as quatro casas de Hogwarts. Nela, o tal chapéu mágico, quando colocado na cabeça fala (sim, ele fala!) em qual casa o",95),
  ("Estupefaço, Expectro Patronum,","beco diagonal, mas com lojas especializadas em magia negra. Adivinha qual bruxo com uma cicatriz na testa cai lá sem querer e passa por maus bocados... Beco Diagonal: é uma rua mágica em Londres onde os alunos de Hogwarts (a",356),
  ("Estupefaço,","(Corvinal). Feijõezinhos: é no Expresso Hogwarts que os alunos encontram uma de suas gulosiemas favoritas. São feijõezinhos de todos os sabores. Mas como Rony avisou Harry logo que se conheceram, são todos os sabores mesmo. É preciso",24),
  ("Expectro Patronum,","todos os meninos magos têm corujas como bichinho de estimação. Elas são muito úteis, pois levam mensagens para qualquer pessoa, em qualquer lugar do mundo. Rony, entretanto, tem um ratinho, o Pereba. Outras opções são",338),
  ("Estupefaço, Expectro Patronum,","mexe, como todas as outras no mundo dos bruxos.",1078),
  ("Expectro Patronum, Expelliarmus,","futebol no mundo dos bruxos,",535),
  ("Estupefaço, Expectro","vassouras. Vale lembrar que os alunos do primeiro ano não podem usar vassouras pessoais. Quadribol: é o equivalente ao futebol no mundo dos bruxos, mas só na popularidade, pois a forma de jogar é completamente diferente. Os atletas jogam",101),
  ("Patronum, Expelliarmus,","ache a entrada, é necessário falar uma senha. Cada Casa tem a sua e ela muda todo ano. No primeiro ano, a senha de Grinfinória era cabeça de dragão, no",810),
  ("Estupefaço, Expectro","No mundo criado por J.K. Rowling, eles são tratados como pragas de jardim e precisam ser exterminados. Não! Ninguem sai pisando neles. É só pegar, rodar bastante até ele ficar tonto e arremessar o mais longe possivel. Infelizmente, o filme não mostra uma desgnomização :( Diabretes",184),
    ("Expectro","maior parte da história se passa. Sonserina é a dos alunos",556),
  ("Estupefaço, Expectro","ser punido. A única forma dele ser libertado é receber um presente de seu dono. Dobby é um elfo doméstico Ofidioglota - é a língua das cobras. Você se lembra que no primeiro livro Harry conversa com uma",982),
  ("Estupefaço, Expectro Patronum,","Sonserina porque o caminho é complicado",817),
  ("Expectro Patronum,","entre a 9 e a 10, e só os bruxos conseguem encontrá-la. Fantasmas: são os habitantes mais antigos de Hogwarts, mestres em",427),
  ("Expectro Patronum, Expelliarmus,","ficam nas pontas do campo. O jogo termina quando é capturada uma bolinha, que",528),
  ("Estupefaço,","é necessário falar uma senha. Cada Casa tem a sua",515),
  ("Patronum, Expelliarmus, Petrificus","têm poderes mágicos. Se um elfo doméstico desobedecer seu amo, ele deve ser punido. A única forma dele ser libertado é receber um",358),
  ("Expelliarmus, Petrificus","de jogar é completamente diferente. Os atletas",659),
  ("Expectro Patronum,","fazer mágicas com suas varinhas. Para isso, basta, além de ter o dom, pronunciar palavras como: alorromora (para abrir portas), lumus (iluminar), petrificus totalis (transforma em estátua), ou tarantallegra (fazer o outro dançar).",877),
  ("Expectro","de verdade em Londres) e dirigir-se à plataforma 9 e 1/2. Ela fica entre a 9 e a 10, e só os bruxos conseguem encontrá-la. Fantasmas: são os habitantes mais antigos de Hogwarts, mestres em criar confusões e pregar peças nos alunos. Alguns deles: Nick Quase",657);
  
  
  -- Selects da API;
  
  -- Tabela de aviso;
  
  INSERT INTO aviso (titulo, descricao, fk_usuario) VALUES ('${titulo}', '${descricao}', ${idUsuario});
  
  UPDATE aviso SET titulo = ${novoTitulo} , descricao = ${novaDescricao} WHERE id = ${idAviso};
  
  
  
          SELECT 
            a.id AS idAviso,
            a.titulo,
            a.descricao,
            a.fk_usuario,
            u.id AS idUsuario,
            u.nome,
            u.email,
            u.senha
        FROM aviso a
        INNER JOIN usuario u
        ON a.fk_usuario = u.id;
        
            SELECT 
    a.id AS idAviso,
    a.titulo,
    a.descricao,
    a.fk_usuario,
    u.id AS idUsuario,
    u.nome,
    u.email,
    u.senha
    FROM aviso a
    INNER JOIN usuario u
    ON a.fk_usuario = u.id
    WHERE a.descricao LIKE '${texto}';
    
        SELECT 
    a.id AS idAviso,
    a.titulo,
    a.descricao,
    a.fk_usuario,
    u.id AS idUsuario,
    u.nome,
    u.email,
    u.senha
    FROM aviso a
    INNER JOIN usuario u
    ON a.fk_usuario = u.id
    WHERE u.id = ${idUsuario};
  
  -- Tabela usuario;
  
  SELECT * FROM usuario WHERE email = '${email}' AND senha = '${senha}';
  
  INSERT INTO usuario (nome, email, feitiço, senha, fkcasa) VALUES ('${nome}', '${email}', '${feitiço}', '${senha}', ${casa});
  
  select casa, count(fkcasa) as 'quantcasa' from usuario join casa on fkcasa = idcasa group by fkcasa;
