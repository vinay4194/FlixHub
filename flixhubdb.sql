-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2020 at 02:33 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flixhub`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `image` text NOT NULL,
  `movie_page` text NOT NULL,
  `trailer` text NOT NULL,
  `description` text NOT NULL,
  `rating` float NOT NULL,
  `storyline` text NOT NULL,
  `country` text NOT NULL,
  `release_date` text NOT NULL,
  `genre` text NOT NULL,
  `director` text NOT NULL,
  `writers` text NOT NULL,
  `duration` text NOT NULL,
  `cast` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `name`, `image`, `movie_page`, `trailer`, `description`, `rating`, `storyline`, `country`, `release_date`, `genre`, `director`, `writers`, `duration`, `cast`) VALUES
(1, 'The Wolf of Wall Street (2013)', 'images/1.jpg', 'movie_page.php?mn=1', 'https://www.youtube.com/embed/iszwuX1AK6A', 'Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.', 8.2, 'In the early 1990s, Jordan Belfort teamed with his partner Donny Azoff and started brokerage firm Stratford-Oakmont. Their company quickly grows from a staff of 20 to a staff of more than 250 and their status in the trading community and Wall Street grows exponentially. So much that companies file their initial public offerings through them. As their status grows, so do the amount of substances they abuse, and so do their lies. They draw attention like no other, throwing lavish parties for their staff when they hit the jackpot on high trades. That ultimately leads to Belfort featured on the cover of Forbes Magazine, being called \"The Wolf Of Wall St.\". With the FBI onto Belfort\'s trading schemes, he devises new ways to cover his tracks and watch his fortune grow. Belfort ultimately comes up with a scheme to stash their cash in a European bank. But with the FBI watching him like a hawk, how long will Belfort and Azoff be able to maintain their elaborate wealth and luxurious lifestyles?', 'USA', '25 December 2013 (Canada)', 'Biography | Crime | Drama', 'Martin Scorsese', 'Terence Winter', '180 min', 'Leonardo DiCaprio, Jonah Hill, Margot Robbie'),
(2, 'The Fighter (2010)', 'images/2.jpg', 'movie_page.php?mn=2', 'https://www.youtube.com/embed/LRIZ4mCi5Ps', 'Based on the story of Micky Ward, a fledgling boxer who tries to escape the shadow of his more famous but troubled older boxing brother and get his own shot at greatness.', 7.8, 'The film, The Fighter, is based on a true story about the struggles of younger brother, Micky Ward, trying to live up to older brother\'s boxing legacy. Dicky Eklund, Micky Ward\'s older brother, was a boxing champion who became famous for knocking out Sugar Ray Leonard in a heart pounding, 1978, boxing match, at which Dicky eventually. The movie depicts the events that transpired after Dicky Eklund\'s success in 1996. Now, Eklund is long gone from his glory days; though, many of his die-hard fans would rather not believe so, especially his mother, Alice Ward. He has transformed into a crack addict with felonies of distribution and consumption of drugs and prostitution. Dicky Eklund remains Micky\'s boxing trainer despite his unreliability. Alice Ward has responsibility of managing her son, Micky Ward\'s, current boxing career as he strives to create his own success. Her main concerns are keeping business within the family while spoiling and ignoring Dicky through his drug problems. After a family blowout, realization from Micky\'s girlfriend, Charlene Fleming, and repeated failures in the ring, Micky discovers that his family is not in his best interest as a boxer. He begins seeking management and training from other professionals. In the meantime, Dicky finally goes to jail after a street fight with the police. While on the road to recovery, Micky\'s boxing career is also going through a turning point as he defeats more and more opponents in the ring. After reconciliation with Micky, Charlene, and the rest of the family, Dicky becomes Micky\'s trainer again for his biggest fight so far in his career. ', 'USA', '17 December 2010', 'Biography | Drama | Sport ', 'David O. Russell', 'Scott Silver', '116 min', 'Mark Wahlberg, Christian Bale, Amy Adams'),
(3, 'The Dark Knight (2008)', 'images/3.jpg', 'movie_page.php?mn=3', 'https://www.youtube.com/embed/EXeTwQWrcwY', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice', 9, 'The follow-up to Batman Begins (2005), this movie reunites Writer, Producer, and Director Christopher Nolan and Christian Bale, who reprises the role of Batman/Bruce Wayne in his continuing war on crime. With the help of Lieutenant James Gordon and District Attorney Harvey Dent, Batman sets out to destroy organized crime in Gotham for good. The triumvirate proves to be effective. But soon the three find themselves prey to a rising criminal mastermind known as \"The Joker\", who thrusts Gotham into anarchy and forces Batman closer to crossing the fine line between hero and vigilante.\r\n\r\nGotham\'s new District Attorney has been elected. His name is Harvey Dent, and he has a radical new agenda that threatens to take down Gotham\'s organized crime underworld once and for all with an iron fist. But the emergence of the rogue vigilante known as Batman has caused problems for Dent and his agenda. A new criminal mastermind known only as \"The Joker\" has arrived and aims to take Gotham out from under Harvey Dent\'s iron fist. The Joker stages a masterfully planned bank robbery and robs the Gotham mob blind. He uses this money to stage a series of horrific and strategic attacks against the city and its people, each one carefully planned and aimed at Dent and Batman, while causing the rest of the city to enter panic mode. Meanwhile, Batman thinks he might have found a lead to The Joker thanks to Wayne Enterprises\' dealings with a shady Chinese banker, and that takes Batman and Alfred to Hong Kong. The Joker has no rules, but Batman has only one, and the Joker aims to make Batman break his only rule. But who will be the one to take him out, will it be rogue vigilante Batman, or will it be elected official Harvey Dent, the new hero with a face?', 'USA | UK', '18 July 2008', 'Action | Crime | Drama ', 'Christopher Nolan', 'Jonathan Nolan', '152 min', 'Christian Bale, Heath Ledger, Aaron Eckhart '),
(4, 'Pulp Fiction (1994)', 'images/4.jpg', 'movie_page.php?mn=4', 'https://www.youtube.com/embed/tGpTpVyI_OQ', 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', 8.9, 'Jules Winnfield (Samuel L. Jackson) and Vincent Vega (John Travolta) are two hit men who are out to retrieve a suitcase stolen from their employer, mob boss Marsellus Wallace (Ving Rhames). Wallace has also asked Vincent to take his wife Mia (Uma Thurman) out a few days later when Wallace himself will be out of town. Butch Coolidge (Bruce Willis) is an aging boxer who is paid by Wallace to lose his fight. The lives of these seemingly unrelated people are woven together comprising of a series of funny, bizarre and uncalled-for incidents.', 'USA', '14 October 1994', 'Crime | Drama', 'Quentin Tarantino', 'Quentin Tarantino (stories), Roger Avary', '154 min | 178 min (original cut)', 'John Travolta, Uma Thurman, Samuel L. Jackson '),
(5, 'Inception (2010)', 'images/5.jpg', 'movie_page.php?mn=5', 'https://www.youtube.com/embed/8hP9D6kZseM', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.', 8.8, 'Dom Cobb is a skilled thief, the absolute best in the dangerous art of extraction, stealing valuable secrets from deep within the subconscious during the dream state, when the mind is at its most vulnerable. Cobb\'s rare ability has made him a coveted player in this treacherous new world of corporate espionage, but it has also made him an international fugitive and cost him everything he has ever loved. Now Cobb is being offered a chance at redemption. One last job could give him his life back but only if he can accomplish the impossible, inception. Instead of the perfect heist, Cobb and his team of specialists have to pull off the reverse: their task is not to steal an idea, but to plant one. If they succeed, it could be the perfect crime. But no amount of careful planning or expertise can prepare the team for the dangerous enemy that seems to predict their every move. An enemy that only Cobb could have seen coming.', ' USA | UK', '16 July 2010 ', 'Action | Adventure | Sci-Fi | Thriller', 'Christopher Nolan', 'Christopher Nolan', ' 148 min', ' Leonardo DiCaprio, Joseph Gordon-Levitt, Elliot Page '),
(6, 'Fight Club (1999)', 'images/6.jpg', 'movie_page.php?mn=6', 'https://www.youtube.com/embed/qtRKdVHc-cE', 'An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.', 8.8, 'A nameless first person narrator (Edward Norton) attends support groups in attempt to subdue his emotional state and relieve his insomniac state. When he meets Marla (Helena Bonham Carter), another fake attendee of support groups, his life seems to become a little more bearable. However when he associates himself with Tyler (Brad Pitt) he is dragged into an underground fight club and soap making scheme. Together the two men spiral out of control and engage in competitive rivalry for love and power. When the narrator is exposed to the hidden agenda of Tyler\'s fight club, he must accept the awful truth that Tyler may not be who he says he is.', 'USA | Germany | Italy', '15 October 1999', ' Drama', 'David Fincher', 'Chuck Palahniuk (novel), Jim Uhls', '139 min | 151 min (workprint)', ' Brad Pitt, Edward Norton, Meat Loaf '),
(7, 'Goodfellas (1990)', 'images/7.jpg', 'movie_page.php?mn=7', 'https://www.youtube.com/embed/2ilzidi_J8Q', 'The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate.', 8.7, 'Henry Hill might be a small time gangster, who may have taken part in a robbery with Jimmy Conway and Tommy De Vito, two other gangsters who might have set their sights a bit higher. His two partners could kill off everyone else involved in the robbery, and slowly start to think about climbing up through the hierarchy of the Mob. Henry, however, might be badly affected by his partners\' success, but will he consider stooping low enough to bring about the downfall of Jimmy and Tommy?', 'USA', '19 September 1990', 'Biography | Crime | Drama', 'Martin Scorsese', 'Nicholas Pileggi (book), Nicholas Pileggi ', '146 min', 'Robert De Niro, Ray Liotta, Joe Pesci'),
(8, 'City of God (2002)', 'images/8.jpg', 'movie_page.php?mn=8', 'https://www.youtube.com/embed/dcUOO4Itgmw', 'In the slums of Rio, two kids\' paths diverge as one struggles to become a photographer and the other a kingpin.', 8.6, 'Brazil, 1960s, City of God. The Tender Trio robs motels and gas trucks. Younger kids watch and learn well...too well. 1970s: Li\'l Zé has prospered very well and owns the city. He causes violence and fear as he wipes out rival gangs without mercy. His best friend Bené is the only one to keep him on the good side of sanity. Rocket has watched these two gain power for years, and he wants no part of it. he keeps getting swept up in the madness. All he wants to do is take pictures. 1980s: Things are out of control between the last two remaining gangs...will it ever end? Welcome to the City of God', 'Brazil | France | Germany', '18 May 2002 (Cannes Film Festival)\r\n', 'Crime | Drama', 'Fernando Meirelles, Kátia Lund (co-director)', 'Paulo Lins (novel), Bráulio Mantovani ', '130 min | 135 min', 'Alexandre Rodrigues, Leandro Firmino, '),
(9, 'Saving Private Ryan (1998)', 'images/9.jpg', 'movie_page.php?mn=9', 'https://www.youtube.com/embed/9CiW_DgxCnQ', 'Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action.', 8.6, 'Opening with the Allied invasion of Normandy on 6 June 1944, members of the 2nd Ranger Battalion under Cpt. Miller fight ashore to secure a beachhead. Amidst the fighting, two brothers are killed in action. Earlier in New Guinea, a third brother is KIA. Their mother, Mrs. Ryan, is to receive all three of the grave telegrams on the same day. The United States Army Chief of Staff, George C. Marshall, is given an opportunity to alleviate some of her grief when he learns of a fourth brother, Private James Ryan, and decides to send out 8 men (Cpt. Miller and select members from 2nd Rangers) to find him and bring him back home to his mother.', ' USA', '24 July 1998', 'Drama | War', 'Steven Spielberg', 'Robert Rodat', '169 min', 'Tom Hanks, Matt Damon, Tom Sizemore '),
(10, 'Gladiator (2000)', 'images/10.jpg', 'movie_page.php?mn=10', 'https://www.youtube.com/embed/owK1qxDselE', 'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.', 8.5, 'Maximus is a powerful Roman general, loved by the people and the aging Emperor, Marcus Aurelius. Before his death, the Emperor chooses Maximus to be his heir over his own son, Commodus, and a power struggle leaves Maximus and his family condemned to death. The powerful general is unable to save his family, and his loss of will allows him to get captured and put into the Gladiator games until he dies. The only desire that fuels him now is the chance to rise to the top so that he will be able to look into the eyes of the man who will feel his revenge', 'USA | UK | Malta | Morocco', '1 September 2000 (India)', 'Action | Adventure | Drama', 'Ridley Scott', 'David Franzoni, David Franzoni (screenplay)', '155 min | 171 min (Extended Edition)', 'Russell Crowe, Joaquin Phoenix, Connie Nielsen '),
(11, 'The Usual Suspects (1995)', 'images/11.jpg', 'movie_page.php?mn=11', 'https://www.youtube.com/embed/oiXdPolca5w', 'A sole survivor tells of the twisty events leading up to a horrific gun battle on a boat, which began when five criminals met at a seemingly random police lineup.', 8.5, 'Following a truck hijack in New York, five criminals are arrested and brought together for questioning. As none of them are guilty, they plan a revenge operation against the police. The operation goes well, but then the influence of a legendary mastermind criminal called Keyser Söze is felt. It becomes clear that each one of them has wronged Söze at some point and must pay back now. The payback job leaves 27 men dead in a boat explosion, but the real question arises now: Who actually is Keyser Söze?', 'USA | Germany', '10 May 1996 (India)', 'Crime | Mystery | Thriller', 'Bryan Singer', ' Christopher McQuarrie', '106 min', 'Kevin Spacey, Gabriel Byrne, Chazz Palminteri |'),
(12, 'Django Unchained (2012)', 'images/12.jpg', 'movie_page.php?mn=12', 'https://www.youtube.com/embed/_iH0UBYDI4g', 'With the help of a German bounty hunter, a freed slave sets out to rescue his wife from a brutal Mississippi plantation owner.', 8.4, 'In 1858, a bounty hunter named Schultz seeks out a slave named Django and buys him because he needs him to find some men he is looking for. After finding them, Django wants to find his wife, Broomhilda, who along with him were sold separately by his former owner for trying to escape. Schultz offers to help him if he chooses to stay with him and be his partner. Eventually they learn that she was sold to a plantation in Mississippi. Knowing they can\'t just go in and say they want her, they come up with a plan so that the owner will welcome them into his home and they can find a way', 'USA', '25 December 2012 ', 'Drama | Western', 'Quentin Tarantino', 'Quentin Tarantino', '165 min', 'Jamie Foxx, Christoph Waltz, Leonardo DiCaprio '),
(13, 'Apocalypse Now (1979)', 'images/13.jpg', 'movie_page.php?mn=13', 'https://www.youtube.com/embed/9l-ViOOFH-s', 'A U.S. Army officer serving in Vietnam is tasked with assassinating a renegade Special Forces Colonel who sees himself as a god.', 8.4, 'It is the height of the war in Vietnam, and U.S. Army Captain Willard is sent by Colonel Lucas and a General to carry out a mission that, officially, \'does not exist - nor will it ever exist\'. The mission: To seek out a mysterious Green Beret Colonel, Walter Kurtz, whose army has crossed the border into Cambodia and is conducting hit-and-run missions against the Viet Cong and NVA. The army believes Kurtz has gone completely insane and Willard\'s job is to eliminate him. Willard, sent up the Nung River on a U.S. Navy patrol boat, discovers that his target is one of the most decorated officers in the U.S. Army. His crew meets up with surfer-type Lt-Colonel Kilgore, head of a U.S Army helicopter cavalry group which eliminates a Viet Cong outpost to provide an entry point into the Nung River. After some hair-raising encounters, in which some of his crew are killed, Willard, Lance and Chef reach Colonel Kurtz\'s outpost, beyond the Do Lung Bridge. Now, after becoming prisoners of Kurtz, will Willard & the others be able to fulfill their mission?', 'USA', '15 August 1979', 'Drama | Mystery | War', 'Francis Ford Coppola ', 'John Milius, Francis Ford Coppola', '147 min | 196 min (Redux) ', 'Martin Sheen, Marlon Brando, Robert Duvall '),
(14, 'Reservoir Dogs (1992)', 'images/14.jpg', 'movie_page.php?mn=14', 'https://www.youtube.com/embed/vayksn4Y93A', 'When a simple jewelry heist goes horribly wrong, the surviving criminals begin to suspect that one of them is a police informant.', 8.3, 'Six criminals, who are strangers to each other, are hired by a crime boss, Joe Cabot, to carry out a diamond robbery. Right at the outset, they are given false names with the intention that they won\'t get too close and will concentrate on the job instead. They are completely sure that the robbery is going to be a success. But, when the police show up right at the time and the site of the robbery, panic spreads amongst the group members, and two of them are killed in the subsequent shootout, along with a few policemen and civilians. When the remaining people assemble at the premeditated rendezvous point (a warehouse), they begin to suspect that one of them is an undercover cop.', 'USA', '2 September 1992 (India)', 'Crime | Drama | Thriller', 'Quentin Tarantino', 'Quentin Tarantino', '99 min', 'Harvey Keitel, Tim Roth, Michael Madsen'),
(15, 'Taxi Driver (1976)', 'images/15.jpg', 'movie_page.php?mn=15', 'https://www.youtube.com/embed/UUxD4-dEzn0', 'A mentally unstable veteran works as a nighttime taxi driver in New York City, where the perceived decadence and sleaze fuels his urge for violent action by attempting to liberate a presidential campaign worker and an underage prostitute.', 8.3, 'Travis Bickle is an ex-Marine and Vietnam War veteran living in New York City. As he suffers from insomnia, he spends his time working as a taxi driver at night, watching porn movies at seedy cinemas during the day, or thinking about how the world, New York in particular, has deteriorated into a cesspool. He\'s a loner who has strong opinions about what is right and wrong with mankind. For him, the one bright spot in New York humanity is Betsy, a worker on the presidential nomination campaign of Senator Charles Palantine. He becomes obsessed with her. After an incident with her, he believes he has to do whatever he needs to make the world a better place in his opinion. One of his priorities is to be the savior for Iris, a twelve-year-old runaway and prostitute who he believes wants out of the profession and under the thumb of her pimp and lover Matthew', 'USA', ' 19 March 1976', ' Crime | Drama', 'Martin Scorsese', 'Paul Schrader', '114 min ', 'Robert De Niro, Jodie Foster, Cybill Shepherd '),
(16, 'There Will Be Blood (2007)', 'images/16.jpg', 'movie_page.php?mn=16', 'https://www.youtube.com/embed/0FIm5ATyAY0', 'A story of family, religion, hatred, oil and madness, focusing on a turn-of-the-century prospector in the early days of the business.', 8.2, 'The intersecting life stories of Daniel Plainview and Eli Sunday in early twentieth century California is presented. Miner turn oilman Daniel Plainview is a driven man who will do whatever it takes to achieve his goals. He works hard but he also takes advantage of those around him at their expense if need be. His business partner is his son H.W., who in reality he \"acquired\" when H.W.\'s biological single father, who worked on one of Daniel\'s rigs, got killed in a workplace accident. Daniel is deeply protective of H.W. if only for what H.W. brings to the partnership. Eli Sunday is one in a pair of twins, whose family farm Daniel purchases for the major oil deposit located on it. Eli, the local preacher and a self-proclaimed faith healer, wants the money from the sale of the property to finance his own church. The lives of the two competitive men often clash as Daniel pumps oil off the property and tries to acquire all the surrounding land at bargain prices to be able to build a pipeline to the coast, and as Eli tries to build his own religious empire.', 'USA', '27 September 2007 ', 'Drama', 'Paul Thomas Anderson', ' Paul Thomas Anderson  ', '158 min', ' Daniel Day-Lewis, Paul Dano, Ciarán Hinds'),
(17, 'Nightcrawler (2014)', 'images/17.jpg', 'movie_page.php?mn=17', 'https://www.youtube.com/embed/u1uP_8VJkDQ', 'When Louis Bloom, a con man desperate for work, muscles into the world of L.A. crime journalism, he blurs the line between observer and participant to become the star of his own story.', 7.9, 'NIGHTCRAWLER is a thriller set in the nocturnal underbelly of contemporary Los Angeles. Jake Gyllenhaal stars as Lou Bloom, a driven young man desperate for work who discovers the high-speed world of L.A. crime journalism. Finding a group of freelance camera crews who film crashes, fires, murder and other mayhem, Lou muscles into the cut-throat, dangerous realm of nightcrawling - where each police siren wail equals a possible windfall and victims are converted into dollars and cents. Aided by Rene Russo as Nina, a veteran of the blood-sport that is local TV news, Lou blurs the line between observer and participant to become the star of his own story.', 'USA', '31 October 2014 ', 'Crime | Drama | Thriller', 'Dan Gilroy', 'Dan Gilroy', ' 117 min', 'Jake Gyllenhaal, Rene Russo, Bill Paxton'),
(18, 'Mad Max: Fury Road (2015)', 'images/18.jpg', 'movie_page.php?mn=18', 'https://www.youtube.com/embed/hEJnMQG9ev8', 'In a post-apocalyptic wasteland, a woman rebels against a tyrannical ruler in search for her homeland with the aid of a group of female prisoners, a psychotic worshiper, and a drifter named Max.', 8.1, 'An apocalyptic story set in the furthest reaches of our planet, in a stark desert landscape where humanity is broken, and almost everyone is crazed fighting for the necessities of life. Within this world exist two rebels on the run who just might be able to restore order. There\'s Max, a man of action and a man of few words, who seeks peace of mind following the loss of his wife and child in the aftermath of the chaos. And Furiosa, a woman of action and a woman who believes her path to survival may be achieved if she can make it across the desert back to her childhood homeland.', 'Australia | South Africa | USA', '15 May 2015 ', 'Action | Adventure | Sci-Fi | Thriller', 'George Miller', 'George Miller, Brendan McCarthy', '120 min', 'Tom Hardy, Charlize Theron, Nicholas Hoult'),
(19, 'Into the Wild (2007)', 'images/19.jpg', 'movie_page.php?mn=19', 'https://www.youtube.com/embed/XZG1FzyB8DI', 'After graduating from Emory University, top student and athlete Christopher McCandless abandons his possessions, gives his entire $24,000 savings account to charity and hitchhikes to Alaska to live in the wilderness. Along the way, Christopher encounters a series of characters that shape his life.', 8.1, 'A young man bravely sets out alone on what turns into a majestic journey to explore the beauty and wonder of the world. Throughout his travels, which ultimatelty lead him into the wild and wilderness, he seeks and ultimately finds pleasure and joy along with a sense of truth and purpose he has been yearning for all his life. Along the way he meets and deeply touches a cast of others who are all in their own ways also looking to escape or move on from the past and enjoy life again.', 'USA', '28 September 2007 ', 'Adventure | Biography | Drama', ' Sean Penn', ' Sean Penn | Jon Krakauer (book)', '148 min', 'Emile Hirsch, Vince Vaughn, Catherine Keener'),
(20, 'Ran (1985)', 'images/20.jpg', 'movie_page.php?mn=20', 'https://www.youtube.com/embed/Dd-k9URvO0Q', 'In Medieval Japan, an elderly warlord retires, handing over his empire to his three sons. However, he vastly underestimates how the new-found power will corrupt them and cause them to turn on each other...and him.', 8.2, 'Japanese warlord Hidetori Ichimonji decides the time has come to retire and divide his fiefdom among his three sons. His eldest and middle sons - Taro and Jiro - agree with his decision and promise to support him for his remaining days. The youngest son Saburo disagrees with all of them arguing that there is little likelihood the three brothers will remain united. Insulted by his son\'s brashness, the warlord banishes Saburo. As the warlord begins his retirement, he quickly realizes that his two eldest sons selfish and have no intention of keeping their promises. It leads to war and only banished Saburo can possibly save him.', 'Japan | France', '1 June 1985 (Japan', 'Action | Drama | War', 'Akira Kurosawa', 'Akira Kurosawa|Hideo Oguni (screenplay)', '162 min', 'Tatsuya Nakadai, Akira Terao, Jinpachi Nezu ');

-- --------------------------------------------------------

--
-- Table structure for table `queries`
--

CREATE TABLE `queries` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `queries`
--

INSERT INTO `queries` (`id`, `name`, `email`, `message`) VALUES
(1, 'Jack', 'jack@gmail.com', 'Hello.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `dob` date NOT NULL,
  `movies` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `dob`, `movies`) VALUES
(2, 'Jack 1', 'jack@gmail.com', '1234567', '2010-11-01', 'The Fighter (2010),Pulp Fiction (1994),Goodfellas (1990)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `queries`
--
ALTER TABLE `queries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `queries`
--
ALTER TABLE `queries`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
