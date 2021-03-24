##### Creating default genres:
Action = Genre.create!(name: 'Action')
Adventure = Genre.create!(name: 'Adventure')
Comedy = Genre.create!(name: 'Comedy')
Drama = Genre.create!(name: 'Drama')
Fantasy = Genre.create!(name: 'Fantasy')
Supernatural = Genre.create!(name: 'Supernatural')
Mystery = Genre.create!(name: 'Mystery')
Psychological = Genre.create!(name: 'Psychological')
Thriller = Genre.create!(name: 'Thriller')
Horror = Genre.create!(name: 'Horror')
Music = Genre.create!(name: 'Music')
Romance = Genre.create!(name: 'Romance')
Mecha = Genre.create!(name:'Mecha')
Sci_fi = Genre.create!(name:'Sci-Fi')
Ecchi = Genre.create!(name:'Ecchi')
Life = Genre.create!(name:'Slice of Life')
Sports = Genre.create!(name:'Sports')
Mahou_Shoujo = Genre.create!(name:'Mahou Shoujo')

##### Creating contents
#For 'Shigatsu wa kimi no uso' series:
Shigatsu_wa_kimi_no_uso_anime = Content.create!(category: 'anime',
                                                name: 'Shigatsu wa Kimi no Uso',
                                                start_date: '10/10/2014',
                                                end_date: '20/03/2017',
                                                tags: 'musical, tragedy, rehabilitaion, love triangle',
                                                description: "Piano prodigy Arima Kosei dominated the competition and all child musicians knew his name. But after his mother, who was also his instructor, passed away, he had a mental breakdown while performing at a recital. This resulted in him no longer being able to hear the sound of his piano playing. Two years later, Kosei hasn’t touched the piano and views the world without any flair or color. He was content at living out his life with his good friends Tsubaki and Watari until, one day, a girl changed everything. Miyazono Kaori is a pretty, free spirited violinist whose playing style reflects her personality. Kaori helps Kosei return to the music world and show that it should be free and mold breaking unlike the structured and rigid style Kosei was used to.",
                                                image: 'https://i.pinimg.com/originals/fc/d6/ca/fcd6caaa92e4dfe17ac0196d498ee88b.jpg',
                                                volume_or_season_number: '1',
                                                episode_or_chapter_number: '22',
                                                link_to_watch_or_read: 'https://www.crunchyroll.com/your-lie-in-april',
                                                rating: '9.6',
                                                rating_number: 1223)
Shigatsu_wa_kimi_no_uso_anime.categories << Drama
Shigatsu_wa_kimi_no_uso_anime.categories << Music
Shigatsu_wa_kimi_no_uso_anime.categories << Romance
Shigatsu_wa_kimi_no_uso_anime.categories << Life

Shigatsu_wa_kimi_no_uso_manga = Content.create!(category: 'manga',
                                                name: 'Shigatsu wa Kimi no Uso',
                                                start_date: '06/04/2011',
                                                end_date: '06/02/2015',
                                                tags: 'musical, tragedy, rehabilitaion, love triangle',
                                                description: "Kosei Arima was a piano prodigy until his cruel taskmaster of a mother died suddenly, changing his life forever. Driven by his pain to abandon piano, Kosei now lives in a monotonous, colorless world. Having resigned himself to a bland life, he is surprised when he meets Kaori Miyazono, a violinist with an unorthodox style. Can she bring Kosei back to music, and back to life? ",
                                                image: 'https://cdn.anisearch.de/images/manga/cover/full/11/11580.jpg',
                                                volume_or_season_number: '11',
                                                episode_or_chapter_number: '44',
                                                link_to_watch_or_read: '',
                                                rating: '8.7',
                                                rating_number: 1009)
Shigatsu_wa_kimi_no_uso_manga.categories << Drama
Shigatsu_wa_kimi_no_uso_manga.categories << Music
Shigatsu_wa_kimi_no_uso_manga.categories << Romance

#For 'Violet Evergarden':
Violet_anime = Content.create!( category: 'anime',
                          name: 'Violet Evergarden',
                          start_date: '11/01/2018',
                          end_date: '05/04/2018',
                          tags: 'rehabilition, writing, tragedy, war, work, military',
                          description: "A certain point in time, in the continent of Telesis. The great war which divided the continent into North and South has ended after four years, and the people are welcoming a new generation. Violet Evergarden, a young girl formerly known as “the weapon”, has left the battlefield to start a new life at CH Postal Service. There, she is deeply moved by the work of “Auto Memories Dolls”, who carry people's thoughts and convert them into words. Violet begins her journey as an Auto Memories Doll, and comes face to face with various people's emotions and differing shapes of love. There are words Violet heard on the battlefield, which she cannot forget. These words were given to her by someone she holds dear, more than anyone else. She does not yet know their meaning but she searches to find it.",
                          image: 'https://i.pinimg.com/originals/57/15/0d/57150d15b50015e6394781ba7fa5dd7a.jpg',
                          volume_or_season_number: '1',
                          episode_or_chapter_number: '13',
                          link_to_watch_or_read: 'https://www.netflix.com/ch-en/title/80182123',
                          rating: 9.5,
                          rating_number: 960)
Violet_anime.categories << Drama
Violet_anime.categories << Fantasy
Violet_anime.categories << Life

#For 'Naruto' series:
Naruto_anime = Content.create!(category: 'anime',
                               name: 'Naruto',
                               start_date: '03/10/2002',
                               end_date: '08/02/2007',
                               tags: 'ninja, shounen, super power, tragedy, body horror',
                               description: "Naruto Uzumaki, a hyperactive and knuckle-headed ninja, lives in Konohagakure, the Hidden Leaf village. 
                               Moments prior to his birth, a huge demon known as the Kyuubi, the Nine-tailed Fox, attacked Konohagakure and wreaked havoc. 
                               In order to put an end to the Kyuubi's rampage, the leader of the village, the 4th Hokage, 
                               sacrificed his life and sealed the monstrous beast inside the newborn Naruto. 
                               Shunned because of the presence of the Kyuubi inside him, Naruto struggles to find his place in the village. 
                               He strives to become the Hokage of Konohagakure, and he meets many friends and foes along the way.",
                               image: 'https://cdn.myanimelist.net/images/anime/13/17405.jpg',
                               volume_or_season_number: '5',
                               episode_or_chapter_number: '220',
                               link_to_watch_or_read: 'https://www.crunchyroll.com/naruto',
                               rating:7.3, rating_number: 18)
Naruto_anime.categories << Action
Naruto_anime.categories << Comedy

Naruto_Shippuuden_anime = Content.create!(category: 'anime',
                                          name: 'Naruto: Shippuuden',
                                          start_date: '15/02/2007',
                                          end_date: '23/03/2017',
                                          tags: 'ninja, shounen, super power, revenge, body horror, war',
                                          description: 'Naruto: Shippuuden is the continuation of the original animated TV series Naruto. 
                                          The story revolves around an older and slightly more matured Uzumaki Naruto and his quest to save his friend Uchiha Sasuke from the grips of the snake-like Shinobi, Orochimaru. 
                                          After 2 and a half years Naruto finally returns to his village of Konoha, and sets about putting his ambitions to work, though it will not be easy, as he has amassed a few (more dangerous) enemies, 
                                          in the likes of the shinobi organization; Akatsuki.',
                                          image: 'https://tse2.mm.bing.net/th?id=OIP.zL5W8K-JBPzX5g7h-S2-sQHaLH&pid=Api&P=0&w=300&h=300',
                                          volume_or_season_number: '21',
                                          episode_or_chapter_number: '500',
                                          link_to_watch_or_read: 'https://www.crunchyroll.com/naruto-shippuden',
                                          rating:8.2, rating_number: 7)
Naruto_Shippuuden_anime.categories << Action
Naruto_Shippuuden_anime.categories << Comedy

Naruto_manga = Content.create!( category: 'manga',
                                name: 'Naruto',
                                start_date: '21/09/1999',
                                end_date: '10/11/2014',
                                tags: 'shounen. ninja, revenge, super power, tragedy, martial arts',
                                description: "Before Naruto's birth, a great demon fox had attacked the Hidden Leaf Village. A man known as the 4th Hokage sealed the demon inside the newly born Naruto, causing him to unknowingly grow up detested by his fellow villagers. Despite his lack of talent in many areas of ninjutsu, Naruto strives for only one goal: to gain the title of Hokage, the strongest ninja in his village. Desiring the respect he never received, Naruto works towards his dream with fellow friends Sasuke and Sakura and mentor Kakashi as they go through many trials and battles that come with being a ninja. ",
                                image: 'https://d28hgpri8am2if.cloudfront.net/book_images/cvr9781569319000_9781569319000_hr.jpg',
                                volume_or_season_number: '72',
                                episode_or_chapter_number: '700',
                                link_to_watch_or_read: '',
                                rating:8.4, rating_number: 21)
Naruto_manga.categories << Action
Naruto_manga.categories << Adventure
  
#For 'Kimetsu no Yaiba' series:
Demon_Slayer_anime = Content.create!( category: 'anime',
                                      name: 'Kimetsu no Yaiba',
                                      start_date: '06/04/2019',
                                      end_date: '',
                                      tags: 'demons, shounen, swordplay, tragedy, mythology, body horror',
                                      description: "Ever since the death of his father, the burden of supporting the family has fallen upon Tanjirou Kamado's shoulders. $
                                      Though living impoverished on a remote mountain, the Kamado family are able to enjoy a relatively peaceful and happy life. One day, 
                                      Tanjirou decides to go down to the local village to make a little money selling charcoal. 
                                      On his way back, night falls, forcing Tanjirou to take shelter in the house of a strange man, 
                                      who warns him of the existence of flesh-eating demons that lurk in the woods at night.

                                      When he finally arrives back home the next day, he is met with a horrifying sight—his whole family has been slaughtered. 
                                      Worse still, the sole survivor is his sister Nezuko, who has been turned into a bloodthirsty demon. 
                                      Consumed by rage and hatred, Tanjirou swears to avenge his family and stay by his only remaining sibling. 
                                      Alongside the mysterious group calling themselves the Demon Slayer Corps, Tanjirou will do whatever it takes to slay the demons and protect the remnants of his beloved sister's humanity.",
                                      image: 'https://images-na.ssl-images-amazon.com/images/I/61d7l-OfEsL._AC_SX522_.jpg',
                                      volume_or_season_number: '2',
                                      episode_or_chapter_number: '26',
                                      link_to_watch_or_read: 'https://www.hulu.com/series/demon-slayer-kimetsu-no-yaiba-2c3e4b00-30d9-434d-bccc-cf346e40e868',
                                      rating:9.4, rating_number: 15)
Demon_Slayer_anime.categories << Action
Demon_Slayer_anime.categories << Adventure
Demon_Slayer_anime.categories << Drama
Demon_Slayer_anime.categories << Supernatural
Demon_Slayer_anime.categories << Fantasy
Demon_Slayer_anime.categories << Mystery

Demon_Slayer_manga = Content.create!( category: 'manga',
                                      name: 'Kimetsu no Yaiba',
                                      start_date: '15/02/2016',
                                      end_date: '18/05/2020',
                                      tags: 'demons, shounen, tragedy, body horror',
                                      description: "The setting is Taisho era Japan. Tanjirou is a kindhearted young boy who lived peacefully with his family as a coal seller. Their normal life changes completely when his family is slaughtered by demons. The only other survivor, Tanjirou's younger sister Nezuko, has become a ferocious demon. In order to return Nezuko to normal and get revenge on the demon that killed their family, the two of them depart on a journey. From a young talent, an adventure tale of blood and swords begins!",
                                      image: 'https://images-na.ssl-images-amazon.com/images/I/81ZNkhqRvVL.jpg',
                                      volume_or_season_number: '23',
                                      episode_or_chapter_number: '208',
                                      link_to_watch_or_read: '',
                                      rating:8.8, rating_number: 28)
Demon_Slayer_manga.categories << Action
Demon_Slayer_manga.categories << Adventure
Demon_Slayer_manga.categories << Drama
Demon_Slayer_manga.categories << Supernatural

#For 'Yakusoku no NeverLand' series:
Promise_Neverland_anime = Content.create!(category: 'anime',
                                          name: 'Yakusoku no Neverland',
                                          start_date: '10/01/2019',
                                          end_date: '',
                                          tags: 'dystopian, survival, tragedy, cosmic horror',
                                          description: "Emma, Norman and Ray are the brightest kids at the Grace Field House orphanage. And under the care of the woman they refer to as “Mom,” all the kids have enjoyed a comfortable life. Good food, clean clothes and the perfect environment to learn—what more could an orphan ask for? One day, though, Emma and Norman uncover the dark truth of the outside world they are forbidden from seeing. ",
                                          image: 'https://cdn.myanimelist.net/images/anime/1125/96929.jpg',
                                          volume_or_season_number: '2',
                                          episode_or_chapter_number: '12',
                                          link_to_watch_or_read: 'https://www.hulu.com/series/the-promised-neverland-3ef087c6-d967-4495-9730-b5ff54ded8e0',
                                          rating:7.7, rating_number: 13)
Promise_Neverland_anime.categories << Drama
Promise_Neverland_anime.categories << Fantasy
Promise_Neverland_anime.categories << Horror
Promise_Neverland_anime.categories << Mystery
Promise_Neverland_anime.categories << Psychological
Promise_Neverland_anime.categories << Thriller

Promise_Neverland_manga = Content.create!(category: 'manga',
                                          name: 'Yakusuko no Neverland',
                                          start_date: '01/08/2016',
                                          end_date: '15/06/2020',
                                          tags: 'demons, dystopian, survival, war, politics, shounen',
                                          description: 'Emma, Norman and Ray are the brightest kids at the Grace Field House orphanage. And under the care of the woman they refer to as “Mom,” all the kids have enjoyed a comfortable life. Good food, clean clothes and the perfect environment to learn—what more could an orphan ask for? One day, though, Emma and Norman uncover the dark truth of the outside world they are forbidden from seeing.',
                                          image: 'https://cdn.myanimelist.net/images/manga/3/186922.jpg',
                                          volume_or_season_number: '20',
                                          episode_or_chapter_number: '181',
                                          link_to_watch_or_read: 'http://books.shueisha.co.jp/items/contents.html?isbn=978-4-08-880872-7',
                                          rating:7.1, rating_number: 12)
Promise_Neverland_manga.categories << Fantasy
Promise_Neverland_manga.categories << Mystery
Promise_Neverland_manga.categories << Psychological
Promise_Neverland_manga.categories << Thriller

#For 'Hagane no Renkinjutsushi' series:
Full_Metal_manga = Content.create!( category: 'manga',
                                    name: 'Hagane no Renkinjutsushi ',
                                    start_date: '12/07/2001',
                                    end_date: '11/07/2010',
                                    tags: 'military, shounen, politics, philosophy, war, tragedy, guns, super power, chimera, historical',
                                    description: "In this world, alchemists are those who study and perform the art of alchemical transmutation—the science of manipulating and transforming matter. They are bounded by the Law of Equivalent Exchange: in order to gain something, one must sacrifice something of equal value.

                                    Young Edward Elric, nicknamed the \"Fullmetal Alchemist\", is a State Alchemist working for the government of Amestris. As a child, Edward and his little brother Alphonse attempted the forbidden art of human transmutation to revive their late mother. In the accident that ensued, Edward lost his left leg and right arm, and Alphonse's soul was sealed in a large suit of armor. To reclaim their original bodies, the Elric brothers embark on a journey to find the Philosopher's Stone, a mythical object said to allow its user to perform alchemical miracles.",
                                    image: 'https://vignette.wikia.nocookie.net/fma/images/c/c3/Manga-indonesian.jpg/revision/latest?cb=20171104145447',
                                    volume_or_season_number: '27',
                                    episode_or_chapter_number: '116',
                                    link_to_watch_or_read: '',
                                    rating:7.3, rating_number: 19)
Full_Metal_manga.categories << Action
Full_Metal_manga.categories << Adventure
Full_Metal_manga.categories << Comedy
Full_Metal_manga.categories << Drama
Full_Metal_manga.categories << Fantasy

Full_Metal_anime1 = Content.create!(category: 'anime',
                                    name: 'Hagane no Renkinjutsushi: Brotherhood',
                                    start_date: '05/04/2009',
                                    end_date: '04/07/2010',
                                    tags: 'military, shounen, politics, magic, philosophy, war, tragedy, guns, chimera',
                                    description: "\"In order for something to be obtained, something of equal value must be lost.\"
                                    Alchemy is bound by this Law of Equivalent Exchange—something the young brothers Edward and Alphonse Elric only realize after attempting human transmutation: the one forbidden act of alchemy. They pay a terrible price for their transgression—Edward loses his left leg, Alphonse his physical body. It is only by the desperate sacrifice of Edward's right arm that he is able to affix Alphonse's soul to a suit of armor. Devastated and alone, it is the hope that they would both eventually return to their original bodies that gives Edward the inspiration to obtain metal limbs called \"automail\" and become a state alchemist, the Fullmetal Alchemist.",
                                    image: 'https://cdn.myanimelist.net/images/anime/1223/96541.jpg',
                                    volume_or_season_number: '1',
                                    episode_or_chapter_number: '64',
                                    link_to_watch_or_read: 'https://www.crunchyroll.com/fullmetal-alchemist-brotherhood/episode-1-fullmetal-alchemist-718109',
                                    rating: 9.0,
                                    rating_number: 10)
Full_Metal_anime1.categories << Action
Full_Metal_anime1.categories << Adventure
Full_Metal_anime1.categories << Drama
Full_Metal_anime1.categories << Fantasy

Full_Metal_anime2 = Content.create!(category: 'anime',
                                    name: 'Hagane no Renkinjutsushi ',
                                    start_date: '04/10/2003',
                                    end_date: '02/10/2004',
                                    tags: 'magic, shounen, politics, philosophy, war, tragedy, chimera',
                                    description: "The rules of alchemy state that to gain something, one must lose something of equal value. Alchemy is the process of taking apart and reconstructing an object into a different entity, with the rules of alchemy to govern this procedure. However, there exists an object that can bring any alchemist above these rules, the object known as the Philosopher's Stone. The young Edward Elric is a particularly talented alchemist who through an accident years back lost his younger brother Alphonse and one of his legs. Sacrificing one of his arms as well, he used alchemy to bind his brother's soul to a suit of armor. This lead to the beginning of their journey to restore their bodies, in search for the legendary Philosopher's Stone.",
                                    image: 'https://cdn.myanimelist.net/images/anime/10/75815.jpg',
                                    volume_or_season_number: '1',
                                    episode_or_chapter_number: '57',
                                    link_to_watch_or_read: '',
                                    rating: 8.0, rating_number:13)
Full_Metal_anime2.categories << Action
Full_Metal_anime2.categories << Adventure
Full_Metal_anime2.categories << Comedy
Full_Metal_anime2.categories << Drama
Full_Metal_anime2.categories << Fantasy

#For 'Boku no Hero Academaia' series:
Hero_Academia_manga = Content.create!(category:'manga',
                                      name: 'Boku no Hero Academia',
                                      start_date: '07/06/2014',
                                      end_date: '',
                                      tags: 'super power, superhero, shounen, school, war, crime',
                                      description: "One day, a four-year-old boy came to a sudden realization: the world is not fair. Eighty percent of the world's population wield special abilities, known as \"quirks,\" which have given many the power to make their childhood dreams of becoming a superhero a reality. Unfortunately, Izuku Midoriya was one of the few born without a quirk, suffering from discrimination because of it. Yet, he refuses to give up on his dream of becoming a hero; determined to do the impossible, Izuku sets his sights on the elite hero training academy, UA High.

                                      However, everything changes after a chance meeting with the number one hero and Izuku's idol, All Might. Discovering that his dream is not a dead end, the powerless boy undergoes special training, working harder than ever before. Eventually, this leads to him inheriting All Might's power, and with his newfound abilities, gets into his school of choice, beginning his grueling journey to become the successor of the best hero on the planet.",
                                      image: 'https://cdn.myanimelist.net/images/manga/1/209370.jpg',
                                      volume_or_season_number: '29',
                                      episode_or_chapter_number: '285',
                                      link_to_watch_or_read: '',
                                      rating:6.8, rating_number: 16)
Hero_Academia_manga.categories << Action
Hero_Academia_manga.categories << Adventure
Hero_Academia_manga.categories << Comedy
Hero_Academia_manga.categories << Drama
Hero_Academia_manga.categories << Fantasy

Hero_Academia_anime = Content.create!(category: 'anime',
                                      name: 'Boku no Hero Academia',
                                      start_date:'03/04/2016',
                                      end_date:'',
                                      tags: 'super power, Superhero, shounen, school',
                                      description: "What would the world be like if 80 percent of the population manifested extraordinary superpowers called “Quirks” at age four? Heroes and villains would be battling it out everywhere! Becoming a hero would mean learning to use your power, but where would you go to study? U.A. High's Hero Program of course! But what would you do if you were one of the 20 percent who were born Quirkless?

                                      Middle school student Izuku Midoriya wants to be a hero more than anything, but he hasn't got an ounce of power in him. With no chance of ever getting into the prestigious U.A. High School for budding heroes, his life is looking more and more like a dead end. Then an encounter with All Might, the greatest hero of them all gives him a chance to change his destiny…",
                                      image: 'https://cdn.myanimelist.net/images/anime/10/78745.jpg',
                                      volume_or_season_number: '4',
                                      episode_or_chapter_number: '88',
                                      link_to_watch_or_read: 'https://www.crunchyroll.com/my-hero-academia/episode-1-izuku-midoriya-origin-730707',
                                      rating:7.8, rating_number: 13)
Hero_Academia_anime.categories << Action
Hero_Academia_anime.categories << Adventure
Hero_Academia_anime.categories << Comedy

#For 'Darling in the Franxx' series:
Darling_manga = Content.create!(category: 'manga',
                                name: 'Darling in the Franxx',
                                start_date:'14/01/2018',
                                end_date:'26/01/2020',
                                tags:'dystopian, monster girl, love triangle, super robot',
                                description: "The story is set in the distant future. The land is ruined, and humanity establishes the mobile fort city Plantation. Pilots produced inside Plantation live in Mistilteinn, also know as the \"birdcage.\" Children live there knowing nothing of the outside world or the freedom of the sky. Their lives consist of battling to carry out missions. Their enemies are mysterious giant lifeforms known as Kyouryuu, and the children pilot robots called FranXX to face off against them. For the children, riding the FranXX proves their existence.

                                A boy named Hiro is called Code:016, and he was once known as a prodigy. However, he has fallen behind, and his existence seems unnecessary. Not piloting a FranXX is the same as ceasing to exist. One day, a mysterious girl known as \"Zero Two\" appears before him. Two horns grow out of her head.",
                                image: 'https://cdn.myanimelist.net/images/manga/1/206289.jpg',
                                volume_or_season_number: '8',
                                episode_or_chapter_number: '60',
                                link_to_watch_or_read: '',
                                rating:6.8, rating_number: 1)
Darling_manga.categories << Ecchi
Darling_manga.categories << Mecha
Darling_manga.categories << Sci_fi

Darling_anime = Content.create!(category: 'anime',
                                name: 'Darling in the Franxx',
                                start_date:'13/01/2018',
                                end_date:'07/06/2020',
                                tags:'tragedy, super robot, post-apocalyptic, dystopian, memory manupilation, monster girl, reincarnation',
                                description: "The distant future: Humanity established the mobile fort city, Plantation, upon the ruined wasteland. Within the city were pilot quarters, Mistilteinn, otherwise known as the “Birdcage.” That is where the children live... Their only mission in life was the fight. Their enemies are the mysterious giant organisms known as Kyoryu. The children operate robots known as FRANXX in order to face these still unseen enemies. Among them was a boy who was once called a child prodigy: Code number 016, Hiro. One day, a mysterious girl called Zero Two appears in front of Hiro. “I’ve found you, my Darling.” ",
                                image: 'https://m.media-amazon.com/images/M/MV5BZGVlY2ZhM2ItMWIwZC00YjU0LWJjNjAtZGVlNWJkM2JmZjhmXkEyXkFqcGdeQXVyMzgxODM4NjM@._V1_.jpg',
                                volume_or_season_number: '1',
                                episode_or_chapter_number: '24',
                                link_to_watch_or_read: 'https://www.crunchyroll.com/darling-in-the-franxx',
                                rating:7.2, rating_number: 1)
Darling_anime.categories << Action
Darling_anime.categories << Mecha
Darling_anime.categories << Sci_fi
Darling_anime.categories << Drama
Darling_anime.categories << Psychological
Darling_anime.categories << Romance

#For 'Inuyasha' series:
Inuyasha_anime = Content.create!( category: 'anime',
                                  name: 'InuYasha',
                                  start_date:'16/10/2000',
                                  end_date:'13/09/2004',
                                  tags:'youkai, reincarnation, historical, demons, swordplay, love triangle, magic, revenge, shounen',
                                  description: "Higurashi Kagome, after being pulled down a well by a demon, finds herself in Feudal Japan, where she learns that a powerful jewel has been reborn inside her body. After the jewel shatters in an attempt to retrieve it from one of the many demons who was after its power, Kagome must join forces with the half-demon Inuyasha (also after the jewel's power) to track down the shards of the jewel before its power falls into the wrong hands.",
                                  image: 'https://i.pinimg.com/originals/ec/a9/53/eca9536b49bf4020cdfe882a1822b10f.jpg',
                                  volume_or_season_number: '7',
                                  episode_or_chapter_number: '193',
                                  link_to_watch_or_read: 'https://www.crunchyroll.com/inuyasha')
Inuyasha_anime.categories << Action
Inuyasha_anime.categories << Adventure
Inuyasha_anime.categories << Comedy
Inuyasha_anime.categories << Fantasy
Inuyasha_anime.categories << Romance

Inuyasha_manga = Content.create!( category: 'manga',
                                  name: 'InuYasha',
                                  start_date:'13/11/1996',
                                  end_date:'15/07/2008',
                                  tags:'youkai, reincarnation, historical, demons, time manipulation',
                                  description: "Higurashi Kagome, after being pulled down a well by a demon, finds herself in Feudal Japan, where she learns that a powerful jewel has been reborn inside her body. After the jewel shatters in an attempt to retrieve it from one of the many demons who was after its power, Kagome must join forces with the half-demon Inuyasha (also after the jewel's power) to track down the shards of the jewel before its power falls into the wrong hands.",
                                  image: 'https://upload.wikimedia.org/wikipedia/en/2/2a/InuYasha1.jpg',
                                  volume_or_season_number: '56',
                                  episode_or_chapter_number: '558',
                                  link_to_watch_or_read: '')
Inuyasha_manga.categories << Drama
Inuyasha_manga.categories << Adventure
Inuyasha_manga.categories << Comedy
Inuyasha_manga.categories << Fantasy

Hanyou_no_Yashahime_anime = Content.create!(category: 'anime',
                                            name: 'Hanyo no Yashahime',
                                            start_date:'03/10/2020',
                                            end_date:'',
                                            tags:'youkai, shounen, historical, demons, magic, memory manipulation, time manipulation',
                                            description: "The daughters of Sesshomaru and Inuyasha set out on a journey transcending time!
                                            In Feudal Japan, Half-Demon twins Towa and Setsuna are separated from each other during a forest fire. While desperately searching for her younger sister, Towa wanders into a mysterious tunnel that sends her into present-day Japan, where she is found and raised by Kagome Higurashi’s brother, Sota, and his family.
                                            Ten years later, the tunnel that connects the two eras has reopened, allowing Towa to be reunited with Setsuna, who is now a Demon Slayer working for Kohaku. But to Towa’s shock, Setsuna appears to have lost all memories of her older sister.
                                            Joined by Moroha, the daughter of Inuyasha and Kagome, the three young women travel between the two eras on an adventure to regain their missing past.",
                                            image: 'https://animelove.it/assets/img/HanyouNoYashahime.jpg',
                                            volume_or_season_number: '1',
                                            episode_or_chapter_number: '24',
                                            link_to_watch_or_read: 'https://www.crunchyroll.com/yashahime-princess-half-demon')
Hanyou_no_Yashahime_anime.categories << Action
Hanyou_no_Yashahime_anime.categories << Adventure
Hanyou_no_Yashahime_anime.categories << Fantasy

#For 'Fairy Tail' series:
Fairy_Tail_anime = Content.create!( category: 'anime',
                                    name: 'Fairy Tail',
                                    start_date:'12/04/2009',
                                    end_date:'30/03/2013',
                                    tags:'magic, shounen, dragons, time skip, fairy tale, work, family life, demons, animals',
                                    description: "Across the Fiore kingdom, wizards join guilds and make their pay by filling magical needs—but one guild has a reputation as the roughest, rowdiest, most dangerous of all: Fairy Tail!
                                    When four young Fairy Tail members unite, their bond is forged by a power found in neither muscle nor magic and grows stronger with every mission. Whatever you do, don't mess with these friends or you'll get a taste of Natsu's flaming fist or Gray's ice hammer, suffer a painful blow from one of Lucy's celestial spirits or catch the edge of Erza's mighty blade! Whether they're stopping demons from devastating the world or wrestling in the mess hall, this mystical team manages to inflict as much damage to their rivals as they do to the surrounding area!",
                                    image: 'https://cdn.anisearch.de/images/anime/cover/full/5/5476.jpg',
                                    volume_or_season_number: '9',
                                    episode_or_chapter_number: '175',
                                    link_to_watch_or_read: 'https://www.crunchyroll.com/fairy-tail')
Fairy_Tail_anime.categories << Action
Fairy_Tail_anime.categories << Adventure
Fairy_Tail_anime.categories << Comedy
Fairy_Tail_anime.categories << Fantasy

Fairy_Tail_manga = Content.create!( category: 'manga',
                                    name: 'Fairy Tail',
                                    start_date:'21/08/2006',
                                    end_date:'23/07/2017',
                                    tags:'magic, shounen, dragons, time skip, fairy tale, demons, nudity',
                                    description: "Cute girl wizard Lucy wants to join the Fairy Tail, a club for the most powerful wizards. But instead her ambitions land her in the clutches of a gang of unsavory pirates led by a devious magician. Her only hope is Natsu, a strange boy she happens to meet on her travels. Natsu’s not your typical hero—he gets motion sickness, eats like a pig, and his best friend is a talking cat. With friends like this, is Lucy better off with her enemies?",
                                    image: 'https://images-na.ssl-images-amazon.com/images/I/911WCm5-xyL.jpg',
                                    volume_or_season_number: '63',
                                    episode_or_chapter_number: '549',
                                    link_to_watch_or_read: '')
Fairy_Tail_manga.categories << Action
Fairy_Tail_manga.categories << Adventure
Fairy_Tail_manga.categories << Comedy
Fairy_Tail_manga.categories << Fantasy
Fairy_Tail_manga.categories << Ecchi

##### Creating characters

#For 'Naruto' series:
Naruto = Character.create!( name: 'Naruto',
                            surname: 'Uzumaki',
                            avatar_url: 'https://s4.anilist.co/file/anilistcdn/character/large/b17-IazKGogQwJ1p.png',
                            information: "+Ninja Registration No +012607
                            +Birthday +October 10
                            +Age +12-13 (I), 15-17 (II)
                            +Horoscope +Libra
                            +Height +145.3cm - 147.5cm (I), 166cm (II)
                            +Weight +40.1 kg - 40.6 kg (I), 50.9kg (II)
                            +Blood Type +B
                            +Family +Minato Namikaze(father), Kushina Uzumaki(mother) Jiraiya (godfather)
                            +Affiliation +Konohagakure, Mt. Myoboku
                            +Rank +Genin
                            +Personality +Doesn't like to lose
                            +Likes +Ichiraku Ramen, Hinata, Oshiruko (VERY sweet azuki soup)
                            +Dislikes +Fresh Vegetables, Akatsuki, Orochimaru  
                            +Born in Konohagakure, a ninja village hidden in the leaves, Naruto Uzumaki was destined for greatness. When born, a powerful nine-tailed demon fox attacked his village. With a wave of its tail, the demon fox could raise tsunamis and shatter mountains. In a valiant attempt to save the village from destruction, the Fourth Hokage and leader of the Hidden Leaf Village sealed the demon fox within Naruto's newborn body. This was his final act, for the battle with the fox cost him his life. Despite the Fourth Hokage's dying wish that Naruto is viewed as a hero for serving as the container for the demon (a Jinchuuriki), the adult villagers of Konoha harbored a fierce hatred for him, with many believing that Naruto and the demons were one and the same. Cast aside as an inhuman monster, Naruto was outcast and ostracised by the villagers for reasons he could not understand. The children his age could only ever follow their parents' example; and they too came to harbor a fierce hatred for Naruto. Naruto eventually came to accept that he would live and die alone, and his external response was to perform harmless pranks on the village. Coy, raffish, and full of life, Naruto soon came to display a somewhat unexpected determination to succeed and be accepted by others. Upon being assigned to \"Team Seven\" as a Genin-ranked ninja, his true potential soon became outwardly apparent. Vowing to become Hokage one day and using his will to never give in, Naruto saves the village from invading forces and earns his acceptance. Eventually, Naruto learns to harness the power of the Demon Fox sealed inside him to perform acts of strength far beyond what any other human is capable of. In all, Naruto is an admirable character whose sheer determination to succeed despite the odds, earns him respect and devotion from his fellow villagers.")
                            Naruto.appearances << Naruto_anime
                            Naruto.appearances << Naruto_manga
                            Naruto.appearances << Naruto_Shippuuden_anime

Kakashi = Character.create!(name:'Kakashi',
                  surname:'Hatake',
                  avatar_url: 'https://s4.anilist.co/file/anilistcdn/character/large/b85-thWHf96gqMLi.png',
                  information: "+Age +25-26 (Part I); 28-29 (Part II)
                  +Birthday +September 15
                  +Horoscope +Virgo
                  +Blood Type O
                  +Height 5'11\" (1.80 m)
                  +Weight +67.5 kg
                  +Hair +Silver
                  +Eyes +Black, Sharingan
                  +Rank +Jonin; Former ANBU; Hokage Candidate
                  +Likes +Icha-Icha series, Broiled Saury with salt, Miso soup with eggplant
                  +Dislikes +Anything sweet
                  +Quote +(from Obito) \"A shinobi who violates the rules is scum, but a shinobi who abandons their friends is worse than scum\".
                  +Kakashi has an ongoing, albeit slightly one-sided, rivalry with Might Guy, with Guy constantly proclaiming that Kakashi is his rival, and considering his and Kakashi's subordinates rivals. Kakashi, however, seems indifferent to their rivalry, which annoys Guy to no end. Guy randomly challenges Kakashi to contests of skill, and Kakashi has acquired a record of 49 wins and 50 losses in doing so. Given that the contests that make up this figure are so varied (ranging from Rock, Paper, Scissors to sumo-wrestling), this is not much of an achievement on Guy's part. Nevertheless, Guy is proud of his record.

                  Though he evasively says that he has \"many hobbies\" when asked about himself, he is commonly seen reading of \"Icha Icha Paradise\" (イチャイチャパラダイス, Icha Icha Paradaisu, literally \"Make Out Paradise\"), an adult and probably pornographic novel authored by Jiraiya that is a runaway bestseller in the Naruto world. Kakashi most prominently reads it while training and speaking with his team, and is later seen reading the second known volume in the series, \"Icha Icha Violence\" (イチャイチャバイオレンス, Icha Icha Baiorensu, literally \"Make Out Violence\"). In Part II Naruto gives him the new \"Icha Icha Tactics\" (イチャイチャタクティクス, Icha Icha Takutikusu, literally \"Make Out Tactics\").
                  
                  Kakashi's Sharingan eye gives him a significant advantage in battle, as he can copy enemy techniques and use them as his own, as well as track and predict his opponent's movements flawlessly. Because it is a transplanted eye, his Sharingan eye is always active. While this would not be much of a problem for an Uchiha, his non-Uchiha blood causes it to use much more chakra than it should. Because of this, he covers it with his headband and only utilizes it in the most dangerous battles. Kakashi's use of the Sharingan is as good as that of Itachi Uchiha, though the aforementioned handicaps brought about by the nature of his eye make him somewhat weaker in comparison. In Part II Kakashi is able to develop his own Mangekyo Sharingan. With his variant he is able to manipulate space-time to conduct long range attacks, and in its two uses has been capable of severing another's arms and otherwise sending things to different dimensions. Much like the standard Sharingan, the Mangekyo Sharingan tires Kakashi considerably, and after using it only three times he was hospitalized for a week due to its chakra usage.
                  
                  With his Sharingan Kakashi has been able to copy more than one thousand jutsu, giving him the nickname \"Copy Ninja Kakashi\". As a result, Kakashi's arsenal most prominently features ninjutsu abilities and has led to him becoming a specialist in the field. Many of the jutsu he has been seen copying in the series are water-based attacks, though most of these he only uses against the person he copies them from. He does, however, use Water Release: Water Encampment Wall on occasion as a way to block attacks. He less frequently uses other elemental attacks such as Fire Release: Great Fireball Technique to attack opponents or Earth Release: Inner Decapitation Technique (土遁・心中斬首の術, Doton: Shinjū Zanshu no Jutsu, Viz \"Groundhog Technique Decapitation\", English TV \"Headhunter Jutsu\") to pull opponents below ground and immobilize them. He can also create shadow clones, though because he lacks Naruto's chakra reserves, he exercises the ability with caution, rarely creating more than one at a time.
                  
                  While Kakashi specializes in the use of ninjutsu due to his Sharingan he is fairly adept with other jutsu types, though his use of them is rarely seen. Demonic Illusion: Hell Viewing Technique (魔幻・奈烙見の術, Magen: Narakumi no Jutsu) causes his opponent to see what they would find a horrifying vision, keeping them preoccupied until they can overcome the illusion. A Thousand Years of Pain (death in english dub) (千年殺し, Sennen Goroshi) consists of Kakashi forcefully plunging his index and middle fingers into an opponent's rectum. While only capable of launching the opponent humorous distances in typical uses, the fingers can be replaced with kunai attached with exploding tags to actually do damage to the person one is attacking.
                  
                  When he was younger Kakashi was taught how to use the Rasengan by the Fourth Hokage. Because the Rasengan is meant to have the user's chakra nature mixed with it, Kakashi attempted to add his lightning-based chakra to it, though was ultimately unsuccessful. In time he instead created the Chidori, his only original jutsu. After the jutsu's initial creation Kakashi was unable to use the Chidori to its full potential as the sheer speed of the attack left his normal eyes unable to see any form of an enemy counterattack. After acquiring the Sharingan, however, he was able to overcome this shortcoming. Through repeated use and increased proficiency with it, Kakashi's Chidori has been upgraded and renamed to the Lightning Blade due to him having cut through a bolt of lightning with it.")
                  Kakashi.appearances << Naruto_anime
                  Kakashi.appearances << Naruto_manga
                  Kakashi.appearances << Naruto_Shippuuden_anime

Jiraiya = Character.create!(name:'Jiraiya',
                  surname:'',
                  avatar_url: 'https://s4.anilist.co/file/anilistcdn/character/large/b2423-RO5MyoXSA9OL.png',
                  information: "+Age +54
                  +Birthday +11 November
                  +Horoscope +Scorpio
                  +Bloodtype +B
                  +Height +191.2 cm
                  +Weight +87.5 kg
                  +Likes +Peeping, women, garlic pickles with Japanese basil, Karaage fried chicken
                  +Dislikes +Kiwi fruits, Gratin
                  
                  +Jiraiya is one of the three powerful ninjas originated from Konoha (village hidden in the leaves) and trained by the Third Hokage, Hiruzen Sarutobi. His two team mates were Tsunade and Orochimaru. Later on, they became known as the Legendary Three Ninja, also known as \"Sannin\".
                  
                  Jiraiya is also a full-pledged pervert. He adores good looking women and gets distracted by their sight often. He often gives the reason that he is doing research for his writing. Amongst other traits, he is a toad-tamer, with the ability to summon powerful toads at will to aid him in battle. He holds a key part in teaching and training Naruto.")
                  Jiraiya.appearances << Naruto_anime
                  Jiraiya.appearances << Naruto_manga
                  Jiraiya.appearances << Naruto_Shippuuden_anime     

Sasuke = Character.create!(name:'Sasuke',
                  surname:'Uchiha',
                  avatar_url: 'https://s4.anilist.co/file/anilistcdn/character/large/b13-SISLEw1oAD7a.png',
                  information: "+Age+ 12-13 (I) ; 16 -17(II)
                  +Birthday+ 23 July
                  +Ninja Registration No +012606
                  +Horoscope +Leo
                  +Bloodtype +AB
                  +Height +153.2cm(I); 168cm (II)
                  +Weight +43.5kg(I); 52.2kg (II)
                  +Hair +Ebony Black with Blue tints
                  +Eyes +Black ; Red (when using Sharingan)
                  +Rank +Genin 
                  
                  +Kekkei Genkai +Sharingan, Mangekyo Sharingan, Eternal Mangekyo Sharingan, Rinnegan
                  +Likes +Omusubi (Okaka) (omusubi is like Onigiri: Okaka is dried Bonito) Tomato
                  +Dislikes +Everything that gets in the way of his revenge, natto (fermented soybeans) and sweet food
                  +Hates +Itachi
                  
                  +Talents +Highly skilled ninja, specializes in fire and lightning jutsu.
                  
                  +When Sasuke was young his clan was murdered by his older brother, Itachi. With his parents and family now gone his brother spared him and left him to survive by himself. He told Sasuke to hate him. Sasuke tried to forget about the past by applying himself in the ninja academy and fitting in with the rest of the leaf village. After his fight with Naruto he believes he's been wasting his time 'playing ninja' with the people of the leaf village. His new goal is to get stronger so he can revenge his clan by killing Itachi and then to restore the Uchiha clan. As a wielder of the Sharingan (the kekkei genkai of the Uchiha clan), he learns to use Chidori and has a vast knowledge of the various Fire Jutsus. The curse seal which Orichimaru gives him during the Chuunin exam, at first, enhanced his power but at the risk of killing him. Now he can use it of his own free will. Claiming at first that he doesn't need any friends, he is forced to contradict himself when he sees that either Naruto or Sakura are in danger. Remembering this type of Sasuke is what brings motivation to Naruto. He openly admitted to Naruto that he was his closest friend. Sasuke has black hair with a blue tint that lengthens as the story goes with onyx eyes and has lighter skin than his brother Itachi. Like many other members of his clan, his hair hangs over both sides of his face to roughly his cheeks. In his curse seal form, he has grey skin with wings on his back that resemble giant webbed hands. He also has hair similar to Madara Uchiha except in a greyish-blue color.
                  
                  At the beginning of Part I, Sasuke's clothing made up a blue, short-sleeved shirt with a raised collar and the Uchiha crest on the back and white shorts. An interesting thing is that during Part I the Uchiha symbol on his back gets smaller each time he changes his outfit. In the last stage of the Chunin exams, he wore a black, one pieced version of this outfit but eventually went back to his original clothes.
                  
                  In Part II, Sasuke has grown noticeably taller (almost eye height with Itachi) and slightly more muscular. wears a white long sleeved shirt that's open at the torso with a smaller version of the Uchiha crest on his collar. He wears black pants with a blue cloth hanging from his half way up his stomach to his knees. He also wears a purple rope belt (Japanese name: Shimenawa) tied in a bow fashion found on many Sound ninja, only the bow is in a different style and is tied in the front instead of the back. He also will at points remove his shirt and hang it from his belt around his waist to give his wings in Curse Seal Level 2 room to move (also without transforming). Sasuke, even though claiming to be emotionless, wont kill when unneeded.")
                  Sasuke.appearances << Naruto_anime
                  Sasuke.appearances << Naruto_manga
                  Sasuke.appearances << Naruto_Shippuuden_anime 

Sakura = Character.create!(name:'Sakura',
                  surname:'Haruno',
                  avatar_url: 'https://s4.anilist.co/file/anilistcdn/character/large/b145-jqbTRpHKNSoV.png',
                  information: "+Age +12-13 (I); 16-17 (II)
                  +Date of Birth +March 28
                  +Zodiac +Aries
                  +Blood Type +O
                  +Height +149cm (I); 161cm (II)
                  +Weight +35kg (I); 45kg (II)
                  +Hair +Pink
                  +Eyes +Green
                  +Rank +Genin (I); Chuunin (II)
                  +Likes +Syrup coated anko dumplings; Umeboshi; Anmitsu
                  +Dislikes +Anything Spicy; Naruto (at first); Ino (at first) 
                  +Sakura is the only female ninja of Team 7. When she first meets Naruto she is physically weak and has an immense crush on Sasuke. She dislikes Naruto as well.The only thing she's good at is her brain as the smartest girl in ninja academy her excellent chakra control, out of that she could be categorized as a kunoichi with no exceptional talent. In the first part of the Chuunin exam she is easily able to answer the questions, but in the second part she is unable to defeat the Sound ninja attacking Sasuke and Naruto. She makes a pledge to become a better ninja and a better person. To prove her commitment she cuts her long hair with a kunai. In the third part of the Chuunin Exam she goes up against Ino Yamanaka, her former friend but current rival for Sasuke's affections. The two defeat each other simultaneously. This turns their relationship in a rivalry between friends. After the time skip she is now a chuunin having been trained by Tsunade for the past two years. She is now a medic Ninja of considerable skill, enough skill to possibly defeat Tsunade one day. It is shown when she is able to do a complicated surgery to extract poisons out of Kankuro body and make an antidote of the new type poison that Sasori used,which the Suna gakure medical-nin unable to do. During the time skip she's also matured in personality, she become calmer compare when she were Genin, but she still has her temper. Sakura has grown not only as a medical-nin, now she's also a capable fighter. She can manage to destroy the ground with her fist using her inhuman strength, a chakra control technique she learned from Tsunade, and she is also able to beat Sasori from Akatsuki together with elder Chiyo from Sunagakure. Additionally she is a genjutsu type, and though she has yet to use that potential she does show an almost complete immunity to being trapped in an illusion.")
                  Sakura.appearances << Naruto_anime
                  Sakura.appearances << Naruto_manga
                  Sakura.appearances << Naruto_Shippuuden_anime 

#For 'Kimetsu no Yaiba' series:
Tanjirou = Character.create!(name:'Tanjirou',
                  surname:'Kamado',
                  avatar_url: 'https://s4.anilist.co/file/anilistcdn/character/large/b126071-BTNEc1nRIv68.png',
                  information: "+Tanjirou is kind by nature and has been described by others as having very gentle eyes. He has a great deal of determination and will not give up once he has a goal to achieve, an example being finding a cure for Nezuko. Even though he is relatively strong on his own, he isn't opposed to asking others for help when he needs it. He is very protective of his friends and even more so of his younger sister. His biggest attribute is his ability to empathize with anyone, even demons.")
                  Tanjirou.appearances << Demon_Slayer_manga
                  Tanjirou.appearances << Demon_Slayer_anime

Nezuko = Character.create!(name:'Nezuko',
                  surname:'Kamado',
                  avatar_url: 'https://s4.anilist.co/file/anilistcdn/character/large/b127518-7b4XKjasQE29.png',
                  information: "+Height +153 cm (5'0\")
                  +Weight +45 kg (99 lb)
                  +Birthday +December 28
                  
                  +Transformed into a demon and left mute, Nezuko travels with her older brother Tanjirou in a box on his back. She can change her size at will, and is a capable fighter when she needs to be, but has never killed or eaten any humans. Instead of gaining nourishment from humans, it seems that she recovers her energy by sleeping for long periods of times.")
                  Nezuko.appearances << Demon_Slayer_manga
                  Nezuko.appearances << Demon_Slayer_anime

Zenitsu = Character.create!(name:'Zenitsu',
                  surname:'Agatsuma',
                  avatar_url: 'https://s4.anilist.co/file/anilistcdn/character/large/b129131-sT6fXnLBu331.jpg',
                  information: "Zenitsu has short, blonde hair, which was originally black and brown eyes with thick eyebrows. He wears the standard Demon Hunter uniform, along with a yellow Haori with a white triangle pattern on top.

                  Zenitsu is a coward and is constantly claiming he doesn't have long to live due to the dangerous job of being a Demon Hunter. He is also a bit of a womanizer and likes to hit on girls who he thinks are cute and ask them to marry him -- much to their annoyance.
                  
                  Zenitsu has low self-esteem but still wanted to live up to the expectations others set up for him, but he was constantly afraid and would always cry and run away. He claims he wants to live a modest life where he can be useful to someone.")
                  Zenitsu.appearances << Demon_Slayer_manga
                  Zenitsu.appearances << Demon_Slayer_anime

Inosuke = Character.create!(name:'Inosuke',
                  surname:'Hashibira',
                  avatar_url: 'https://s4.anilist.co/file/anilistcdn/character/large/n129130-SJC0Kn1DU39E.jpg',
                  information: "Inosuke is usually seen wearing a grey boar mask, with a shirtless version of the Demon hunter uniform. Without the mask he has messy shoulder length black hair and large green eyes with long eyelashes. He is described as having a girly looking face which greatly contrasts with his muscular body.

                  Inosuke is extremely short-tempered and proud, and makes a big deal out of fighting opponents stronger than him claiming that's his only hobby. He is a sore loser and is always trying to compete with Tanjiro and provoke him into fighting him, and usually failing. Due to growing up in the mountains by himself Inosuke has trouble interacting with others and only cares about himself most of the time. Though he's often seen with 2 swords in hand, Inosuke is left-handed.")
                  Inosuke.appearances << Demon_Slayer_manga
                  Inosuke.appearances << Demon_Slayer_anime

Muzan = Character.create!(name:'Muzan',
                  surname:'Kibutsuji',
                  avatar_url: 'https://s4.anilist.co/file/anilistcdn/character/large/b129132-rijE8icKGFr3.png',
                  information: "+He is a Demon, the first of his kind, and the progenitor of most other Demons.")
                  Muzan.appearances << Demon_Slayer_manga
                  Muzan.appearances << Demon_Slayer_anime

#For 'Yakusuko no Neverland' series:
Norman = Character.create!(name:'Norman',
                  surname:'',
                  avatar_url: 'https://s4.anilist.co/file/anilistcdn/character/large/b121700-0QhyLdihQxrT.jpg',
                  information: "+Age (2045) +11 yo
                  +Birthday +March 21, 2034
                  +Height +145 cm
                  +Farm Identifier +22194
                  
                  +Norman seems to be logical, well-meaning, and devoted, with a slightly naive side. He can easily plan his actions in advance and he anticipates on other's actions. He is one of the top 3 ranking orphans, along with Emma and Ray.

                  He loves Emma. He is helpful and loyal towards her and will try to do what it takes to make sure she and the other kids.")
                  Norman.appearances << Promise_Neverland_manga
                  Norman.appearances << Promise_Neverland_anime

Emma = Character.create!(name:'Emma',
                  surname:'',
                  avatar_url: 'https://s4.anilist.co/file/anilistcdn/character/large/b121725-LQciVJOjnMVh.png',
                  information: "+Age (2045)+ 11 yo
                  +Birthday+ August 22, 2034
                  +Height (2045-2049)+ 145 -161 cm
                  +Farm Identifier+ 63194  
                  +Emma acts as an older sister to the other children and loves her family very intensely. She is sweet, heroic, caring, and has a big heart. She can also be naive and reckless, and doesn't hesitate to put herself at risk to ensure the safety of the group. The other kids describe her as having monster reflexes and an astounding ability to learn, which enables her to think fast in difficult situations and makes her a very good strategist. She could be considered a beacon of hope for the rest of the children.",)
                  Emma.appearances << Promise_Neverland_manga
                  Emma.appearances << Promise_Neverland_anime

Ray = Character.create!(name:'Ray',
                  surname:'',
                  avatar_url: 'https://s4.anilist.co/file/anilistcdn/character/large/b121724-SJTdODjeO7e6.jpg',
                  information: "+Age (2045)+ 11 yo
                  +Birthday+ January 15, 2034
                  +Height (2045-2049)+ 150 - 177 cm
                  +Farm Identifier+ 81194
                  +As one of the three perfect students at the orphanage Ray is very logical, smart, cunning, extremely patient and is usually shown to read books by himself. Although he is extremely book smart he says that he never liked to study. According to data obtained by sister Krone, his weakness is that he gives up easily")
                  Ray.appearances << Promise_Neverland_manga
                  Ray.appearances << Promise_Neverland_anime

Isabella = Character.create!(name:'Isabella',
                  surname:'',
                  avatar_url: 'https://s4.anilist.co/file/anilistcdn/character/large/b121701-hP5hanKRUH9u.png',
                  information: "+Isabella is the mama of the Grace Field House.")
                  Isabella.appearances << Promise_Neverland_manga
                  Isabella.appearances << Promise_Neverland_anime

Mujika = Character.create!(name:'Mujika',
                  surname:'',
                  avatar_url: 'https://s4.anilist.co/file/anilistcdn/character/large/126498-xw4pVw7IRWIX.jpg',
                  information: "+Mujika (or Musica) is a demon descent traveling in the forest outside the Grace Field House.

                  Mujika has long, purple hair braided pigtails covering parts of her horns, and wears a mask with two holes positioned vertically. She has a pale complexion and wears a bluish-white cloak.")
                  Mujika.appearances << Promise_Neverland_manga
                  Mujika.appearances << Promise_Neverland_anime

#For 'Hagane no Renkinjutsushi' series:
Edward = Character.create!(name:'Edward',
                  surname:'Elric',
                  avatar_url: 'https://s4.anilist.co/file/anilistcdn/character/large/n11-k3dR0ZXPTwLd.jpg',
                  information: "+Birthplace +Resembool, Amestris
                  +Date of Birth +1899
                  +Age +15-16 (series), 18 (movie, End of the series)
                  +Family +Alphonse Elric (brother)
                  +Affiliations +State Military, Pinako Rockbell, Izumi Curtis (teacher), Roy Mustang (Commander)
                  +Occupation +State Alchemist
                  
                  +Edward \"Fullmetal Alchemist\" Elric is a young alchemical prodigy. He is the youngest State Alchemist ever to be recognized by the Amestris State Military, having received the title at the age of 12. Ed's primary motivation throughout the series is to return his younger brother, Alphonse, to his original body, which was lost in a failed human transmutation. Edward, despite his occasional bouts of immaturity, is a selfless boy who gains a reputation as a \"hero of the people\" throughout his youth. Notably, he doesn't seem concerned about returning his own arm and leg, instead focusing entirely on Al's suffering.
                  
                  Edward is small for his age, standing at only 149 cm (4'11\"), however his body is that of an experienced martial artist, with noticeable muscles and a wealth of agility. Although he lacks both his right arm and left leg, Ed's ability to fight is not impaired, and is in fact improved, as he will often use alchemy to cause his metal arm to partly transform into a blade or shield. His heavy automail limbs are considered by him to be the very best in Amestris. They were made by his childhood friend, Winry Rockbell, and she is constantly working on them. He is able to think quickly, even in desperate situations, though can still be frightened into paralysis. These qualities, combined with his alchemical powers and physical strength, make him a formidable fighter.")
                  Edward.appearances << Full_Metal_manga
                  Edward.appearances << Full_Metal_anime1
                  Edward.appearances << Full_Metal_anime2

Alphonse = Character.create!(name:'Alphonse',
                  surname:'Elric',
                  avatar_url: 'https://s4.anilist.co/file/anilistcdn/character/large/n12-IsVPL3Fh1XM8.jpg',
                  information: "+Birthplace +Resembool
                  +Date of Birth +1900
                  +Age +14-15
                  +Family +Edward Elric (brother), Trisha Elric (mother, deceased)
                  +Occupation +Alchemist
                  
                  +Alphonse Elric is a fictional character in the manga and anime series Fullmetal Alchemist. He is a human child who lost his body during a forbidden alchemical transmutation to bring his deceased mother back to life, and had his soul transmuted into a suit of armor by his brother, Edward Elric.
                  
                  Al's blood seal lies just below the base of the neck at the back of the suit, on the inside. It is drawn with Ed's blood. According to Edward, he needs to be careful whenever he reconstructs Alphonse's body because he must keep the blood seal intact during the transmutation. If the blood seal is removed, Al's soul will be lost.")
                  Alphonse.appearances << Full_Metal_manga
                  Alphonse.appearances << Full_Metal_anime1
                  Alphonse.appearances << Full_Metal_anime2

Winry = Character.create!(name:'Winry',
                  surname:'Rockbell',
                  avatar_url: 'https://s4.anilist.co/file/anilistcdn/character/large/63-xloedtYxiJ2E.jpg',
                  information: "+Birthplace +Resembool
                  +Date of Birth +June 9, 1899
                  +Age +15-16 (Around 18 at the end)
                  +Occupation +Automail Mechanic
                  +Family +Pinako Rockbell (grandmother), Urey Rockbell (father, deceased), Sara Rockbell (mother, deceased)
                  +Affiliations +Rockbell Automail Atelier Garfiel
                  
                  +A childhood friend of the central characters, the Elric brothers, she is often seen in their company throughout the series. She is evidently Edward's love interest. Specializing in mechanical repair, specifically with automail, Winry services Edward's arm and leg whenever it is in need of repair or replacement.")
                  Winry.appearances << Full_Metal_manga
                  Winry.appearances << Full_Metal_anime1
                  Winry.appearances << Full_Metal_anime2
                  

Roy = Character.create!(name:'Roy',
                  surname:'Mustang',
                  avatar_url: 'https://s4.anilist.co/file/anilistcdn/character/large/b68-moBLY2WO2am3.png',
                  information: "+Birthday +1885 (Age 30 from vol. 10)
                  +Height +5'8\" (173 cm)
                  
                  +Outwardly arrogant and playfully manipulative, Mustang is intelligent and almost always one step ahead of his opponents, and likes to feel in control of the situation. He is one of the superiors of Edward Elric. On the surface, he appears to be nothing more than a man of the military who pursues promotions and praise and is considered a ladies' man who constantly goes on dates with different women. Mustang's true goal is to become Führer in order to gain the power to reform the government in order to absolve his sins in the Ishval War as well as change the country for the better, along with the joking requirement for female officers to wear tiny miniskirts (which considerably increased Havoc's loyalty to him and caused Hawkeye to be angry with him). His goals are admirable enough that he earns the fierce loyalty of his good friends Lt Col. Maes Hughes, Major Alex Louis Armstrong, and his own subordinates, among whom are Riza Hawkeye, Jean Havoc, Heymans Breda, Vato Falman, and Kain Fuery. While Mustang has a close and amicable relationship with all of his subordinates, he appears to share a deeper bond of affection with his second-in-command Riza Hawkeye, who has devoted her life to supporting him. This bond culminates in the final episodes of the anime when Mustang chooses Hawkeye alone to accompany him on his greatest and most dangerous mission. Though a hero of the Ishval War, he remains haunted by the horrors of war and suffers great remorse for the lives he took. Roy Mustang is the \"Flame Alchemist\", having absolute control over heat and fire through alchemy. Using special gloves that create a spark when he snaps his fingers, Roy can create anything from a tiny ember to burn a letter, to a raging inferno that can destroy a humanoid body in seconds. His precise control over the alchemically enhanced flame is so accurate that he can boil the water in a persons' eyes and can also attack enemies amongst a riot without hurting any allies.")
                  Roy.appearances << Full_Metal_manga
                  Roy.appearances << Full_Metal_anime1
                  Roy.appearances << Full_Metal_anime2
      
King_Bradley = Character.create!(name:'King',
                  surname:'Bradley',
                  avatar_url: 'https://s4.anilist.co/file/anilistcdn/character/large/5103.jpg',
                  information: "+King Bradley is the Führer of the Amestris state military and has all state alchemist under his direct command. King Bradley almost always maintains a kind and calm demeanor even when issuing orders to engage in battle. This trait often confuses his subordinates, and Roy Mustang admits that he \"can't figure the guy out.\" King Bradley has a son, Selim, and an unnamed wife. In both iterations of Bradley, he is shown to be highly skilled with a saber. He can move and attack with incredible speed and dismember with ease.")
                  King_Bradley.appearances << Full_Metal_manga
                  King_Bradley.appearances << Full_Metal_anime1
                  King_Bradley.appearances << Full_Metal_anime2

#For 'InuYasha' series:
Inuyasha = Character.create!( name:'InuYasha',
                              surname:'',
                              avatar_url: 'https://s4.anilist.co/file/anilistcdn/character/large/b1353-xsZhvfi7IFzT.png',
                              information: "+Birthday +Unconfirmed +Birthplace +Western Japan, equal to Toyama +Height +167 cm +Weapons +claws, sword-Tessaiga +Attacks +Claws-Sankountessou, Hijinkessou. Tessaiga- Kaze no Kizu, Bakuryuuha, Kongousoha, and Meido Zangetsuha. +Family +Izayoi (mom), InuTaisho (dad), Sesshoumaru (half-brother).
                              +The male protagonist, a hybrid of a youkai-dog and a human, a half-demon (\"han'yo\" in Japanese). He wields the Tessaiga (pronounced \"Tetsaiga\" in the American dub), a supernatural sword made from one of his deceased father's fangs. This sword, when properly wielded, can destroy one hundred demons with a single swing, and has further powers which are revealed as the story progresses. It is also a source of which hatred exists between Inuyasha and his brother Sesshomaru, a full youkai dog demon, being that Inuyasha can wield the Tessaiga and Sesshomaru can not. Inuyasha has a tendency for massive regeneration and can recover from injuries which would be fatal for any average human. This ability is likely derived from his youkai powers (Example: Episode 5, when Kagome brings medicine from her time). On the night of the new moon each month, Inuyasha will change into a normal human with black hair, brown eyes, and loses his yokai power during this time. Prior to meeting his current companions, he would conceal himself during this time. Inuyasha loves Kikyo, and still does, but things get complicated when he starts to develop feelings of love for Kagome. He has mastered different abilities for his sword including the red tessaiga that can destroy barriers and also learning the backlash wave which hurls an opponents demonic energy right back at it.")
                              Inuyasha.appearances << Inuyasha_anime
                              Inuyasha.appearances << Inuyasha_manga
                              Inuyasha.appearances << Hanyou_no_Yashahime_anime


Kagome = Character.create!( name:'Kagome',
                              surname:'Higurashi',
                              avatar_url: 'https://s4.anilist.co/file/anilistcdn/character/large/b1354-PuUTCSX7UzKA.png',
                              information: "+Age +15
                              +Height +157.5 cm (5'1\")
                              +Weight +49 kg
                              
                              +The female protagonist and a third year middle school student. In the tradition of many Rumiko Takahashi heroines (Lum, Akane Tendo, Kyoko Otonashi), Kagome can be extremely sweet, but can also become very dangerous when provoked.
                              
                              InuYasha wears a special bead necklace (known as the Beads of Subjugation) which only responds to Kagome's command: when she yells \"Sit!\" (\"Osuwari!\") (Often \"Sit, boy!\" in the dub) InuYasha is thrown to the ground. The necklace was placed upon him due to his dangerous attitude when he was unsealed.
                              As the series continues, Kagome uses the necklace less and less. It is scarcely used by this point in time, and is purely comedic relief when it is.
                              
                              As fate would have it, Kagome also develops feelings of strong love for InuYasha. This relationship proves to be a driving point of the series. In the series, Kagome becomes a powerful miko (not really a miko).")
                              Kagome.appearances << Inuyasha_anime
                              Kagome.appearances << Inuyasha_manga
                              Kagome.appearances << Hanyou_no_Yashahime_anime

Kikyou = Character.create!( name:'Kikyou',
                            surname:'',
                            avatar_url: 'https://s4.anilist.co/file/anilistcdn/character/large/b1359-8DdaySsomRTI.jpg',
                            information: "+A shrine maiden who loved InuYasha and was killed by Naraku (disguised as Inuyasha) who made the two fight fifty years prior (in InuYasha's time) to the story's start. She is brought back to life by the ogress Urasue. Although she looks alive, her body is still \"dead,\" and she must ingest the souls of the dead to move.")
                            Kikyou.appearances << Inuyasha_anime
                            Kikyou.appearances << Inuyasha_manga
                            Kikyou.appearances << Hanyou_no_Yashahime_anime

Sango = Character.create!(name:'Sango',
                          surname:'',
                          avatar_url: 'https://s4.anilist.co/file/anilistcdn/character/large/b1355-0AyQkL0vYDsj.png',
                          information: "+Age +16 +Sango is youkai slayer (\"youkai taijiya\") who hails from a village of professional yōkai slayers. The only member of Inuyasha's group to have no supernatural powers, Sango instead wields the Hiraikotsu, a massive boomerang made of yōkai bones, in addition to a broad repertoire of tools and tricks for battling yōkai. Sango is also a victim of Naraku's evil schemes; her family was killed and her entire village destroyed by Naraku's yōkai so that Naraku could then blame Inuyasha and manipulate Sango into trying to kill him. When his plot failed, Naraku used a shard of the Shikon Jewel to revive and control her little brother Kohaku, forcing him to fight Inuyasha and company, and using him as a means by which to manipulate Sango. She seeks vengeance against Naraku, but her primary goal is to rescue Kohaku from Naraku's influence and somehow save his life, although currently it's uncertain if she will be able to do so as Kohaku's life is tied to the jewel shard. She has obvious feelings towards Miroku, although she is offended by his constant groping and lechery. (\"Sango\" means \"coral\".) ")
                          Sango.appearances << Inuyasha_anime
                          Sango.appearances << Inuyasha_manga
                          Sango.appearances << Hanyou_no_Yashahime_anime

Sesshomaru = Character.create!( name:'Sesshomaru',
                                surname:'',
                                avatar_url: 'https://buffy.mlpforums.com/monthly_2018_01/Sesshomaru-InuYasha-a.jpg.f748a0924abbe9b2c8029be7767d38da.jpg',
                                information: "+Inuyasha's older half-brother. Unlike Inuyasha, Sesshoumaru is a full-blooded dog-demon and is contemptuous of InuYasha for being a half-demon and for consorting with humans. He is a very powerful demon who seems to have no true equal when it comes to raw power; although given the chance in volume twenty-three, he could not defeat Naraku. Although fandom refers to him as the Lord of the Western Lands, this title appears at no point in the manga. Takahashi also stated that Sesshoumaru has no permanent home. Unlike almost every other demon in the world of InuYasha, he has no interest in possessing even one shard of the Shikon Jewel Sesshoumaru first appears in search of the sword called Tessaiga, created from their father Inu-no-Taisho's fang, which has the power to kill a hundred yōkai with one swing. However, Inu-no-Taisho left Tessaiga to Inuyasha, and Sesshoumaru instead inherited the Tenseiga, a sword which cannot harm the living, but can bring the dead back to life. Inu-no-Taisho did this in the hopes that Sesshoumaru would learn compassion. Considering Tenseiga useless to him, Sesshoumaru battles Inuyasha several times for possession of Tessaiga, and when Tessaiga is broken by a bite from Naraku's incarnation Goshinki, Sesshoumaru has Goshinki's fangs forged into the evil blade Tokijin, which only he is powerful enough to control. Initially, Sesshoumaru is ruthless and cruel in his pursuit of Tessaiga and his dealings with his brother.")
                                Sesshomaru.appearances << Inuyasha_anime
                                Sesshomaru.appearances << Inuyasha_manga
                                Sesshomaru.appearances << Hanyou_no_Yashahime_anime

Rin = Character.create!(name:'Rin',
                        surname:'',
                        avatar_url:'https://i.pinimg.com/236x/4e/61/6d/4e616dfeacc9729aa6f56583d1d74d97.jpg',
                        information: "+An orphan girl who discovers Sesshomaru in the woods after he is recuperating from a battle with InuYasha. Mute after the trauma of seeing her family killed by bandits, she lived on the dubious charity of a small village, mostly fending for herself. Although Sesshoumaru snubs her efforts to care for him, she continues to bring him food and water, and is disproportionately happy when he inquires idly about the injuries she received at the hands of the villagers, a reaction he does not understand. As Sesshoumaru prepares to leave the area, he smells Rin's blood and follows the scent to discover that she has been killed by wolves; moved by a combination of curiosity about the sword's abilities and pity for the girl, he revived her with Tenseiga. She now follows him with fanatical loyalty (to Jaken's great consternation) and has regained her ability to speak. Sesshomaru comes to her aid when she's in danger. (\"Rin\" means \"cold\")")
                        Rin.appearances << Inuyasha_anime
                        Rin.appearances << Inuyasha_manga
                        Rin.appearances << Hanyou_no_Yashahime_anime


Jaken = Character.create!(name:'Jaken',
                          surname:'',
                          avatar_url: 'https://i.pinimg.com/originals/3d/70/90/3d709059f387d33fbf5d96b7c1e005b1.jpg',
                          information: "+A yōkai who is Sesshōmaru's servant: not especially powerful but extremely loyal, he is usually a comical character. Sesshōmaru typically responds to Jaken's failures or more annoying behavior with a sound beating, but Jaken believes this is Sesshomaru's right and never wavers in his loyalty. Jaken started following him in the first place after being captivated by his power and majesty when he slayed a threatening demon, saving Jaken's life (this was incidental; Sesshomaru killed the demon simply because it was in his way. Note: these events were related ONLY in the anime). (\"Jaken\" means \"meanness\" or \"unkindness\".)")
                          Jaken.appearances << Inuyasha_anime
                          Jaken.appearances << Inuyasha_manga
                          Jaken.appearances << Hanyou_no_Yashahime_anime

Kirara = Character.create!( name:'Kirara',
                            surname:'',
                            avatar_url: 'https://i.pinimg.com/originals/00/f4/ed/00f4ed8ff555301bfbdfb1bf2d52b157.jpg',
                            information: "+Kirara is the nekomata companion of Sango, the yōkai exterminator that hails from a mountain village of other exterminators. Kirara usually appears as a tiny and cute feline no larger than a kitten with cream-colored fur, black ears, various black markings, large red eyes, and two tails, but her true form is a large saber toothed tiger-like yōkai.")
                            Kirara.appearances << Inuyasha_anime
                            Kirara.appearances << Inuyasha_manga
                            Kirara.appearances << Hanyou_no_Yashahime_anime

Miroku = Character.create!( name:'Miroku',
                            surname:'',
                            avatar_url: 'https://m.media-amazon.com/images/M/MV5BNDgxZGMwMTAtOGFkZC00ZjUwLTk2ZWQtMTIzZWFjOTVjNGYxXkEyXkFqcGdeQXVyMzExMzk5MTQ@._V1_.jpg',
                            information: "+Age: +18 +A Buddhist 'houshi,' or low-ranking, itinerant monk, Miroku traveled the countryside performing services such as exorcisms and yōkai exterminations to earn his living. He suffers from a hereditary curse originally inflicted upon his grandfather Miyatsu (also a Buddhist monk) by Naraku, who exploited Miyatsu's weakness for attractive women by taking the shape of one, and reflected one of Miyatsu's ofuda back to pierce the palm of his right hand (it appears to be his left hand in the English language manga where right and left are reversed). The hole in his hand became a kazāna (air void or \"wind tunnel\") which sucks in anything not nailed down, regardless of mass. Miroku uses the kazāna as a powerful weapon against yōkai, but as he grows older, the kazāna grows inevitably larger, and if the curse is not broken by Naraku's death, it will grow too large to control and consume Miroku himself - the same fate his grandfather and his father have already met. Probably as a result of this, Miroku takes a hedonistic approach to life which is uncharacteristic of a proper monk; he is a talented con artist who does not hesitate to invent fictitious supernatural menaces which he can then offer to combat in return for food and shelter, and like his grandfather he has a distinct weakness for pretty women. He makes a point of asking every attractive woman he meets if she will bear his child, claiming that he wants to be sure of an heir to continue his pursuit of Naraku if he dies, and his hands have a seemingly uncontrollable habit of wandering - something which often gets him soundly thumped by Sango, the favorite subject of his groping. However, in spite of his less-than-saintly behavior, Miroku proves to have a core of deep spirituality and, as a result, impressive spiritual powers. (\"Miroku\" is Japanese for Maitreya.)")
                            Miroku.appearances << Inuyasha_anime
                            Miroku.appearances << Inuyasha_manga
                            Miroku.appearances << Hanyou_no_Yashahime_anime

Shippo = Character.create!( name:'Shippō',
                            surname:'',
                            avatar_url: 'https://i.pinimg.com/564x/5c/08/8d/5c088d756c051561c8735ca79a1a0085.jpg',
                            information: "+An orphaned young yōkai-fox (kitsune) whose father was killed by the Thunder Brothers, Hiten and Manten. He wanted to avenge his father so he helped Kagome and Inuyasha. He was the first character in the story to join InuYasha and Kagome in their travels as a group. Shippo can shape shift, but his forms are temporary, often incomplete and ineffective, and he is usually given away by his telltale tail. His other noteworthy abilities are turning into a wooden horse that can fly, leaving a trail of yelping mushrooms and acorns, illusionary tricks with toys like his giant spinning top attack, using his race's notable fox fire magic (which rarely seems to work properly), and making things like leaves or himself multiply. He tends to be naively observant and often makes pointed and cheeky comments directed towards InuYasha, earning him a retaliatory bonk on the head for his unnecessary \"advice\". InuYasha and Kagome serve as older sibling figures to Shippo. Shippo and Kirara (when she is in her kitten form) are the smallest members of InuYasha's group, with Shippo being the youngest. Because he so small and light, whenever the group is traveling anywhere Shippo is almost always seen riding on someone's shoulder, on Kirara's back, in Kagome's arms, or in the basket on Kagome's bike; he is rarely seen walking or running. ")
                            Shippo.appearances << Inuyasha_anime
                            Shippo.appearances << Inuyasha_manga
                            Shippo.appearances << Hanyou_no_Yashahime_anime


Setsuna = Character.create!(name:'Setsuna',
                            surname:'',
                            avatar_url: 'https://i.pinimg.com/originals/30/9c/19/309c19b713fdfbee138eb14c803b1d73.png',
                            information: "+Setsuna is a half-demon demon slayer who works under Kohaku. She was separated from her older twin sister Towa when they were both 4 years old but was reunited with her after traveling to the future with her cousin Moroha.")
                            Setsuna.appearances << Hanyou_no_Yashahime_anime

Towa = Character.create!( name:'Towa',
                          surname:'',
                          avatar_url: 'https://www.anime-planet.com/images/characters/towa-higurashi-192846.jpg',
                          information: "+Towa Higurashi is a half-demon who lives in the Reiwa era. She is Sesshōmaru's first daughter and Setsuna's older twin sister. She was somehow transported to the modern era through the power of a Tree of Ages in the Bone-Eater's Well when she was just 4 years old.")
                          Towa.appearances << Hanyou_no_Yashahime_anime

Moroha = Character.create!( name:'Moroha',
                            surname:'',
                            avatar_url: 'http://pm1.narvii.com/7702/25f90629748ce1c70c2fefa97d765c4c2f9e8020r1-640-360v2_00.jpg',
                            information: "+Moroha is the only daughter of Inuyasha and Kagome Higurashi, a quarter-demon bounty hunter who slays demons and sells their parts to other demon slayers, presumably so they can make weapons and armor out of them.")
                            Moroha.appearances << Hanyou_no_Yashahime_anime
#For 'Violet' anime:
Violet = Character.create!( name:'Violet',
                            surname:'Evergarden',
                            avatar_url: 'https://www.anime-planet.com/images/characters/violet-evergarden-110803.jpg?t=1609204378',
                            information: "+Violet Evergarden is the titular protagonist of the Violet Evergarden series. She is an orphaned former child soldier who was enlisted in the Leidenschaftlich army and fought in the war, where she was treated as nothing more than a weapon because of her extraordinary fighting capabilities. After the war, Violet became an Auto Memories Doll at the CH Postal Company, seeking to understand the meaning of the words \"I love you,\" which was told by the person she holds dearest, Gilbert, during the War's final leg.")
                            Violet.appearances << Violet_anime
Dietfried = Character.create!(name:'Dietfried',
                              surname:'Bougainvillea',
                              avatar_url: 'https://s4.anilist.co/file/anilistcdn/character/large/b124789-DLp0QEJZeiQ8.png',
                              information: "+Dietfried Bougainvillea is a naval captain in the navy and Gilbert's older brother. He was the one who found Violet and made her into Gilbert's \"weapon\" on his promotion to a major in the army")
                              Dietfried.appearances << Violet_anime

Gilbert = Character.create!(name:'Gilbert',
                            surname:'Bougainvillea',
                            avatar_url: 'https://i.pinimg.com/564x/87/ba/05/87ba052ab7e5ff85a8bf0cd68bcec8ca.jpg',
                            information: "+Gilbert Bougainvillea is a character in the Violet Evergarden series. He is a major in the Leidenschaftlich army who values Violet more than anything, seeing her as a human being rather than a tool.")
                            Gilbert.appearances << Violet_anime

Claudia = Character.create!(name:'Claudia',
                            surname:'Hodgins',
                            avatar_url: 'https://s4.anilist.co/file/anilistcdn/character/large/b124799-htaqVGZd83GW.jpg',
                            information: "+A former army commander. He founded the CH postal company and serves as president.")
                            Claudia.appearances << Violet_anime
#For 'Shigatsu wa kimi no uso' series:
Kousei = Character.create!( name:'Kousei',
                            surname:'Arima',
                            avatar_url: 'https://myanimelist.net/images/characters/4/273755.jpg',
                            information: "+Kousei is formerly a child prodigy in playing piano, often dubbed as the \"Human Metronome\". He was able to play the piano with extreme precision and discipline and thus had won many competitions across Japan.")
                            Kousei.appearances << Shigatsu_wa_kimi_no_uso_anime
                            Kousei.appearances << Shigatsu_wa_kimi_no_uso_manga

Kaori = Character.create!(name:'Kaori',
                          surname:'Miyazono',
                          avatar_url: 'https://i.pinimg.com/originals/cd/9f/ba/cd9fba1c911b376733876cbbb17d2bfe.jpg',
                          information: "+Kaori is Tsubaki's classmate, a free-spirited violinist who had drawn many criticisms from the judge panel due to her unwillingness to follow the score, but is highly favored by her audience. Kaori met Kousei when she requested Tsubaki to set her up with Watari. ")
                          Kaori.appearances << Shigatsu_wa_kimi_no_uso_anime
                          Kaori.appearances << Shigatsu_wa_kimi_no_uso_manga

Ryouta = Character.create!( name:'Ryouta',
                            surname:'Watari',
                            avatar_url: 'http://pm1.narvii.com/6318/1b37cf20462004208e4dd202ab0cd2e6141d7610_00.jpg',
                            information: "+Ryouta is Kousei and Tsubaki's childhood friend who is also the captain of the school's soccer team. He is extremely popular with girls, often adopting a frivolous attitude. However, he does once in a while come up with good insight.")
                            Ryouta.appearances << Shigatsu_wa_kimi_no_uso_anime
                            Ryouta.appearances << Shigatsu_wa_kimi_no_uso_manga

Tsubaki = Character.create!(name:'Tsubaki',
                            surname:'Sawabe',
                            avatar_url: 'https://www.anime-planet.com/images/characters/tsubaki-sawabe-63007.jpg?t=1427150522',
                            information: "+Tsubaki is Kousei's childhood friend and next-door neighbor, who treats him like a little brother. She is athletic and part of the softball club in school. Often dismayed at Kousei's inability to move on after his mother's death, she attempts to get him to play the piano again in order to make a clear decision about his future.")
                            Tsubaki.appearances << Shigatsu_wa_kimi_no_uso_anime
                            Tsubaki.appearances << Shigatsu_wa_kimi_no_uso_manga

Emi = Character.create!(name:'Emi',
                        surname:'Igawa',
                        avatar_url: 'https://i.pinimg.com/originals/e1/75/8a/e1758a3c66b916649e1534582fa3f030.jpg',
                        information: "+Emi is a pianist of the same year as Kousei, who decided to become a pianist after listening to Kousei play at the age of 5. Emi is very emotional and her piano performance often depends on her mood on that day.")
                        Emi.appearances << Shigatsu_wa_kimi_no_uso_anime
                        Emi.appearances << Shigatsu_wa_kimi_no_uso_manga

Takeshi = Character.create!(name:'Takeshi',
                            surname:'Aiza',
                            avatar_url: 'https://cdn.myanimelist.net/images/characters/7/277320.jpg',
                            information: "+Takeshi is a pianist of the same year as Kousei, who aimed to surpass him since watching him play at a young age. For that, Takeshi would even abandon a competition in Europe in order to compete with Kousei.")
                            Takeshi.appearances << Shigatsu_wa_kimi_no_uso_anime
                            Takeshi.appearances << Shigatsu_wa_kimi_no_uso_manga

#For 'Fairy Tail' series:
Gray = Character.create!( name:'Gray',
                          surname:'Fullbuster',
                          avatar_url: 'https://i.pinimg.com/originals/cb/76/cc/cb76ccc15491e5904ea8be5a675cd2cc.jpg',
                          information: "+Gender +Male
                          +Age +18
                          +Hair Colou + Black
                          +Eye Colour +Dark blue
                          +Occupation +Mage
                          +Affiliation +Fairy Tail Guild
                          +Team +Team Natsu
                          +Magic +Ice-Make, Ice Magic
                          
                          +Gray Fullbuster is a member of the Fairy Tail guild. He is an 18 year-old ice mage, practicing ice alchemy, the art of molding ice. Due to his training history, he is most comfortable in little clothing and often forgets to wear clothes or quickly takes it off, thus often being accused of being an exhibitionist. He and Natsu have a friendly rivalry, and can often be seen fighting one another. Lucy believes the nature of his magic is the reason that he and Natsu constantly bicker. His member stamp is on the right side of his chest.
                          
                          In certain panels, Gray's necklaces looks quite similar to the Rave Stone which is a crucial part of another one of Mashima's stories, \"Rave Master.\" Mashima has stated he doesn't remember the name. He takes off his clothes because Ul made him do it as one of her teachings and now it's a force of habit.")
                          Gray.appearances << Fairy_Tail_anime
                          Gray.appearances << Fairy_Tail_manga

Natsu = Character.create!(name:'Natsu',
                          surname:'Dragneel',
                          avatar_url: 'https://www.anime-planet.com/images/characters/natsu-dragneel-1415.jpg',
                          information: "+Gender +Male
                          +Occupation +Mage
                          +Affiliation +Fairy Tail Guild
                          +Team +Team Natsu
                          +Known relatives +Igneel (Foster Father), Happy (Foster Son)
                          
                          
                          +Magic +Fire Dragon Slayer Magic, Lightning Flame Dragon Slayer Magic
                          
                          +Natsu Dragneel is the main male protagonist of the series and a member of the Fairy Tail Guild. He is frequently partnered with fellow Fairy Tail members Happy, Lucy Heartfilia, Gray Fullbuster, Erza Scarlet, and Wendy Marvell.
                          
                          He is commonly known to the public as a powerful mage called \"The Salamander\". But this title has started to fade as the series progresses. Natsu's most prominent features are his spiky rosy-colored hair and his signature scaly white scarf which may have been given to him by Igneel. Natsu has a scar on the right side of his neck which may be the reason he wears his scarf almost all the time. How he got the scar is yet to be revealed. He has no separate eye color, his eyes instead being solely the color of his black pupils. Natsu is of regular height, and his body is toned but not noticeably muscular. His member's stamp is located at the top of his right arm, just below his shoulder.
                          
                          Natsu has a carefree and reckless nature and, despite his constant brawls with the other members of the guild, is a fiercely loyal and protective friend. He has a particularly close, and competitive relationship with fellow members; Gray Fullbuster and Erza Scarlet. With the former, he has had a constant rivalry from a young age and although they often denounce each other as not being friends, they regularly watch each others' back even when they are enraged with one another. He has had the same sort of relationship with Erza - the two both being scared of her since a young age - and they seemed to have a fairly good relationship in the past as, according to Erza, they used to shower together. He befriends people rather quickly too, considering Lucy a friend and willing to team up with her only after a few days of knowing her. Natsu's father had left him when he was young. Igneel, a dragon, found him in the forest and ended up taking care of him. He taught Natsu how to speak, read, and use magic. But one day Igneel disappeared. This made Natsu look forward to the next time that they would meet. ")
                          Natsu.appearances << Fairy_Tail_anime
                          Natsu.appearances << Fairy_Tail_manga

Lucy = Character.create!( name:'Lucy',
                          surname:'Heartfilia',
                          avatar_url: 'https://i1.sndcdn.com/avatars-000371967650-8jyb1e-t500x500.jpg',
                          information: "+Character:

                          The stylish, main female protagonist of the Fairy Tail series, Lucy Heartfilia is a cheerful and clever Celestial Spirit Mage who often gets swept along by her disruptive guildmates when they go overboard. Empathetic and caring and more likely to write novels than wage battles, Lucy becomes most emboldened to challenge enemies when she needs to fight for her friends.
                          
                          Lucy is said to be a noisy and somewhat fussy person, and there are times when she can be naive and too easily forgiving, greedy for validation as well as overly confident at inopportune moments. However, despite any failings and instances of self-doubt, she doesn't allow herself to feel down for too long - her optimism is boundless.
                          
                          Story:
                          
                          In July of Earth Land year X784, Lucy is a normal 17-year-old Fioran who wishes to join the infamous mage guild, Fairy Tail - although they have a reputation for being thoroughly destructive, she admires their strength and numbers. After a fateful meeting with two members of the guild in the town of Hargeon, Natsu Dragneel and his flying blue cat, Happy, she travels with them back to Fairy Tail, located in Magnolia, to begin the adventure of a lifetime.
                          
                          Lucy's surname is quickly revealed to be quite significant, for it distinguishes her as a member of the Heartfilia family, who head a powerful and wealthy organization called the Heartfilia Konzern. The Heartfilia's connection to Celestial Sprit Magic becomes a key point later on.
                          
                          Lucy, along with the various other mages participating in Fairy Tail's S-Class Mage Promotion Trial on Tenrou Island, gets frozen in stasis for seven years after The Black Dragon, Acnologia, attacks the island and they are protected by one of the Three Great Fairy Magics - Fairy Sphere. The group is discovered in April of Earth Land year X791, awakening to a changed world.
                          
                          In Earth Land year X792 Lucy is able to harness an advanced form of Celestial Spirit Magic called Star Dress. She utilized this ability for the first time after being forced to break and sacrifice the key of her closest Celestial Spirit, Aquarius, in order to summon the Celestial Spirit King while fighting against the Dark Guild, Tartaros, the year before.
                          
                          In September of Earth Land year X793 Lucy embarks on the Century Quest with her main team. She is also determined to find Aquarius' key, which manifested​ itself somewhere in the world.
                          ")
                          Lucy.appearances << Fairy_Tail_anime
                          Lucy.appearances << Fairy_Tail_manga

Happy = Character.create!(name:'Happy',
                          surname:'',
                          avatar_url: 'https://wi.wallpapertip.com/wsimgs/71-715274_happy-fairy-tail-wallpaper-happy-fairy-tail-aye.jpg',
                          information: "+Happy is a cat with some magical power, which may be the reason for his ability to speak. He can temporarily grow wings on his back and fly, and is capable of carrying only one person in this form. Happy apparently can fly at incredible speed (As it took Eligor less than a hour to reach Clover when Happy caught up with him in mere seconds with Natsu in tow) This is also the only kind of transportation that does not make Natsu sick. When asked why, Natsu got angry and exclaimed that Happy was a friend, not a means of transportation, ironically Natsu later gets sick when Gray gives him a piggyback ride when he's injured. He's very close to Natsu and becomes friends with Lucy quickly. The three form a team at the start of the manga. Happy is a full-fledged member of Fairy Tail, and has a member stamp on his back. It's also unknown if Happy even though being a mage and a member of Fairy Tail, can use his magic offensively or not. Happy has a very cheerful nature. Even when facing danger, he maintains a smile. Along with Lucy, he is one of the saner members of Fairy Tail and often acts as the mediator between Natsu and Gray. Happy's original name was going to be named Freyr, after a Norse god. But Hiro Mashima felt it didn't fit him, so he change the name to Happy to fit the character. ")
                          Happy.appearances << Fairy_Tail_anime
                          Happy.appearances << Fairy_Tail_manga

Charlés = Character.create!(name:'Charlés',
                            surname:'',
                            avatar_url: 'https://s4.anilist.co/file/anilistcdn/character/large/22723.jpg',
                            information: "+Race +Exceed +Gender +Female +Age +6 +Affiliation +Fairy Tail Previous +Affiliation +Cait +Shelter Partner +Wendy Marvell +Magic +Aera, Precognition +Charlés is a talking cat with the same type of magic as Happy. Wendy found her as an egg and they have been together ever since. They are very close and Carla sees it as her duty to protect Wendy from danger.

                            Her personality is strict and straight. She disapproves of fooling around. Towards Happy she is very cold at the beginning but starts to soften over time. Their relationship has improved, especially over the Edolas arc.")
                            Charlés.appearances << Fairy_Tail_anime
                            Charlés.appearances << Fairy_Tail_manga

Erza = Character.create!( name:'Erza',
                          surname:'Scarlet',
                          avatar_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6YwpSfR8ZeEjblRy5sgMleT6LwJ0kbHyCRg&usqp=CAU',
                          information: "+Erza Scarlet (19) is a S-class mage of the Fairy Tail Guild, the strongest still active female, and one of the main female protagonists in Team Natsu. Erza, is a tall, beautiful girl with long red hair, and brown eyes. She is almost always wearing an armored suit, made by Heart Kreuz. However, thanks to her requip magic, she can wear many magic armors, and can even requip swim suits, and clothes for recreational purposes. Her member stamp is on her left shoulder. Erza is a very strict person, often criticizing the bad behavior and habits of the other guild members, causing most them to apologize for fear that they might invoke her wrath. She is also impatient, liking people who answer her questions quickly as seen when she promptly knocks out anyone who doesn't answer her questions (despite them not knowing anything). Also, Erza has a problem where she apparently sees everyone as guild members (best seen when she asks civilians to take things places during a mission). However, she has a great sense of justice. Despite being a very strict person, she seems to have a clumsy side to her as seen during the Galuna arc when she fell into a pit hole. Like most Fairy Tail members, she shows great loyalty and dedication to Makarov and the guild. She pushed herself past her limit in the war against the Phantom Lord Guild, fighting against its many powerful members. She also became the temporary leader when Makarov had to be treated because of his scattered magic. Although it hasn't been fully explored, it is implied that Natsu Dragneel, Erza and Gray Fullbuster are all very close to each other. While staying over at Lucy's house, Erza revealed that the three of them used to take showers together. It is later revealed that Erza, Natsu, and Gray have all been part of Fairy Tail ever since they were children.")
                          Erza.appearances << Fairy_Tail_anime
                          Erza.appearances << Fairy_Tail_manga

Wendy = Character.create!(name:'Wendy',
                          surname:'Marvell',
                          avatar_url: 'https://i.pinimg.com/474x/a0/04/3e/a0043e7698078b5d9a6e3052d52ecbb5.jpg',
                          information: "+Wendy is the Dragon slayer of the Sky, which means that she has the same power as Natsu Dragneel and Gajeel Redfox, but with the ability to manipulate air. Wendy can eat air, but can't heal as well in polluted areas. Her magic allows her to heal people from the most serious of injuries, even those caused by a dragon, allowing her to use even a kiss to heal other people and can even counteract other magic. However there seems to be a limit to how much she can use.")
                          Wendy.appearances << Fairy_Tail_anime
                          Wendy.appearances << Fairy_Tail_manga

Gajeel = Character.create!( name:'Gajeel',
                            surname:'Redfox',
                            avatar_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfYE5YI64zI0X-rTmUKpL5k04F-UG_3BwK4g&usqp=CAU',
                            information: "+Gender +Male +Title +Iron Dragon Slayer +Hair color +Black +Eye color +Red +Occupation +Mage Martial +Status +Single +Known relatives +Metalicana (Foster Father) +Magic +Iron Dragon Slaying Magic
                            +Gajeel is an intimidating-looking young man around the age of Natsu Dragneel. He has a wing-like sleeve on his right arm (right above his Phantom Lord tattoo) and various body piercings, usually in sets of three or five. His usual outfit consists of a ragged-looking black tunic with studded edges, studded wristbands, and studded boots (somewhat resembling Punk style). His hair style is a heavy metal, long, black hair. He doesn't seem to care at all about Fairy Tail, and seems to think that Phantom Lord is a stronger and more worthwhile guild. Gajeel bears his Phantom Lord symbol marked at the top off his right shoulder (note: the same place where Natsu has his Fairy Tail emblem). Gajeel and Natsu seem to be opposites as Gajeel has more of dark personality and appearance unlike Natsu who has a larger affinity to light. However, he seems to have a short temper, seen when Natsu Dragneel constantly makes him angry. Despite saying that he doesn't want to make friends, he tries in his own way to do so. So far he has sung an off-key solo (after chaining Mirajane to a wall) and not fought back when attacked by Shadow Gear or Laxus. He even protected Levy McGarden after Laxus Dreyar shot a blast of Lightning at her, showing that Jet and Droy were wrong about him, and he does want to make friends with the other members of Fairy Tail. Despite his cold personality, he has shown a humorous side of himself when he was shocked to see Mirajane transform her face to look like him, and when he failed to break Fried's magic enchantment. At the end of the Oracion Seis arc, he is shown to be upset when he realized that he's the only Dragon Slayer that doesn't have a cat as a partner. He then desperately tries to find a cat in the alleys, but ended up starving and becoming heavily exhausted. ")
                            Gajeel.appearances << Fairy_Tail_anime
                            Gajeel.appearances << Fairy_Tail_manga

Zeref = Character.create!( name:'Zeref',
                          surname:'',
                          avatar_url: 'https://i.pinimg.com/474x/cc/d3/df/ccd3df3ed2b9d1a02ab4e72e7d6b42fb.jpg',
                          information: "+The legendary dark mage Zeref is a human wizard known to history as the strongest and most evil mage to ever walk the earth. He lived over 400 years ago, but even to the present day his legacy continues in the form of other dark wizards and dark guilds who worship Zerefs power. In fact most dark guilds were founded and operate under the pretense of reviving Zeref, and helping him to conquer the world. Not only was he an incredibly strong mage, but he was also regarded as a genius, and he used his immense intellect to try to research and discover new magic, regardless of his status as the most powerful human alive. He is also responsible for the creation of tens of thousands of demons by means of his living magic, and these demons continue to roam the earth, leaving trails of destruction behind them. Aside from living magic, Zeref was also a skilled user of death magic.")
                          Zeref.appearances << Fairy_Tail_anime
                          Zeref.appearances << Fairy_Tail_manga

Jellal = Character.create!( name:'Jellal',
                            surname:'Fernandes',
                            avatar_url: 'https://i.pinimg.com/474x/17/9a/8f/179a8f0571dc38c6738e0420273107ca.jpg',
                            information: "+Jellal is a young man whose most prominent features are his blue hair and a red tattoo above and under his right eye, which he has had since his childhood. He is introduced under the alias of Siegrain, a young member of the Magic Council and can be considered the main antagonist of the series. ")
                            Jellal.appearances << Fairy_Tail_anime
                            Jellal.appearances << Fairy_Tail_manga
#For 'Darling the Franxx' series:
Hiro = Character.create!( name:'Hiro',
                          surname:'',
                          avatar_url: 'https://s4.anilist.co/file/anilistcdn/character/large/b124380-ct1wJHIl9BY1.jpg',
                          information: "+Birthday +October 15 (Libra)
                          +Height +168 cm (5'6\")
                          +Weight +58 kg
                          +Blood Type +AB Rh-
                          +Classification +Parasite
                          +Affiliation +Thirteenth Plantation
                          +Occupation +Stamen
                          +Partners +Zero Two, Naomi (formerly), Ichigo (temporarily)
                          +FRANXX +Strelizia, Delphinium (temporarily)
                          
                          +Hiro is the main protagonist of DARLING in the FRANXX. He was known as a prodigy Parasite with the codename \"016\" of Thirteenth Plantation, where he\'s partnered in a boy-girl pair with Zero Two to pilot a FRANXX called Strelizia.")
                          Hiro.appearances << Darling_anime
                          Hiro.appearances << Darling_manga

ZeroTwo = Character.create!(name:'Zero Two',
                        surname:'',
                        avatar_url: 'https://cdn.anisearch.com/images/character/cover/full/68/68716.jpg',
                        information: "+Status +Alive
                        +Sex +Female
                        +Blood Type +Klaxosaur
                        +Handedness +Left-Handed
                        +Classification +Parasite
                        +Affiliation +APE's Special Forces Unit
                        +Occupation +FRANXX Pilot (Pistil)
                        +Partner +Hiro
                        +FRANXX +Strelizia 
                        +Zero Two is one of the main characters in DARLING in the FRANXX series. She is an elite FRANXX pilot who is a member of a race of humans with Klaxosaur blood, and the pistil of the FranXX Strelizia.")
                        ZeroTwo.appearances << Darling_anime
                        ZeroTwo.appearances << Darling_manga
                        
Ichigo = Character.create!( name:'Ichigo',
                            surname:'',
                            avatar_url: 'https://i.pinimg.com/236x/39/46/79/394679b40ad51c9bbd7754fe7871a77b.jpg',
                            information: "+Ichigo (Code:015) is the leader of the Children of Squad 13. She is an honor student amongst the Children and had shown the most promise after Hiro (Code:016) from a very early age. She is very considerate about everyone in her team and deeply cares for Hiro. She is childhood friends with Hiro and Goro (Code:056). 
                            
                            Pilots the Franxx Delphinium (デルフィニウム) with Goro (ゴロー)")
                            Ichigo.appearances << Darling_anime
                            Ichigo.appearances << Darling_manga

Goro = Character.create!(name:'Goro',
                        surname:'',
                        avatar_url: 'https://www.anime-planet.com/images/characters/goro-darling-in-the-frankxx-136354.jpg',
                        information: "+Pilots the Franxx Delphinium (デルフィニウム) with Ichigo (イチゴ)")
                        Goro.appearances << Darling_anime
                        Goro.appearances << Darling_manga

Miku = Character.create!( name:'Miku',
                          surname:'',
                          avatar_url: 'https://www.anime-planet.com/images/characters/miku-darling-in-the-frankxx-136351.jpg?t=1517863265',
                          information: "+Pilots the Franxx Argentea with Zorome, and is a member of Squad 13.")
                          Miku.appearances << Darling_anime
                          Miku.appearances << Darling_manga

Zorome = Character.create!(name:'Zorome',
                          surname:'',
                          avatar_url: 'https://www.anime-planet.com/images/characters/zorome-136350.jpg?t=1554417179',
                          information: "+Pilots the Franxx Argentea (アルジェンティア) with Miku (ミク)")
                          Zorome.appearances << Darling_anime
                          Zorome.appearances << Darling_manga
#For 'Boku no Hero Academia' series:
Katsuki = Character.create!(name:'Katsuki',
                        surname:'Bakugo',
                        avatar_url: 'https://i.pinimg.com/736x/35/b4/06/35b4060ff926a3ffd917b5e03cad9944.jpg',
                        information: "+Age +14-15, currently 16
                        +Birthday +April 20
                        +Zodiac Sign +Taurus
                        +Height +172 cm (5'7\")
                        +Affiliation +U.A High
                        +Quirk +Explosion
                        
                        +Katsuki is a very aggressive person​ and is Midoriya Izuku's rival character. He has both a superiority complex and a inferiority complex, wanting be the best at everything and often very hard on himself when he comes up short. He doesn't like it when people look down on him as if they were superior to him, and he gets mad easily. He is extremely arrogant and cocky. He also thinks of people such as Midoriya Izuku as an obstacle on his path to becoming the greatest hero. Midoriya Izuku's passionate heart and strong resolve to save everyone who is in need greatly intimidates Bakugo, who's experienced firsthand how unwavering Midoriya's resolve is.å")
                        Katsuki.appearances << Hero_Academia_anime
                        Katsuki.appearances << Hero_Academia_manga

Midoriya = Character.create!( name:'Midoriya',
                              surname:'Izuku',
                              avatar_url: 'https://i.pinimg.com/474x/9e/5b/8d/9e5b8d8b513be4adbac1eb7a5cc9e119.jpg',
                              information: "+Quirk +One For All
                              +Birthday +July 15
                              +Zodiac Sign +Cancer
                              +Height +166 cm
                              +Age +4 (first appearance), 16 (current)
                              +Blood Type +O
                              
                              +Though originally born without a Quirk, he manages to catch the attention of the legendary hero All Might and has since become his close pupil and a student at U.A. He is a very timid person who gets scared a lot, although in recent events, he has shown to raise his voice when the heat is on. He is very diligent, strong-willed and a bit of a dreamer, and because he loves Heroes, he tries to know everything about them and writes down in his notebooks all he knows about heroes, including other U.A. students.")
                              Midoriya.appearances << Hero_Academia_anime
                              Midoriya.appearances << Hero_Academia_manga

Uraraka = Character.create!(name:'Uraraka',
                        surname:'Ochako',
                        avatar_url: 'https://i.pinimg.com/originals/7f/c7/a8/7fc7a86e0b99274bf9102b0252217cbd.jpg',
                        information: "+Age +15-16
                        +Birthday +December 27
                        +Zodiac Sign +Capricorn
                        +Height +156cm (5'1\")
                        +Affiliation +Yuuei
                        +Quirk +Zero Gravity
                        +Hero Name +Uravity
                        
                        +Ochaco is a short girl of petite build, her skin fair and prone to blushing; she’s always seen with a little pink mark on each of her cheeks no matter what her mood may be. Ochako is an outgoing, lively person who thinks everything positively. She gets excited over little things very easily. Ochaco has been described by other students as \"the most laidback girl\" among her class, being very bubbly and kind of an airhead at times. She is often incredibly blunt without being aware of it. Ochaco's Quirk gives her the power to manipulate gravity upon touching solid things with the pads on her fingertips. The targets lose their gravitational pull, effectively making them object weightless. She is able to activate or cancel her Quirk's effects by closing her fingers together, and is shown to be careful with her hands in order to avoid accidental quirk activation. ")
                        Uraraka.appearances << Hero_Academia_anime
                        Uraraka.appearances << Hero_Academia_manga

Shouto = Character.create!( name:'Shouto',
                            surname:'Todoroki',
                            avatar_url: 'https://i.pinimg.com/originals/93/71/e4/9371e47447606cf2e4d48cb3cad006a4.jpg',
                            information: "+Age +15 (First appearance), 16 (Current)
                            +Birthday +January 11 (Capricorn)
                            +Height +176 cm (5'9\")
                            +Affiliation +U.A. Student
                            +Quirk +Half-Cold Half-Hot
                            
                            +He is a student at U.A. training to become a Pro Hero. He got into U.A. through a scholarship because of his powerful Quirk.
                            
                            Shouto has bi-colored hair, the right side is white, the left one is red. He has a burn around his left eye. In his hero costume, Shouto wears a dark blue jacket, dark blue pants, a silver-colored combat vest, and white boots.")
                            Shouto.appearances << Hero_Academia_anime
                            Shouto.appearances << Hero_Academia_manga

Toshinori = Character.create!(name:'Toshinori',
                              surname:'Yagi',
                              avatar_url: 'https://i.pinimg.com/originals/49/c4/ce/49c4ce4fe8ad927ec0f7006a47838dd2.jpg',
                              information: "+Birthday +June 10
                              +Zodiac Sign +Gemini
                              +Height +220 cm (7'2\")
                              +Affiliation +U.A.
                              +Quirk +One for All
                              
                              +All Might is the No. 1 Hero and the \"Symbol of Peace.\"
                              
                              In his hero form, All Might is a very tall and over-muscular man whose design resembles the american hero comics. His hair spikes on top of his head and his whole body has more shadows than a normal human being.
                              
                              However, in his true form, he is an over-skinny man who spits a lot of blood out of his mouth and his clothes appear loose.")
                              Toshinori.appearances << Hero_Academia_anime
                              Toshinori.appearances << Hero_Academia_manga

Aizawa = Character.create!( name:'Aizawa',
                            surname:'Shouta',
                            avatar_url: 'https://www.hobbydb.com/processed_uploads/subject_photo/subject_photo/image/39997/1527105819-18139-1831/Shota_Aizawa_large.png',
                            information: "+Age +30, currently 31
                            +Birthday +November 8
                            +Height +183 cm (6')
                            +Occupation +Hero, Teacher
                            +Affiliation +U.A.
                            +Quirk +Erasure
                            
                            +Aizawa's hero name, Eraserhead, was coined by Present Mic when they were younger. Using the binding cloth, Aizawa has a unique fighting style that allows him to immobilize his enemies. He is known to expel students that don't meet his standards, however it should be noted that he did not expel anyone from Class 1-A. Aizawa is extremely vocal, able to voice his opinions very easily. Although seeming emotionless and reserved, he has a soft spot for his students and genuinely cares for them. ")
                            Aizawa.appearances << Hero_Academia_anime
                            Aizawa.appearances << Hero_Academia_manga

Dabi = Character.create!( name:'Dabi',
                          surname:'',
                          avatar_url: 'http://pm1.narvii.com/6888/e751c8ee5966dfb0314f713075262b9ea1a4c04er1-385-382v2_uhq.jpg',
                          information: "+Quirk +Blue Flames

                          +Dabi is a major supporting character and villain affiliated with the League of Villains and a member of the organization's Vanguard Action Squad. He and the rest of his team serve as the main antagonists of the Forest Training Camp Arc. Left handed.")
                          Dabi.appearances << Hero_Academia_anime
                          Dabi.appearances << Hero_Academia_manga

Enji = Character.create!( name:'Enji',
                          surname:'Todoroki',
                          avatar_url: 'https://media.comicbook.com/2018/07/my-hero-academia-endeavor-1119853-1280x0.jpeg',
                          information: " +Age +45 (first appearance), 46 (current)
                          +Birthday +August 8
                          +Height +195 cm (6' 4¾\")
                          +Occupation +Pro Hero
                          +Quirk +Hellflame
                          
                          +Endeavor is a tall man with a muscular physique. He has short and spiky, red hair with bright blue eyes. His beard and mustache appear to be made of fire, but when he turns off his flames on his face voluntarily, his stubble shows.")
                          Enji.appearances << Hero_Academia_anime
                          Enji.appearances << Hero_Academia_manga
### end of creating characters

##### Creating users
admin = User.create!( name: 'Admin Alex',
                      email: 'mail@mail.com',
                      password: 'pass',
                      role: 'admin')

registered1 = User.create!( name: 'Leon Registered1',
                            email: 'registered1@mail.com',
                            password: 'pass')

registered2 = User.create!( name: 'Olga Registered2',
                            email: 'registered2@mail.com',
                            password: 'pass')

registered3 = User.create!( name: 'Zen Registered3',
                            email: 'registered3@mail.com',
                            password: 'pass')

blocked_user = User.create!(name: 'Obito Blocked',
                            email: 'email@mail.com',
                            password: 'pass',
                            is_blocked: true)

##### Creating comments
comment1 = Comment.create!( comment_body: "This anime is the best anime ever!! I couldn't stop my tears!!",
                            user: registered1, content: Shigatsu_wa_kimi_no_uso_anime)

comment2 = Comment.create!( comment_body: "Aww Violetto !! I hope she can sattle down the things for herself.. I don't want to give spoiler so I am being quite...",
                            user: registered3, content: Violet_anime)

comment3 = Comment.create!( comment_body: "Narutoooo! Sasskeee!! Narutoooo!!! Sasskeeee!! NARUTOOOOGGG!! Lol!",
                            user: registered1, content: Naruto_anime)

comment4 = Comment.create!( comment_body: "I just finised the manga and I am going to watch the anime of it!! I was amazing! OMG!",
                            user: blocked_user, content: Demon_Slayer_manga)

comment5 = Comment.create!( comment_body: "Booriinng..!", 
                            user: registered1, content:Fairy_Tail_manga)

comment6 = Comment.create!( comment_body: "I dropped the manga, I hope its anime will be much better!",
                            user: registered2, content: Fairy_Tail_manga)

comment7 = Comment.create!( comment_body: "Nobody: '....', \nNaruto: 'SASKEEE', \nSasuke: 'NARUTOOO' \nhahahahahaha",
                            user: admin, content: Naruto_anime)

comment8 = Comment.create!( comment_body: "Wow! I didn't see that is coming! SENSEII!!! T.T",
                            user:admin, content: Naruto_Shippuuden_anime)

##### Creating replies
reply1 = Reply.create!( reply_body: "I have watched the last movie.. It was amazing! I cannot tell what happened in the end but.. ahh!!",
                        user: registered2, comment: comment2)

reply2 = Reply.create!(reply_body: "Oh! You will like it for sure! They did a very good job!",
                       user: registered1, comment:comment4)

reply3 = Reply.create!(reply_body: "Neeh.. I liked the manga most, I didn't get the same vibe from anime.. but it was kind of ok...",
                      user: registered2, comment: comment4)

reply4 = Reply.create!(reply_body: "You will drop the anime as well.. I am betting, you can only survive at max three episodes!! Lol!",
                      user: registered1, comment:comment6)

reply5 = Reply.create!(reply_body: "How come!!", 
                      user: admin, comment: comment6)

##### Creating ratings & reviews

##### Creating reports

##### Adding some contents to users list

##### Adding some reports 

##### Adding some voting to the comments