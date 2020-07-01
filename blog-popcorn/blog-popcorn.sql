-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 01 juil. 2020 à 09:56
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog-popcorn`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `seen` tinyint(11) NOT NULL DEFAULT '0',
  `signals` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `comment`, `post_id`, `date`, `seen`, `signals`) VALUES
(93, 14, 'Pas mal !', 40, '2018-02-22 07:20:01', 0, 0),
(94, 14, 'Bof', 11, '2018-02-22 07:20:13', 0, 0),
(97, 14, 'Très bel article, bravo !!\r\n', 40, '2020-07-01 10:20:27', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `body` longtext NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'post.jpg',
  `createdDate` datetime NOT NULL CURRENT_DATE,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `image`, `createdDate`) VALUES
(1, 'Invisible man, un honnête divertissement grand pub', '<hr>\r\n<p>Sans renouveler les codes du genre, Invisible Man accomplit son rôle de divertissement estival en proposant un spectacle rythmé et intense.<p>\r\n<p>Dès la séquence d’introduction, on comprend que Leigh Whannell a décidé de respecter le public auquel ce produit faussement archétypal est dédié. Le début in media-res surprend : on y voit Cécilia, héroïne aux tendances psychotiques (Elisabeth Moss de La servante écarlate, taillée pour ce type de rôles), fuir le domicile conjugal sans raison apparente. Simples mais déterminants, ces premiers plans posent les bases d’une course poursuite effrénée qui trouvera son point de chute dans les dernières minutes. Alors qu’elle semble débarrassée de son bourreau, Cécilia reste persuadée qu’il la suit sans se manifester physiquement, à la manière d’un homme invisible.</p>\r\n\r\n<p><img class=\"\" src=\"static/img/posts/invisible-man2.jpg\" alt=\"\" width=\"100%\" height=\"700\" /></p>\r\n\r\n<hr>\r\n\r\n<p>Le développement faisant suite à ce schéma initial est habilement pensé. Tout d’abord, les dires de Cécilia suscitent le doute de son entourage et du spectateur en raison du caractère atypique du personnage, conséquence d’une relation morbide et malsaine dont elle semble porter les stigmates. Son ami policier James, d’abord conciliant, finit par penser la jeune femme schizophrène et fait en sorte qu’elle intègre un asile psychiatrique suite à un meurtre non-élucidé. Il s’agit du premier coup asséné par l’homme invisible, étape inaugurale d’un plan complexe et pervers, dont la progression est agréable à suivre. En éloignant Cécilia de sa seule source de stabilité (James et sa fille), on se dit que l’intrigue peut explorer de sublimes zones d’ombre chez un personnage à deux visages. Une attente à demi comblée.</p>\r\n\r\n<p>Le point culminant du film restera sans doute cette séquence ahurissante dans l’hôpital, où, attaquée, l’héroïne entame un combat contre un corps gesticulant dans l’ombre et frappant froidement ses cibles. La mise en scène se calque d’ailleurs parfaitement sur l’élément déclencheur de ce scénario à pistes. Il est jubilatoire de supposer la présence dans le champ d’un corps malveillant et perfide, émancipé du poids du regard des personnes l’entourant. Du meurtre instantané commis par Cécilia à ses dépends jusqu’aux tirs déferlants d’une arme en lévitation, les scènes d’action sont entraînantes et convaincantes. La double-énonciation établie avec le spectateur le place comme témoin omniscient de cet affrontement : lui seul possède tous les éléments pour résoudre les nombreuses énigmes visuelles. Outre la mise en scène rythmée et appliquée, c’est le principal atout du film.</p>\r\n</br>', 'invisible-man.jpg', '2020-07-01 09:35:00'),
(2, 'The Hunt, un film de survie irrévérent et méchant.', '<hr>\r\n<p>Précédé d’une réputation sulfureuse, The Hunt devait arriver il y a plusieurs semaines dans nos salles mais la pandémie du COVID-19 en aura décidé autrement. Cette chasse à l’homme signée Craig Zobel est l’une des sorties à l’affiche pour la réouverture des cinémas le 22 juin. Après la polémique, qu’en est-il du film en lui-même ?</p>\r\n\r\n<p>Petit rembobinage à août 2019. Universal décide d’annuler la sortie de THE HUNT après plusieurs tueries sur le sol américain. Le studio a jugé que la période n’était pas idéale pour sortir un film qui, justement, parle d’une tuerie. En l’occurrence, d’un petit jeu auquel se livre une certaine élite. Plusieurs inconnus sont capturés et sont chassés par ce groupe qui pense avoir le droit de les traiter ainsi. Mais alors que plusieurs participants tombent sous les balles de cet ennemi très bien armé, une femme dénommée Crystal s’élève au-dessus de la masse et donne du fil à retordre aux chasseurs. Elle va totalement réussir à inverser la situation grâce à son passé dans l’armée. Son objectif est de mettre la main sur la femme qui pilote toute cette machination.</p>\r\n\r\n<p><img class=\"\" src=\"static/img/posts/thehunt2.jpg\" alt=\"\" width=\"100%\" height=\"700\" /></p>\r\n\r\n<p>THE HUNT se présente donc comme un survival dans la lignée spirituelle de Get Out avec un argument de cinéma de genre au service d’un discours politique. À l’instar de la réflexion sur le racisme dans la société américaine chez Jordan Peele, Craig Zobel semble vouloir argumenter autour de la lutte des classes. De ce que l’on comprend dans le premier tiers du film, des riches s’offrent une expérience hors du commun en chassant quelques « bouseux » dont la disparition ne fera pas de vagues. Il y a, certes, un peu de ça. Mais THE HUNT opère quelques revirements de situation qui délocalisent le thème central vers autre chose. Sans vendre la mèche avant coup, le film part dans une direction plus surprenante au bout d’un moment, toujours en gardant le canon braqué sur la tempe de cette Amérique moderne à propos de laquelle il y a tant à dire.</p>\r\n\r\n<hr>\r\n\r\n<p>Le scénario ne se contente pas de simplement établir un schéma chasseurs/chassés avec les riches et pauvres, puis d’inverser la vapeur à la faveur d’un soulèvement du peuple d’en bas. Non, et c’est là où THE HUNT provoque une certaine jouissance, parce qu’on se rend compte que tout le monde en prend pour son grade, qu’importe le camp. Le constat est emprunt de nihilisme. Si ces personnages sont à l’image de la société américaine, elle ne peut que déboucher sur une implosion tant toutes les forces se contrarient entre elles au point de ne plus savoir à quel saint se vouer. Le jeu de massacre ne fait certainement pas dans la finesse à tous les égards mais il s’avère assez fun à parcourir de notre position, tant on voit les masques qui tombent à mesure que le film avance. Il aurait été facile de scinder la galerie de personnages en deux parties et de diamétralement imposer un manichéisme trop simpliste.</p>\r\n\r\n<p>THE HUNT s’amuse à nous amuser, à trouver des petits chemins parallèles pour se détourner des codes trop prévisibles. L’une des scènes qui amorcent le final le prouve. Après un massacre, Crystal se lance dans une longue histoire sur le lièvre et la tortue mais le dénouement n’est pas exactement celui que l’on connaît tous. Le film est à l’image de ce passage. Il nous installe dans un confort, pose des bases faciles à analyser, pour tout envoyer péter ensuite sous l’autel de l’irrévérence. Toute cette énergie déployée pour tirer sur ces cibles donne au film un côté un peu foutraque. Mais également une générosité indéniable.</p>\r\n</br>', 'thehunt.jpg', '2020-07-01 10:02:05'),
(3, 'THE LAST DANCE, plus qu’une simple série', '<hr>\r\n<p>A travers des images d\'archives inédites, cette série documentaire en dix épisodes suit de l\'intérieur la saison 1997-1998 des Chicago Bulls en route vers leur sixième titre en huit ans, et propose un portrait sportif et intime de Michael Jordan.</p>\r\n\r\n<p>Unanimement approuvée par le grand public, cette anthologie axée sur la carrière légendaire de Michael Jordan est d’ores et déjà un succès.</p>\r\n\r\n<p>Netflix n’en est pourtant pas à son coup d’essai sur ce type de production : de Sunderland ‘Til I Die à Cheers, les documentaires sportifs se sont démultipliés sur la plate-forme. Pourtant, ces 10 opus plongeant le spectateur dans une période bénie de la NBA détonnent par leur qualité et leur créativité, parvenant même à séduire les moins passionnés. Tentative d’explications en cinq axes.</p>\r\n\r\n<hr>\r\n\r\n<h3>1. Le montage alterné, un choix payant</h3>\r\n\r\n<p>La série suit en parallèle deux fils narratifs : d’un côté, les étapes de l’ascension de MJ jusqu’au sommet et d’un autre, ce qui a rendu la dernière saison exceptionnelle. Le choix risqué du montage alterné s’avère finalement efficace. Les nombreux témoignages rythment les images d’archives des premières saisons de Jordan avec les Bulls. La saison 98 à laquelle le titre fait référence a, elle, été filmée par une équipe documentaire. Pour naviguer entre deux progressions, Jason Hehir utilise une frise chronologique animée permettant au spectateur de se situer. Ainsi, jusqu’à ce que les deux récits mis en parallèle se rejoignent, le montage permet de tisser des liens concrets clarifiant le caractère exceptionnel de cette dernière saison. Le spectateur comprend comment l’un des plus grands succès sportifs du vingtième siècle s’est établi, depuis le moment où MJ s’est fait « drafter » jusqu’à son dernier tir entré dans la légende. Simple certes, mais redoutablement efficace pour relater ce type d’histoire.</p>\r\n\r\n<h3>2. La multiplication des témoignages</h3>\r\n\r\n<p>Difficile de compter le nombre de stars témoignant à l’écran. De Carmen Electra à Scottie Pippen en passant par Gary Payton, chacun des épisodes est rythmé par des interventions participant à la fluidité globale de l’ensemble. Surtout, c’est la diversité de ces témoignages qui évite de tomber dans le didactisme. Certains ont participé directement à l’épopée, d’autres viennent livrer un point de vue enrichissant sur une étape importante du récit. Il est notamment plaisant de voir Barack Obama venir expliquer ses regrets quant au manque d’implication politique de Jordan au début des années 90 et tout passionné de basket-ball se délectera des expertises techniques de Phil Jackson. En somme, en équilibre viable qui participe à l’hétérogénéité d’un ensemble harmonieux.</p>\r\n\r\n<p><img class=\"\" src=\"static/img/posts/thelastdance2.jpg\" alt=\"\" width=\"100%\" height=\"700\" /></p>\r\n\r\n<hr>\r\n\r\n<h3>3. La bascule vers l’extraordinaire</h3>\r\n\r\n<p>Il est légitime de douter de certaines anecdotes rapportées par Jordan : La pizza empoisonnée avant le titre de 97 par exemple ou le fait que Scott Burrell ait été privé de nourriture par le défenseur des Bulls. Cependant, on est tentés de croire à certaines péripéties quasi fictionnelles vécues par des acteurs de l’épopée. Dennis Rodman participe bien évidemment à cette dimension presque mystique qui rappelle les deux derniers films de Bennett Miller, Le Stratège (2011) et Foxcatcher (2014). En voyant l’ailier disparaître vers un combat de catch sous les yeux médusés de ses coéquipiers durant la finale de 98, on repense à la fuite en hélicoptère sous cocaïne de Steve Carell et Channing Tatum filmée par Miller. Loin de la fiction, les images et témoignages attestent la véracité des propos de Jordan à l’égard de son coéquipier et il est d’autant plus étonnant de voir « Rodzilla » dominer Karl Malone le lendemain d’une soirée arrosée. Il en est de même pour ces séquences où Jordan, pendant le tournage de Space Jam, invite ses coéquipiers à venir s’entraîner dans un gymnase construit pour l’occasion. Aussi invraisemblable que cela puisse paraître, ces histoires secondaires, qui sont bien éloignées de l’exemplarité sportive, rendent d’autant plus exceptionnelle cette dernière saison. Le documentaire s’approprie pleinement ces anecdotes pour rendre ces 10 épisodes encore plus divertissants et agréables à suivre.</p>\r\n\r\n<h3>4. Pour la beauté du geste</h3>\r\n\r\n<p>Il est évident que Jason Dehir allait s’appuyer sur des extraits de matchs cultes, en dehors des témoignages et des images d’archives. Sans tomber dans le piège consistant à enchaîner les instants de grâce où Jordan a étalé son talent aux yeux du monde, chacun des paniers choisis s’inscrit parfaitement dans un ensemble logique. Surtout, la parole est aussi donnée aux opposants et chacun des matchs diffusés sera sujet à des commentaires constructifs sur les phases de jeu et les choix tactiques. Il est plaisant de voir une pluralité de points de vue sur une même action ou sur la manière dont un moment décisif a été perçu. Qu’il s’agisse des coéquipiers de Jordan ou de ses adversaires, tous se prêtent au jeu et participent à la résurrection visuelle d’un univers sujet à la nostalgie et l’admiration. THE LAST DANCE parvient à rendre explicite la portée sacrée de ce sport sur le continent américain, cette religion de substitution qui alimente les passions. Nulle doute que la série va engendrer un profond intérêt pour la NBA en Europe.</p>\r\n\r\n<h3>5. Le mythe</h3>\r\n\r\n<p>Les polémiques n’ont eu de cesse de fleurir depuis la sortie des derniers épisodes. Horace Grant a déclaré que « 90% de la série » était fausse. Un point de vue certes intéressant mais dénué d’un quelconque intérêt, et ce pour plusieurs raisons. Si THE LAST DANCE se démarque d’autres séries, c’est par sa capacité à signer un portrait d’homme dans son intégralité. On aurait pu craindre un éloge exacerbé de Jordan, il n’en est rien. Au contraire, si on ne peut que tomber sous le charme de la légende au bout de ses dix épisodes, c’est en grande partie grâce à la sincérité qui se dégage de cette étude. Jordan va jusqu’à admettre qu’il ne s’est jamais positionné en politique, même en faveur d’un politicien engagé contre les discriminations raciales, alors que Barack Obama lui reproche ouvertement de ne pas avoir pris position. Lors de son retour à la compétition, suite à sa première retraite, le défenseur des bulls explique pourquoi il n’a jamais pu atteindre son niveau d’antan et ce en rentrant dans les détails et en reconnaissant ses torts. Les faits parlent aussi d’eux-mêmes : Jason Dehir s’applique à faire resurgir la tension lors des moments-clés, où Jordan a construit seul sa légende, en offrant des titres ou en appliquant sa propre philosophie, aussi discutable soit-elle. C’est d’ailleurs ses coéquipiers qui le reconnaissent au fil des épisodes : si MJ ne s’était pas comporté de la sorte avec eux, c’est-à-dire comme un tyran exigeant, il n’y aurait jamais eu de documentaire digne de ce nom à ce sujet. C’est aussi cette vision du sport si atypique qui rend ces 10 opus mémorables.</p>\r\n\r\n</br>\r\n\r\n\r\n\r\n\r\n', 'thelastdance.jpg', '2020-07-01 10:14:04');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(120) NOT NULL,
  `password` char(60) NOT NULL,
  `admin` int(11) DEFAULT NULL,
  `pseudo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `admin`, `pseudo`) VALUES
(8, 'test@test.com', '21e57080434c1cb6c2fb4753c4f8a28f', 0, 'Romain'),
(14, 'tom@gmail.com', '21e57080434c1cb6c2fb4753c4f8a28f', NULL, 'Tom');

-- --------------------------------------------------------

--
-- Structure de la table `votes`
--

DROP TABLE IF EXISTS `votes`;
CREATE TABLE IF NOT EXISTS `votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) NOT NULL,
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `vote` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
