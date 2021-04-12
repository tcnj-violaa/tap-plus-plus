INSERT INTO users (name, email, password_hash, user_type) VALUES ('Raymond', 'chowr2@tcnj.edu', '$2y$12$vc0kDBqt5qabUQloeWgQW.QmXz4AuLA94C/V5/dqwlXYBFowaQ8D2 ', 2),
  ('Sam', 'haselos1@tcnj.edu', '$2y$12$TbZfMU3Dnprfg5muq1TTdend.9.o7WQ90J0nj/RA5ucRNxxqzbjkS ', 2),
  ('Alex', 'benasua1@tcnj.edu', '$2y$12$ltOsDlSqFZ0zTThM57vH0OVvI7D39Jcb3eOEG5sss/NhXmFZmqzuC ', 2),
  ('AJ', 'violaa1@tcnj.edu', '$2y$12$5HiB2gYkg0s1cEJYVSc/v.B9nmS8hONF1KZtfH0nCm8ZC0UFx7cbG ', 2),
  ('Hackerman', 'hackerman@g00gle.com', '$2y$12$INGeiNOT31tzldo.cUcCX.EheaxgwvyInGRXolfhMMx4zqTHA5UJa', 0);

INSERT INTO audio (name, description, audio_date, upload_date) VALUES ('JHS 33', 'Percy Siskowitz', '1997-07-17', '2021-04-11 05:24:29'),
  ('Millner, Joel', 'Previously known as JHS 13', '1995-05-31', '2021-04-11 20:01:08'),
  ('Brenda Camp Interview', 'Previously known as Old Trenton Oral History Brenda Camp', NULL, '2021-04-11 20:04:22');

INSERT INTO tag_category (name) VALUES ('Year'), ('Topic');
INSERT INTO tags (category_id, name) VALUES (1, '1976'),
  (1, '1988'),
  (1, '1993'),
  (1, '1994'),
  (1, '1995'),
  (1, '1996'),
  (1, '1997'),
  (1, '1998'),
  (1, '1999'),
  (1, '2000'),
  (1, '2002'),
  (1, '2003'),
  (2, 'Bicentennial Project'),
  (2, 'Gummere'),
  (2, 'Jewish Historical Society');

INSERT INTO audio_tag VALUES (1, 7),
  (1, 13),
  (2, 5),
  (2, 13);

INSERT INTO audit_logs (user_id, type, data, create_time) VALUES (1, 'transcript:approve', '{"audio_id": 1, "edit_request_id": 2}', '2021-04-12 01:26:51.523505'),
  (1, 'transcript:approve', '{"audio_id": 2, "edit_request_id": 3}', '2021-04-12 01:26:51.525582'),
  (1, 'transcript:approve', '{"audio_id": 3, "edit_request_id": 4}', '2021-04-12 01:26:51.526077');

INSERT INTO transcripts (audio_id, text, revision_comment, is_latest) VALUES (1, '', 'System generated initial transcript', 'f'),
  (2, '', 'System generated initial transcript', 'f'),
  (3, '', 'System generated initial transcript', 'f');

INSERT INTO transcripts (audio_id, text, revision_comment, is_latest) VALUES (1, 'SIDE A:

Siskowitz: At 45 when I came back, Professor Loe was one of the world famous professors who came to Princeton along with Professor Ganowski and Professor Reeseson and Professor Loe was co-chairman with me in 1943. Uh, so he wrote me a fax- a card that I still have asking me to come back to the regular meeting and with Princeton ______ more than tripled I should- I should be storming to come to Princeton. So in ‘45 I already took the chairmanship even though I wouldn''t be in Princeton at that point. I was only able- I bought the farm in Princeton in May of ‘45 and moved here in June.

Interviewer: In this house?

Siskowitz: In this house in ‘45. Uh, aside from ‘45, ‘46, ‘47, ‘48 I remember each ___ getting paid. In ‘47- in ‘48 rather, if my memory serves me right, Jess Epstein took over the chairmanship and, uh, seven years ago this treasurer every continuously with me wherever I was chairman. He was also treasurer when Epstein was chairman back in 1950. Some years ago moved to Trenton and, uh, Harry Belot the treasurer job.

Interviewer: Now was there a president? And a chairman?

Siskowitz: No

Interviewer: Or just the chairman?

Siskowitz: Chairman, but in the later years he became a president quite later. So in 1951- in 1951 I took the chairmanship again and i- and in ‘52 though until about 1961 when I took it again, I was treasurer so I was- I didn''t lose much time between the two I was either chairman or treasurer throughout. So in ‘61 was when the last time I was chairman of the United Jewish Appeal. It was- we had some very interesting moments in those years ‘cause those were really important years for the UJA. In 1947 for example, the UJA was- the program was 170 million dollars. We had a crowd of 45,000. We were just a handful of people and we formed a christian community and quite important people in that community the president of the university the president of the institute for  for the {inaudible} 87 87 yes after frank eder left from the ___ _______ dean brown and reverend gordon and reverend tucker reverend walsh from all churches and a couple of my personal favs john huff joseph huff the former mayor of princeton mark ___ so {inaudible} and  it was quite interesting when  the chairman of that community wrote about the clothing that we had and the enormous amount for the community we should take it in consideration of the times those for those with homes like across the street here in 42 were built for 5,000 dollars and the house across the street was up for sale for fewer than 5,000 dollars and sell it for 270 something

Interviewer: How much was this house when you moved?

Siskowitz:well I brought it up when the _____ but I will say this that when I bought it the taxes was a __ for 34 dollars my taxes now is closer to 6,000 dollars. [laughter] so you can see what the difference is  the land was this time the real assessment a couple of years ago _____ the land was around 300 to 500 dollars was assist for 129,000 dollars just the land so you have an idea what the difference in price for those in early years im talking about was when when the loaf of bread was still cents when the big round load of bread was forty-five cents when corn flakes was five cents so you should remember so that if we take it to a proper prospective when they''re talking about when we raised 5,000 dollars reasonably that was 11 million when people''s income was only about 50 dollars a week with big ____ when I worked in the service in 1944 in 43 I recall that that time that 5,000 dollars was in the first five percent of income for the people in the United states in the first five percent was 5,000 dollars

Interviewer: now when you got the christian group to help you, did you-they meet that quota?

Siskowitz: they helped I would say that there was a great deal of response from the christian community very modest and then again some prove the point that each group have to take care of their own

Interviewer: ...this including the jewish... 9:16-9:26

Siskowitz:(9:30)..until several years later really in 1961 even the amount that we raised was around-a little over 30,000 between 9,000 something like that of course the community kept growing and [inaudible] of course it raised considerably more money it became very large amounts number of .... you see and the number of people coming and professional people climbing under business people at that time coming in the business people would leave [laugher] if I do remember correctly the community changed considerably it''s a different community a ..living we live in a small community where somebody has simcha everybody was up for simcha if someone have a sad situation everybody was there if somebody had a rough site all you had to do was grab the phone and we had people to ...(10:50)... today we have a law school where basically we live their problems with .... so its a different community entirely and it was a very pleasant community in fact so much so that when I have various opportunities for promotions in .. Jersey I didn''t accept I felt I was moved here more but of course by the time they kicked me out of the service I had no intensions to make any changes and then drove Princeton ..... another community and there were a lot of there were a lot of friends here and the cooperation of the new people coming in was exceptionally good young people professor marvin bernstein was doing student role at that time telling sticks I think he would''ve affect  ....of sticks well in Israel for a year in university ...physics and the rate of beautiful weather to 1961 when I took over the chairmanship again telling me about how beautiful israel was and the progress israel was making and we owe the weather to the community all together at the time once in dinners in the early years we always have a dinner to start the ..... for the major dinners first and then eventually some raid started the big dinner for the whole community we paid for the dinner our total campaign expenses was no more at any time than 3 percent

Interviewer: that''s not bad

Siskowitz: you see when we talk about the dinner [laughs] I sort of found a little note today um [shuffles paper] let''s see if I have it here [shuffles more ] (13:41-13:56) yeah so during the time when I was in 1961 the cost of the dinner was 5 dollars and 50 cents a person we had 75 people at the dinner 5.50 was a big investment today to invite people to the dinner 

[inaudible]

Siskowitz: you get a count of ... and priests and judges and others of whatever is given which helped the situation but I also have it wrote here that during the period that I was treasure in 1956 ''57 ''58 in 1959 in 1960 the dinners was running like in ''56 was running 4.75 a person of course we had to pay for .... and we had to pay for a little bit extras so the whole dinner for 73 persons in 1956 we paid 407 dollars and in the other expenses of course was millions everything we did was on volunteer basis we had no one on a paid basis at the time  example in 1957 we had 68 people at our dinner a few 85  cost total costs would be 283.01 dollars [laughs] so take that in in consideration where we can pay of the day they say 5000 dollars and of course and then the sum kept decreasing each year [inaudible] so personally I feel we did a good job  in 1940 when we had the new people coming were the SUA at that time [shuffles 16:14-16:21] in 1940 let''s see 1942 just to correct myself let see ''42 I was appointed already in the American Jewish .. Edition Committee a national committee  I served in that and in 1961 I was there for a few years with the association in 1961 they reappointed me again for another four years for the for the Americans Retribution Committee in 1940 [shuffles 17:00-06] in 194- [shuffles 17:08-17:11] 6 mrs. jess epstein served as secretary she was a tremendous help to me at the time she also served in 1947 and then of course we went with other people jess esptein took over the chairmanship in 1949 I believe it was for I think maybe two years at that time and other people who were left as treasurer and in 1960 1951 I took one of them  harry bennett was treasurer when jess epstein was re-elected and then in 1951 and after following that after she was elected she ran the treasurership until 1961 she went up  with the chairmanship again and that was after that we had all these wonderful people coming who have taken a great interest in young people as I was with a kid here [laughter] we took in great interest and contributed considerably and so we have a very active community and still have a very fine active community here doctor vined? who was originally from Trenton ... ms.vine who said we was from bordentown and had delayed jurisdiction she said this about them she served a couple of years in the women''s division as a served

Siskowitz:is there a ruth-ruth

Interviewer: ruth

Siskowitz:ruth jersey singoa 

Interviewer: yeah

Interviewer:yeah oh I remember as a matter of fact I took her running pictures

Siskowitz: really?

Interviewer: yeah missionary stuff I didn''t approve of 

Siskowitz:right

[overlapping] at the time

Siskowitz: she was a dentist with not enough time in the morning she was tired [flipping pages 19:44-19:52] [mumbling 19:53-55] ''51 into the mid 60''s she continued that women''s position in 1961 she [flipping pages 20:13-20:23] ''61 did she yeah she was secretary in 1961 and I think she continued as secretary in ''62 im not sure sixty- delran daughter of 

Interviewer:missioner 

Siskowitz:missioner man who said to dress in something beautiful at her afterwards when she was in Europe and met some very important people to come to address this community and honestly though him and her each alone were able to recognize the importance of Princeton was it was wealthy  and it was a land of cooperation and when I went into the service there were letters from the destinations at the time and each time I took a treasurership or chairmanship while I was receiving a very nice letter from the head office ... with cooperation a lot of good help so it wasn''t a job that pertained by any one person it was a cooperative organization

Interviewer: how was albert einstein''s influence in-

Interviewer: he was he was very cooperative he attended all of our meetings he came here when I had meeting with the board he was he signed all of my letters that I sent all up to the day he died he sent out a letter to the christian committee different people asking him to serve with the committee that I had proposed at that time 

Siskowitz: did you vote him in the office?

Interviewer: he was almost he was I would say honorary chairman in every campaign we had we had him as our honorary chairman we had a professor lowe who was a very well renowned individual who served with me for several years as for a couple years as co chairman professor kadowski served with me for a couple of years as co chairman wherever he was and so basically for a joint study was a very important part of our campaign the influence of einstein and these professors they affect professor lowe used to give me the names of all those who have come over and in December I would stick around to contact these people for donations every time I spent money ....at that tim I can tell if you''re interested to know the .... that''s of course another stay the wonderful things about professor einstein the different things there was example through sight this one example was about professor einstein I was in his home because I had to get his signature on the letters I was sending back to his community he was in a conference with two other professors and the problems they were having and so I separated it was very interesting to do to be sitting there and directing the discussion but a group of young men came to the door unannounced without appointment asking to see professor einstein and ms. dickens who was the secretary at the time told them that he was occupied that he couldn''t possibly see anyone without an appointment and they were quick insistent and he heard the commotion and he collective sat up what is the problem so ms. dickens explained to him these people came from english I think it was they were having a group forming to have invited different important people to address the incident and this is the farm area in...i think it was at that time and he was like wow look at the young people bringing in and he went to the door and looked at the lady and expected him a purpose why wasn''t he they wanted him to come to address them and he appreciated the invitation so much and praised them highly for their efforts that they were making in their um [inaudible] young people mostly and but that he wasn''t already in a position to do that and even every interviews that he was having they were bringing the cameras in television at that time already to his home and in fact even when he was here one time when I was having a table spread for after the meeting he couldn''t attempt to participate in that part but at that time the way he praised them I felt as if it was a rabbi talking to his students [laughter] and and encouraged them to continue with that so smiley so he was admirable he was left aloof he was a he treated everyone really now he was in my town take with him I felt an ... basis with him because that is the way he treated me if he got a letter from someone from his uncle he would call or have his ms.dickens call me to discuss certain things so he was definitely a very fine young boy he couldn''t aside from being a professor he was to a degree a shy person that may seem when he was here and I had the table against the door because I had chairs all over the place and when he was ready to leave we were seeing the discussion room standing above several recent situations and when he was ready to leave I had we had to move the closet and he thought he could go out the other way in my head closed off you still have an opening that other closet that was the he was embarrassed by the fact that he to go out before everyone else you believe and when I told him I had the broke face? and he had to come through the door he was really embarrassed by it but aside from so many other things at one time and by the enthusiasm at the meeting at the public meeting that was at... I was tearing the paper read making every effort to contact every Jew possible and even everyone suspected to be a Jew [laughter] at least we did he pulled my sleeve turned to me and he said they''re just like the Nazi''s [laughter] the way he snapped [inaudible mumbling with laughter] but the fact of the matter is that in those days we did contact everyone that possible could we left no one to go without a contribution this is something that I don''t any federation had every succeeded in doing and i''ve seen publications of the Jewish federation and they used to post the different contributions and it was shameful to see that so many contributions were in the 10 15 20 dollar range but just working people too so many business people that was shameful to even publish it was to date expect in 1970 we never published the amounts anyone gave but in 1970 the professor linkton ran the campaign and he published not individual but in classes listing those over 2000 those at that time that was already related to that class and over 1000 in those in between 500 and 1000 and between 250 and 500 and so on and listed those under 35 and when I read the names I was sick because I felt that was a terrible thing to do if these people couldn''t afford to give at that time they shouldn''t be publicized 

[inaudible interviewer comment] 

Siskowitz: I felt very strongly about that also of course I saw names of others that should able to help more of course in 1970 the ... sucks it was not existing doesn''t resonate like the 40''s or 50''s you see so I was always against this idea of publishing because people are giving in accordance to their what their heart permits then we tax ourselves and I always felt that women could do a usual rate is a tax that we put on ourselves that is important tax to take care of our own to take care of those who need help and without the help that Israel standing leads to the disparity today we still have problems but we also have problems individually that have to be taken care of and if we don''t have a Jewish community established locally we will never be ready to have those overseas 

Interviewer: true

Siskowitz: you see

Interviewer: true

Interviewer: so you have to that as well and we have people like in Trenton I recall .. wrote in one of the articles about the Hebrew Boys Society well when we think about something like this I was very impressed with that article in fact and several numbers that you have written and I followed very closely in fact but here is a situation where people as you pointed out won''t chase was a big deal about 126,000 dollars as I remember those people needed help and it was the help that like I''m thinking in my own case when we came here in 1921 with my uncle who was a reasonably good for most of the circumstances because he was a builder at that time and then over his sister with five children that''s my family by the idea of the first world war and established us in the grocery store so that we could take care of ourselves and when I think about it how many people have been in those things in an individual basis how many people have the fortunate to have an uncle who can be able to do something like that

Interviewer: hmm

Siskowitz: so that we need a community its like I  read a mr. scadel who was chairman of the latex cooperation he''s the one who owned the place they were building the rock of ...today

[inaudible]

Siskowitz: dump rocket you see and I recall when I called him here on this sunday morning and of course I made the appointment with him first it was during the time when Truman was president and he was going to use the army to break a strike at the railroad I think it was at that time

Interviewer: yes

Siskowitz: you recall that incident?

Interviewer: yup

Siskowitz: and a member of senators where calling him to get his opinion on it and describe everybody on the drill and of course he was against the idea using the army to break a strike and things of that sort and one discussion I had with him and his argument of course was him given on an individual basis he published books for Palestine a book for Palestine for example he was really a cancer critic in honor of his father who died from cancer which was costing him close to half a million dollars a year to maintain and after he was explaining that people were considering him a lesser .... because he wouldn''t take certain cases because they were doing experimental work primarily at that time for the cancer and so he''s  argument was that he was being that went off on his own that he shouldn''t be expected to join and they accepted him we would like him to join the community and he said of course he was a citizen of the world he wasn''t just a citizen of Princeton at that time and as I told him at that time I said mr. scadal that''s fine for you to say that you can afford it what about me who can''t afford to have an individual charity organization we needed an organization to form ourselves and able to be able to help our fellow Jews and in the final analysis it was Ms.Penal who went up with her man and she continued giving fairly reasonable contributions but he felt he might''ve been justified that he would spend a great deal of money on his elder he didn''t need an organization to lead him to where his money should go you see so we have our experiences and I think I made some bless time to you I can explain to without having people I have invited to serve on the board because they were referred to me as Jews and then .... away Jews they were only they thought I was Jewish so their name is Jewish [laughter]  like like the Catholic minister coming today you see but the discussions I had with some of those people they still have a feeling

Interviewer: true

Siskowitz:even though they were Christian, brought up as Christians, but they still had the feeling yeah of one particular case who would not make his contribution that one particular year because he joined this abusive community and they never Palestine appeal couldn''t agree on the percentage of take when we joined as a joined the group we were already running in the campaign before the ... came up to the settlement and he was at the time felt very strongly remorse for the joined this abusive community he was extra impact Palestine appeal itself and since it was impacted by Palestine we gotten to quite a discussion about it and in the discussion he said well I''m not Jewish I''m Christian my wife my brother was Christian I was brought up as a Christian my wife was Christian [inaudible] my father today was taken disinterest of course at that time they never considered him chairman you see and this I said to him I can''t seem to remember his name it was a real Jewish name actually and I said no we''re not doing it in honor of to honor your father we''re doing it because you have your father''s heart, you have a Jewish heart we take care of our Jews and he looked at me at the time and of course even through the discussion we were having about Palestine I believe I convinced him that it was important that we should have a piece of land where we could unite and if and get the people all these refugees that ...and I would stay true and accept during those days and in fact I got a larger contribution from the the morning gift of a long discussion was a big contributer but when I mentioned about the Jewish heart 

[inaudible]

Siskowitz: he he said goodness I remember my grandpa well he was a very charitable person you see what else can I tell you

Interviewer: it all sounded very good

Siskowitz: they say I have contact with the community even before I came to the community because the few Jewish people that were here used to be at festivals in my jewelry store and they variation on fall street

Interviewer:can you give me inner workings of the your family with your brothers and sisters

Siskowitz: well what could I tell you

Interviewer: when you were smaller I mean how close were you-

Siskowitz: we were a very close family very close we were a very close family in before we came here like I said my father died when I was about eight years old and that was a direct result of the first world war so we all worked together very closely we all cooperated with everything very closely and when we came here my two sisters the oldest sisters went to work with me i think my younger sister who was only sixteen at that time she took complete control over the store she picked up the English language in no time simply went to night school short time she was very capable individual wonderful person let''s say I was very close with her and after school I was 

Interviewer: what was what was your sisters name who''s sydney grosses sitting her grosses mother

Siskowitz: lina

Interviewer:lina?

Siskowitz: yeah 

Interviewer: was she with you

Siskowitz: she was the next oldest

Interviewer: thirsty 

Siskowitz: I had a brother who was left in Europe he left when the war started in 1914 the school gave him a complete scholarship and they moved out to deep Russia I think it was what would we call it that was the landing..... it was eighteen he had to the school moved up and him he went from the school and he was left-

[inaudible overlap]..St. Petersburg wasn''t it

Siskowitz:that was after that they named the 

Interviewer: Purtrugra? 

[inaudible laughter]

Interviewer:I heard you change it 

Siskowitz: yeah [laughter] but ..went with the school and he only came once for a visit during the war and my father and I can recall this so vividly was at all prepared one year to go visit him he got the passport he got the everything ready and something came up and I don''t know exactly what he wasn''t able to aboard it they didn''t permit




















SIDE B: 

Siskowitz: and in the when we came here in 1921 because we were always in East Slovakia and we went to Reagan where I had an uncle there who later came here after us as well in 1921 we got a letter from my brother we had left our address with the Red Cross at the time when we were locating one of the other families and he was able to get the address that way and wrote a letter at the time he was still in the army he was a commander of engineers he was an engineer at the time and of course he was hoping that someday we would able to be together he was a when we got believe it another letter from him in fact Liam wrote to him a couple of time and then he got the response eventually and under the Stallon situation he was one of the people obviously that was eliminated among many others when Stallon started this business

Interviewer: Now one of one of Liam''s daughters is the head nurse at Greenwood''s house

Siskowitz:I don''t know if she''s the head nurse but she''s there

Interviewer: What was her name? [overlapping] Aileen 

Siskowitz: Aileen Burkman

Interviewer: Okay now. Does Aileen have a daughter?

Siskowitz: She has two daughters

Interviewer: [overlapping] That''s also nurses?

Siskowitz: No, no one daughter is a teacher and the other one is working in New York in some agency of some sort I don''t know if she''s there

Interviewer: [overlapping inaudible] maybe Aileen had a daughter that worked at the as a nurse to some-

Siskowitz: No no she''s she had taken up nurses nursing before she was married and when the children grew up she went back to nursing and she got the job at the Greenwoodhouse fine young lady and she has two daughters and a son the son is in college now the son spent a year in Israel in fact and of course the other daughter Burnese she''s a teacher she''s got two sons one is now a lieutenant in the marines he wants to make a career out of that and the other one is in college now and then Brenda who was running the school for the land of Israel she''s got two children so Liam had a lot of ... from his three children they were all very well and married and doing well

Interviewer: That''s good that''s nice

Siskowitz:and he had a great deal of ... from them and a great deal of joy he said too bad that he''s not well today Liam and I were very close

Interviewer: How close were you in age?

Siskowitz: Two years and two months

Interviewer: And who''s older

Siskowitz: He''s older

Interviewer: And your your one was in the army in Russia

Siskowitz: He was 

Interviewer: was he 

Siskowitz: the second one in the family

Interviewer: Okay

Siskowitz: Jean Failman was the oldest and then my brother Theya he was second and then Liam and then Anna and there was another child that died before I knew anything about it and then Liana and then I''m the baby of the family so 

Interviewer: That''s nice it''s a nice close family

Siskowitz: Very close very close we were we were a singing family actually at that time we didn''t have radios and TV''s and we all enjoyed the singing 

Interviewer: What I''d like to do is I''d like to borrow this and as I write this I can refer to some of these things with the dates that you were saying and I''ll get them back to you

Siskowitz: I appreciate that

  


', 'Initial transcript', 't');
INSERT INTO transcripts (audio_id, text, revision_comment, is_latest) VALUES (2, 'Transcribed by Jacob Haney

INTERVIEWER: Today is, uh, May the 31st 1995, I’m sitting with, uh, Joel Millner in his spacious office, and uh we’re gonna explore a little more information of his dad Nathan Millner, which I recall him very well, uh, a few years back. Uh, the first thing, uh, J I wanna do is to clarify, uh, this first date when he was born. What year was he born? It’s—I had somebody mention somewhere 1884

JOEL MILLNER: Ummmm, [pause], I just wanna, uhhh, make sure ‘84?

INTERVIEWER: Because his hundredth birthday is what you have at, on the tape—

JOEL MILLNER [interrupting]: Yeah, well that was it, it was August 25th uh—

[1:00]

INTERVIEWER [interrupting]: Okay 1994, so [indistinguishable] okay, alright, and where was, where was he born?

JOEL MILLNER: He was born in, uh, in, um, Vilna 

INTERVIEWER: Vilna, that was, that was probably in Poland at that time.

JOEL MILLNER: Yeah, it was Poland, right.

INTERVIEWER: Okay, and, uh, uh, how many, uh, uh, how many, children, were, were, did his parents have?

JOEL MILLNER: Uh, gee, that’s uh, you know I’ve never, um, uh, well they never came to this country so, uh, I knew there was a, uh, a sister and, uh, I think two other brothers, but I’m not sure. That’s a, uh, that’s a question that, uh—

INTERVIEWER: Okay, wh—, alright, what kind a, what kind of a livelihood did your grandfather have in Vilna uh, before they came over here?

[2:00]

JOEL MILLNER: Uh, well, he had some kind of a uh, of a store, but uh, I don’t think my father was involved in the store, he had learned a trade as a uh, as a uh, repairing, uh, manufacturing shoes, I thought they, they called him, he was a uh, top—, a topper, he made the uh, tops of uh, of shoes, and he had gone away to learn the trade, and uh, and then he came home, and then he was in, uh, he was, ya know, working in his trade and, and  doing very well in his trade, but I guess he was uh, 19 or uh 20 [3:00] and uh, it wasuh, he uh, left his family to uh, to come to the United States because uh, otherwise he would’ve hadda gone into the uh,service

INTERVIEWER: Now, did he go into, after, —er did he go into any separate businesses after he learned, uh, the shoe making business or he didn''t do that until he came to this country?

JOEL MILLNER: No, he did that over there, he was making a, uh, a living doing that as a young man, now, um, uh, what the family business was a, uh, I—I—I honestly don’t know.

INTERVIEWER: Okay, now, you mentioned that uh, uh, he came here to this country in 1905, uh, and he stayed with an uncle and 5 cousins.

JOEL MILLNER: Well that was, uh, uh—

[4:00]

INTERVIEWER [interrupting]: So that would have been one of his, his uh, father’s brother—

JOEL MILLNER [interrupting]: One of the father’s brothers a uh—

INTERVIEWER [interrupting]: And, where

JOEL MILLNER [continuing]: he was, uh an uncle of uh—

INTERVIEWER [interrupting]: Where did he live, when he came here?

JOEL MILLNER: Well, I thought they lived, uh, down on, uh, Unionstreet, or that area, ya know, in, in downtown uh, Trenton

INTERVIEWER: Okay, uh, do you know about how long he stayed with them?

JOEL MILLNER: He stayed with them for a short period of time, and then he moved in with uh, um, Joe Olinski[s family, and, uh—

INTERVIEWER[interrupting]: The Olinskifamily, was it Joe Olinski?

JOEL MILLNER: Yeah, I don’t know who, the, uh, the father was but, uh, you know, uh [indistinguishable], uh, I don’t remember the father’s name, I’m not sure if it was Abe or, uh, or not, I don’t know that was, you know, uh, [5:00] Joe Olinski, they, they had a roofing supply business, and, uh, and then I guess he left there and then he, I thought he worked in his trade in the Boston area for, for [indistinguishable]—

INTERVIEWER [interrupting]:O—Okay, now I have something here that I heard somewhere that he sold uh, writing papers and pens and needles, was it, did he do that while he was here in Trenton, in the Trenton Area?

JOEL MILLNER: Yeah, I—I don’t think, uh, he, ya know, he was a uh, peddler 

INTERVIEWER: okay

JOEL MILLNER: You know, uh, and—

INTERVIEWER [interrupting]: ’cause they said between 1905 and 1923 he had different businesses and he sold candy and hot dogs and—

JOEL MILLNER [interrupting]: Well, he had a little store where the guys you know, played uh, cards in the, uh, in the back room, and, uh, and he sold candy—

INTERVIEWER [interrupting]: like a, like a [indistinguishable]?

JOEL MILLNER: Yeah, yeah, but he happened to be a very good, uh, a very good [6:00] card player, now, uh, now whether he was, uh, uh made any money doing that or not uh, it’s hard to say.

INTERVIEWER [interrupting]: Well, they always, they always uh, cut the pile,, the house always cut the pile, so.

JOEL MILLNER [overlapping]: Did they really? 
INTERVIEWER: Yeah. Okay now, uh, there was a hardware store in Trenton, uh, it says five years, [indistinguishable] owned a, owned a, he had a hardware store

JOEL MILLNER: Well yeah, yeah, I guess he was on broad street, he had a, uh, houseware store, and—

INTERVIEWER: Was that Broad, uh, South Broad or North Broad, do you—?

JOEL MILLNER: I believe it was South Broad

INTERVIEWER: Okay, okay, and uh, you said that the next thing was in 1922 or 1923, uh, he bought uh, your mother a diamond ring?

[7:00]

JOEL MILLNER: Well he had, uh, well that could be, uh, you know uh, that’s probably the right—right year, I mean he had, uh, how he met my mother, or, uh, how they made the match, and, and I think it was the Rabbi who was in Trenton at that time, uh, and uh, was uh, was originally from Elizabeth, and my mother had came from a family of, uh, of ten children from Elizabeth, and I guess, uh, at that point in time she hadda be in her uh, mid to uh, mid-30’sor so, and the Rabbi knew uh, [8:00] uh, knew the family, and when my father was uh, went to state college, she realized ya know, how learned he was in, in all the Jewish uh, services, and uh, able to conduct them, and he had a uh, a beautiful Hazzan voice, and uh he thought, gee this would be a very good uh, match for uh, for Reba Jacobson, so, uh, that’s how they ma—made the match.

INTERVIEWER: and her name was Reba?

JOEL MILLNER: Reba, R—E—B—A

INTERVIEWER: Okay, and that was from, uh, they were fromwhat town was that?

JOEL MILLNER: Well, the Jacobson’s uh, were from Elizabeth, New Jersey.

INTERVIEWER: okay, okay, now they mentioned something about a car that he first owned, do you remember, uh, you said, uh, uh, [9:00] I’ve never heard of a Dwight, was that a—was that a—?

JOEL MILLNER [interrupting]: I don’t know that

INTERVIEWER: Now—

JOEL MILLNER [interrupting]: I remember he had a hotmobile

INTERVIEWER: Hotmobile?

JOEL MILLNER: Yeah, now that one seemed to be memorable, that name, because I thought it was a funny name

INTERVIEWER: Uh, it said something about his father-in -aw was in—built houses, the Jacobson [indistinguishable]—

JOEL MILLNER [interrupting]: Well, Bernard, uh, Bernard Jacobson, I guess he, uh, was in the, uh, lumber and coal business in, uh, in Elizabeth, and I guess he was there with, uh, I don’t know how many sons or, uh, were, were involved uh—

INTERVIEWER: Well, it said they had five sons and five daughters?

JOEL MILLNER: That’s right

INTERVIEWER: Okay.

JOEL MILLNER: Yeah, that’s true, [10:00] and all the, uh, I think all the sons were, uh, were in the lumber business.

INTERVIEWER: Okay, now this is the other part, another part that was, a lot of conversation took place, about taking a house in trade. What was, what was that?

JOEL MILLNER: Well, he, he was, he had, uh, what, what he did was he sold boulders, uh, he would bring in a car load of lumber and then he would tally it out and sell it off to the, uh, to the builders. And they uh, in this particular case they, they weren''t able to pay him, and that was probably during the uh, depression, and he took the uh, the house in trade, and some of the also uh [11:00] sometimes they just, that was part of the arrangement that they would supply the material and then they, and then when they would build a track of houses, and would get a house and uh, so that that would compensate them.

INTERVIEWER: [indistinguishable] says the family gave them  five thousand dollars for a wedding present, now was this in a house that hecould sell or was this a cash present

JOEL MILLNER: That was probably a cash—c—cash present that I’m sure my mother used to furnish the, uh, the house

INTERVIEWER [overlapping]: mhmm

JOEL MILLNER [continuing]:you know, because she had very expensive taste, and, uh, she didn’t, uh, [12:00] she wouldn’t settle for anything less than the best you know, uh.

INTERVIEWER:[indistinguishable]  said they loaded, loaded a truck with lumber and then he went out and sold it is that, is that what he did?

JOEL MILLNER: Well, usually they would, uh, not necessarily load a truck, but they would load off a box car to somebody else’s truck, and then what—what wasn’t sold then I guess, then he had to find uh, storage space, and, then  I guess that’s when he, he, uh, must’ve bought a, uh, um, a, um, a, uh, I guess a guy had a uh, up on Ingham avenue had a uh, a uhm, mill shop and he probably bought that, uh, I think the [13:00] family name was uh, uh, Halpert. And, uh, and then he was—it was either on Ingham avenue or Willow, I, I think it was Ingham avenue, uh, uh, and I guess he was there for a number of years and then he, he moved to uh to Prospect street and he acquired, the uh, what used to be the old globe uh, rubber mill, and he was there until, uh, well, we were there until 1941, and, uh, you know I’ve always felt that, uh, while we were there until 1941, and I always felt that, um, unbeknownst to him he was, uh, um, very instrumental in the, in changing [14:00] the, um, the uhh, the way the city was, uh, was developed in the sense that, uh, he had bought Hermi—, the uh, the uh, Hermitage avenue, uh, uh, well not the Hermitage avenue, the Prospect Street property, uh, which he was paying $125 dollars a month rent, and, and, he offered to, to uh, buy it for eighty-five hundred dollars, but that was too late,  the uh, the state or the federal government had, had bought the ground for twelve thousand five hundred dollars

INTERVIEWER [interrupting]: What, what address was that on Prospect Street? Do you recall?

JOEL MILLNER: uh, I think it was [15:00] 314 Prospect

INTERVIEWER: And what’s—what’s on that now? Do you know?

JOEL MILLNER: Well, that''s the housing, the Prospect Village is there now, see now if he had acquired that uh, uh, [indistinguishable] who knows where they would have built that type of housing.

INTERVIEWER [interrupting]: That was right, that was right where that welding place used to be?

JOEL MILLNER: across from the, uh, [indistinguishable], that uh, that came across the road and the, uh, the box cars could load right into our, uh, into our building.

INTERVIEWER: There was some—there was something about a department store in Albany, what, uh, that uh—

JOEL MILLNER: Uh, he worked for, uh, I guess it was, uh, Axel Litzer, who, uh, one time had a uh, had a store down on a, uh, on Broad Street, I—I don’t know whether they were called the [indistinguishable], I don’t know that uh—[16:00]

INTERVIEWER: Well they said it was a shirt factory. He worked in a shirt factory, and hesold everything in every department, and trimmed windows in the store.

JOEL MILLNER: Well that, I don’t know, uh, in what, I, I know that he did that, uh, and, and uh,  it had to be prior to, uh, to him getting married—

INTERVIEWER [overlapping]: alright, okay

JOEL MILLNER [continuing]:It had to have been, uh, well, he had to be uh, 1905 he came in so uh, that was like 18 years that uh, he was here in Trenton and Boston and uh, and uh, where was it, what was I sayin?

INTERVIEWER: Albany.

JOEL MILLNER: Was it Albany? Yeah uh, that was an 18 year span, you know, that uh, he, uh, was here and there and uh [17:00] he was a bachelor uh, you know, uh

INTERVIEWER: Okay, then there was something about he worked for Erkin and Kahn on Perry Street, when it was on Perry Street, right on the corner of Perry and Broad, is that where [indistinguishable] had his place there, is that? 

JOEL MILLNER: Erkin and Kahn, yeah

INTERVIEWER: Was that where it was? ‘Cause I know Erkin and Kahn was out on Clinton avenue for… 

JOEL MILLNER: Yeah, but, uh, well I don''t uh, I don’t remember uh, uh, I don’t remember that

INTERVIEWER: Which—which uncle had a junk shop on Union Street?

JOEL MILLNER: Well that had to be, uh, uh, probably the uncle that he lived with, you know, that’s, you know the person he lived with —

INTERVIEWER [overlapping]: O—Okay, okay [indistinguishable]

JOEL MILLNER [continuing]: I don’t know what his name was, but, uh that was, uh, the—the brother’s, uh, no, the sons were uh, [18:00] Frank Millner, Henry Millner, and, uh, uh, Albert Millner

INTERVIEWER: Okay and then their children, it was Irv, and, uh, Irv Millner

JOEL MILLNER: Irv Millner, was, uh, Irv was uh, was Frank’s uh,

INTERVIEWER: Son

JOEL MILLNER: Son

INTERVIEWER: Okay, well, so, so it could’ve been the Millner Family that had the junkyard, is that it?

JOEL MILLNER: Oh, it was definitely the Millner family.

INTERVIEWER: Okay, okay, alright thats, thats all  I—

JOEL MILLNER: Yeah.

INTERVIEWER: Okay, okay, now one thing that I, uh, you know, thought was a—a tremendous thing was he ordered a car load of nails? What—what was that story he was tellin? He ordered a car load of nails, and, uh, in kegs and then went out and peddled them all? 
JOEL MILLNER: Well, that waswhat he did, you know, [19:00] uh, uh, you know he would buy and, and—

INTERVIEWER: Well what got him into the wholesale business? He didn''t want to work with the Millners anymore—I mean with the uh?

JOEL MILLNER: Well he had, well, he was never really work for uh, for the Millners in the, in the, uh junkyard, no. He may have lived with them for a while, but then uh, then he peddled, he had the store on broad street and, you know, between I guess he was in Boston working in his trade.Why he left that to, uh, you know, to come back, or w—when he went to, uh, Albany, uh, I—I don’t know, you know, what the, uh, the uh, what came first, you know?

INTERVIEWER: Yes, okay, the thing is, that’s fascinating about this is that he started out ordering car loads of nails and then he had a car load of the window weights, and I remember that ’cause I used to have to fix them as a kid, so I know what he was talking about.

JOEL MILLNER: Yeah, yeah, well he, uh, he was a, uh, [20:00] um, an adventurous guy, you know he was always buying quantities of, uh, of—of material, you know, uh, he uh, I re—I— well I remember years ago now, uh, uh, he—he went and, and bought at a sale probably, uh, maybe about 1960, he bought, uh, a Mohawk Driver went out of uh business er, they were liquidating, and uh, in uh, Philadelphia, and he bought, uh, thousands of doors, you know, and, uh, that uh, well [21:00] it wasn’t this room, but uh, but one of the a—a—a similar room uh, wa—was, was filled with doors, uh from, from wall to wall, from floor to ceiling.

INTERVIEWER: When did you take over this complex here? W—When—

JOEL MILLNER [interrupting]: 1941

INTERVIEWER: 1941?

JOEL MILLNER: Yeah

INTERVIEWER: What was here before? W—Wha—

JOEL MILLNER [interrupting]: Well they manufactured school and church furniture, uh, and uh, and then I guess uh, during the depression uh, you know, that—it was a very successful, uh, uh, business, but the uh, then I think the, during the depression they wanted to work for the uh, for the people, uh, in the different, uh, states. So they, there really was, th—uh, that the school furniture would be manufactured within the state, [22:00] not in—in, uh, in Trenton.

INTERVIEWER: Ho—How old is this building? Because wooden beams that you have here

JOEL MILLNER: This, uh, this has to be a hundred years old I would think, or uh close to it.

SPEAKER 3: [indistinguishable] Gonna get a quick bite

JOEL MILLNER: Well why don’t you wait until I''m done with uh, this oral, because uh, you know he’s, uh, not gonna be, uh—

INTERVIEWER: No, it won’t be that much longer, just a little bit

JOEL MILLNER: uh, and we uh, uh, in fact, uh, he, they had a s—sale here, when they sold out, and you can’t believe the desk that he bought.

INTERVIEWER: In all the time, are there any of those things still left in here, the old window sashes, [indistinguishable], old doors, old desks? [23:00]They long gone?
23:00
JOEL MILLNER: Oh, I don’t know, you know, there’s probably, ha, there''s probably still some window weights around, you know, in fact there are, you know, window weights around uh, uh, there''s some old uh, uh, moldings, that uh, Chestnut moldings, that uh, ya know, that ceased to be a going thing, uh, you know uh, where they used back pans and stuff, uh, you know, uh, eh back to, I don''t know I just sold a guy 13 pair of sash that uh, that would, have to go back to the uh, 1950s, you know, when we bought ’em.

INTERVIEWER: Well if you could—

JOEL MILLNER [interrupting]: I was in college, I was in college when those windows were bought

INTERVIEWER: If you come across any stuff that has your name [24:00] on it or Millner Lumber that goes back in old letterheads, or a photograph of a building or the workers, I mean—I’d like to have that for the archives, if you come across it, you know,[indistinguishable]—

JOEL MILLNER [overlapping]: I doubt it

INTERVIEWER [continuing]: Well, if you do you know not to throw it away, alright, so save it for me.

JOEL MILLNER: Well, I wouldn''t throw it away, yeah, uh

INTERVIEWER: When—When did, uh, uh, you and your brother take over here, when—when did you both come to work here?

JOEL MILLNER: uh, I would think that probably 1952, uh—

INTERVIEWER: Was your sister active at all here?

JOEL MILLNER: My sister was never, never, never worked here,my brother and I you know, started working here uh, when we were twelve years old. That’s why I tell people I‘ve been working around here 55 years uh

INTERVIEWER: That’s when we all started, about that age. 

JOEL MILLNER: Yeah [laughing], you know, uh, uh and, in those days it was uh, [25:00] hard work you know, they didn’t have the mechanical equipment that they have today, you know, for unloading, and we used to get up, uh, you know, come to work 6 o’clock in the morning and sometimes work ‘til 6:30,7:00 at night, you know, was, uh, stuff had to be, uh, loaded and shipped and what not, uh

INTERVIEWER: Do you remember what the first trucks were that were in here that you were able to—that you were permitted to drive?

JOEL MILLNER: Oh, well that was a, uh, well I picked up the, uh, I was a, uh, driving trucks before I was permitted to drive, you know uh, I remember I guess it must’ve been, uh, must’ve been 1941 or so, you know, uh, I went over and took one of the trucks out of the garage on a Sunday, and uh and drove it up to uh, [26:00] Slocums Bowling Alley and uh, on Pennington Road, and we were bowling and didn’t have a license, and uh, and uh on the way back we ran out of gas, and because there were no gas stations open because they had gas rationing, and what not, and uh, so uh, well I was with two other fellas, and I said well [indistinguishable]do is go back and get the other truck and tow it back to uh, to the uh, yard. So, uh, whichever we did, we had to take the bus back to Prospect Street from Pennington Road, I brought the other truck up and we started to tow it back and we you know, came down Parkside Avenue, made the turn going up Oakland Street, and uh, somewhere [27:00] along the line something happened to one of the uh, to the uh, break on the truck that was being towed, and we, uh, we got to corner of Prospect and, uh, Oakland and Prospect and I, ya know, stopped the uh, uh, stopped the truck to make the turn and all of a sudden “BOOM”, the car comes in and crashes the whole uh, headlight and fender. So, uh, I said, “oh this isn’t very goo—not very good, what are we gonna do about this?” And I said, “well we still have to take the truck down Prospect Street and take it around the back of the, uh, building where it gets parked”, and I said “now, look, when we, when we, when I signal that I''m stopping, you know, turn the, uh, truck away, so that we, the truck wont hit the back of the, um, the tow truck won’t hit the back of the truck we got”, [28:00] and okay, I wave, and he’s supposed to pull away and all of a sudden “BOOM” got the other fender, and uh, headlight, and, but I don’t know, I think the charge to have it repaired was like $300 dollars but I paid it back, uhhm, but uh, that was, uh, you know, that’s when I was driving, you know, um you know, must’ve been—

INTERVIEWER [interrupting]: Did they ever have, did Millner Lumber every have a horse drawn?

JOEL MILLNER: I think originally yeah, he,he did, you know, yeah.

INTERVIEWER: Are there any pictures of—of that ar—ar—around?

JOEL MILLNER: No, no, and I think we used to, originally, um, o—one of the trucks, you know, yo—you had to crank it to uhh, uh, to start it.

INTERVIEWER: ‘cause we came across some of shines trucks with a horse wagon, and then  som—another truck.

JOEL MILLNER: Yea, yeah, no [29:00] I don’t believe we have any pictures of that, but uh

INTERVIEWER: So, when did your dad actually retire from here and went to Florida, and didn’t, and didn’t—

JOEL MILLNER [interrupting]: Well, I don''t think he ever really retired, you know, uh, uh, I, you know, when we came into the business, and—and probably wrongly so, in 1952, you know, we were both here, when I was at—finished college, [indistinguishable] was here uh, you know, while I was in, in college, and he decided he didn’t want to go to college, er uh, and, uh, my father pretty much backed off, you know, from uh, being an active participant, he wanted to be a participant, but uh he, he, he, he didn''t want the, the daily uhh, problems, that uh, ya know, the servicing the customers uh, that uh, that uh, were required, ya know. [30:00] I mean, he wanted to make the decisions, but he wasn''t around, you know, to uh, to uh, to make the decisions, and uh, we found it necessary to make the decisions, and then have him, you know, uh, uh, say well you shouldn''t have done this or you shouldn''t of done that. Well, listen we had to make a decision and that''s the decision we, you know, we, we, we made, uh, you know, if you wanna, if you''re here then we’ll consult you, but if you’re not here i feel you have to give us the, uh that we’re, we’re attempting to do the best job possible, but, you know. So that’s when uh, uh, he sort of backed off and then I think he was, when he moved to Florida uh, he was 84 years old, so he lived in Florida almost 20 years, uh, I—I think, uh, into his 90s [31:00] he came back and he had the home on uh, on Bellevue Avenue and he, he had a place to stay, and after that, he uh, he came, after he sold the house he came back, but, but less uh, frequently, because then he would stay with a friend, uh, Andrew Repaul, and, uh, occasionally he would stay with us, but I don''t think he was comfortable staying with us, you know, because you’re always, you’re not home, you’re going, you’re coming, you know, I don’t know, I can’t eat the hours that you guys eat, you know, and uh, and uh, and then he, uh, and then he stayed with a fellow by the name of Lou Bellanchio, that had, uh, uh, that had a furniture factory, that, that he was manufacturing furniture, [32:00] uh, sofa beds. Uh, do you remember he, uh, well originally he was on, uh, I—I guess he, he was, he manufactured in the old Skillman building— 

INTERVIEWER: Oh yeah, yeah.

JOEL MILLNER: Ya know? And then he moved up to Adams Avenue, and then he moved back here, and, and was here for a number of years, and then I guess uh,, ya know uh, they went out of business, uh

INTERVIEWER: Now, did you own, or your dad own your [indistinguishable] or was that the [indistinguishable]?

JOEL MILLNER: [indistinguishable]—

INTERVIEWER [interrupting]: Pkay, and on this side of the street, where the back is, did you own that spot?

JOEL MILLNER: No, that was, uh, that was the, uh,  uh, Johnson Oldsmobile.

INTERVIEWER: Well, wasn’t Stanley Products in there?

JOEL MILLNER: Well, Stanley Products moved in after Johnson left.P
INTERVIEWER: okay, alright. 

JOEL MILLNER: You know, [33:00] and then the bank took it over, ya know, and, and we were probably uhh, uh, negligent in, in not attempting to, to buy that and, and utilizing that as a front, storefront with the yard in the, in the, in the back, but, you know, we had so much space here that, uh, and, uh, it wasn''t as important to, uh, uh, t—to be uh, fronting on Hermitage Avenue, uh, at the point in time, you know, or we could, uh, have acquired, uh there was a gas station o—on the corner here uh, you know, and then the bank, uh, put a little branch in th—in there and uh, between the gas station and our property. 

INTERVIEWER: That was, that was Gale, over that gas station, didn’t he—guy by name of Gale? He had a Pontiac [indistinguishable]  
JOEL MILLNER [interrupting]: It could be,  I never noti—

INTERVIEWER [Continuing]: [Indistinguishable] Young fella, I remember a guy, it was a young fella. 

JOEL MILLNER: Well, who was that, [34:00] I thought it was—the one guy that had it was by the name of Alan, wasn’t it?Uh, I don’t remember his first name—

INTERVIEWER: Because across the street was Ross, wasn’t it?

JOEL MILLNER: Burt Ross, uh Burt and Laura Ross

INTERVIEWER [overlapping]: Burt Ross, yeah.

JOEL MILLNER [continuing]: Yeah, yeah, and then, uh, next to it was Weinstein, and then, uh, I think Kunis had a, little, uh, bakery there?

INTERVIEWER: There was a bakery, a laundromat, Hermitage Press was in there, the printers [indistinguishable]

JOEL MILLNER: Yeah, and uh, Kramer, the uh, the uh, tailor was there—

INTERVIEWER: [overlapping]: yeah, [indistinguishable]

JOEL MILLNER [continuing]: A—And then Prior Donuts was there, uh, and then at one time, they had a little restaurant on the uh, corner of, uh, Hermitage and uh, and Edgewood uh, ya know, it wasn’t a bad little, uh, restaurant.

INTERVIEWER: I remember, I think it was a pizza shop there. Okay, well I tell ya that will, that will certainly fill in—
', 'Initial transcript', 't');
INSERT INTO transcripts (audio_id, text, revision_comment, is_latest) VALUES (3, 'INTERVIEWER: All right. So uh one more time for the record. Uh could I have your name?
BRENDA: Brenda Camp.
INTERVIEWER: And uh when and where were you born?
BRENDA: Trenton New Jersey. Right near Trentonia.
INTERVIEWER: Mmhm.
BRENDA: I am an original Trentonian.
INTERVIEWER: Um what year?
BRENDA: 1949.
INTERVIEWER: ‘49? OK. Uh so between ‘65 you were about sixteen? Nineteen. Sixteen-ish?
BRENDA: Hmm. Yes nine sixteen yeah.
INTERVIEWER: Um and you lived there ever since?
BRENDA: I been living here ever since.
INTERVIEWER: Mmhm.
BRENDA: Well I did move to California for a little while but came back to Trenton.
INTERVIEWER: Where where in Trenton have you lived?
BRENDA: Um oh East Trenton.
INTERVIEWER: Mmhm.
BRENDA: That’s Jefferson Street. Um I live lived on Fountain Avenue. I lived in North Trenton. Um I went to Jefferson School.
INTERVIEWER: Mmhm.
BRENDA: Junior High (?) Woodrow Wilson School I went to. Trenton High was our only high school.
INTERVIEWER: At the time?
BRENDA: Very nice. Mmhm.
INTERVIEWER: Yeah so I have I have maps here. Um so we’re interested in this nine block area of downtown uh part of Trenton.
BRENDA: What’s this?
INTERVIEWER: Uh this is Broad Street right here.
BRENDA: Right.
INTERVIEWER: And East Street right here. So all this.
BRENDA: Oh East State Street.
INTERVIEWER: Yeah East State Street yeah. So all this this this neighborhood.
BRENDA: Oh this Hanover. Oh this Hanover. OK. Mechanics Street. OK well Broad Street used to be um. See now there’s cars going through Broad Street. It used to be closed off. They used to have the street was all closed off. So it was like.
INTERVIEWER: Only walk?
BRENDA: Yes we’d walk in the middle of the street but it was closed off. The cars used to have to go around.
INTERVIEWER: Really?
BRENDA: That’s a long time ago. That’s where we had movies down there. East State Street we had um (?). We had the movie theater. (?). We used to have um. Well so you only interested in this particular area?
INTERVIEWER: Yeah the downtown area.
BRENDA: Oh um (?) used to be down there.
INTERVIEWER: Mmhm.
BRENDA: Used to have Wool Woolworths where we can go take our kids and have lunch.
INTERVIEWER: Mmhm.
BRENDA: And then we go shopping. Oh it was nice down there. We had a good time downtown.
INTERVIEWER: So uh so that’s what we’re looking for. Uh so what was transportation like there? If it was only foot traffic were there like was it accessible to people outside?
BRENDA: Well most of the people lived in Trenton and those areas that you’re talking about. Transpor. We all lived around so we usually walked. Everybody walked downtown. Everybody. That’s that’s like a hangout also downtown. (?). So the transportation was really good. And then they decided to open up the street so that’s when the buses and everything started coming down.
INTERVIEWER: And so you said there was like shopping and stuff?
BRENDA: Yeah.
INTERVIEWER: Were like. Was there like.
BRENDA: We had good stores. Rifkin(?) was the store, Ritzen, Rifkin, (?). We had Sears downtown. We had the banks down there. They had uh. What’s the store? Over by cargo (?). We had Woolworth. Yeah it was nice. Everybody’d be downtown Saturdays shopping take the kids out stuff like that.
INTERVIEWER: And you mentioned there was a lot of arts and culture like theaters and stuff?
BRENDA: There was theaters down there. Go to the movies stay all day long.
INTERVIEWER: Yeah.
BRENDA: Ain’t like now where you gotta get out.
INTERVIEWER: Mmhm.
BRENDA: Stay all day long (?). And movies.
INTERVIEWER: (?)
BRENDA: Yeah. And that’s where our parades was. We had our parades downtown.
INTERVIEWER: Mmhm.
BRENDA: Alton Street and (?). Um you know like Myrtle Bay(?) or when they have parades we all go downtown.
INTERVIEWER: Mmhm.
BRENDA: Mmhm. All kinds of parades. Spanish parades. Different cultures. So it wasn’t just one. Spanish people had a parade. We had a parade. Everybody had a parade.
INTERVIEWER: Do you remember it being pretty uh multi-ethnic? In term of.
BRENDA: Yeah uh multi-ethnic and everybody got along.
INTERVIEWER: Really?
BRENDA: It ain’t it ain’t like it is now.
INTERVIEWER: How so?
BRENDA: Now? Uh people not gonna walk down street now after five thirty.
INTERVIEWER: Yeah yeah.
BRENDA: You can’t do that now. Back when my dad would used to play um hopscotch (?).
INTERVIEWER: Mmhm.
BRENDA: You know the kids had fun. Double dutch. Now we don’t go outside. It’s too dangerous.
INTERVIEWER: Mmhm.
BRENDA: We go through (?) which is a bad thing for our (?).
INTERVIEWER: Yeah.
BRENDA: You know.
INTERVIEWER: I understand.
BRENDA: Other than that.
INTERVIEWER: So I went to the archive and gathered a bunch of photos of the area during this time period.
BRENDA: OK.
INTERVIEWER: I wanted to show you um to see if they.
BRENDA: See if I remember too.
INTERVIEWER: Yeah yeah yeah.
BRENDA: OK.
INTERVIEWER: So you can have a look at ‘em here.
BRENDA: OK. Lemme see. And then I’ll look at these and then tell you a little something so I don’t.
INTERVIEWER: Yeah so here this is the caption. This is um.
BRENDA: (?)
INTERVIEWER: Yep the the year and then.
BRENDA: OK. Now this is before me.
INTERVIEWER: This is before you were born. Yeah yeah.
BRENDA: OK. Let’s go.
INTERVIEWER: And they’re in chronological order so you.
BRENDA: That one’s before me too. I turned fifty five. See didn’t I tell you?
INTERVIEWER: (?).
BRENDA: Yeah we lived there.
INTERVIEWER: Yeah these are.
BRENDA: This is all by the corner of. This is State Street right here. And look right down here it’s Broad Street.
INTERVIEWER: Mmhm.
BRENDA: I see. See these buses here but it’s the middle of this street was closed at one time. Well look at that.
INTERVIEWER: Do you remember all this?
BRENDA: I remember. This is still.
INTERVIEWER: This you remember? That one too?
BRENDA: The beh. Um the beer L beer place. Right now over this is where Dunkin Donuts is now.
INTERVIEWER: Right right.
BRENDA: Yeah I know I know. I remember all this. Let me think about that. You got me out here.
INTERVIEWER: This is the construction of the post office on East State.
BRENDA: Hmm I don’t remember this (?).
INTERVIEWER: Uh Moose Hall?
BRENDA: Moose Hall yeah. This is at the corner of State and Broad.
INTERVIEWER: Mmhm.
BRENDA: This here. (?), (?). Yeah.
INTERVIEWER: You remember walking these streets?
BRENDA: Yeah we walked these streets. I don’t see any down here though but I was down there somewhere. I’m telling you. We walked downtown. Oh I remember this car. Where was this at Warren Street? That’s on the uh. Linda you should’ve been over here Linda. This this look at these pictures by Warren Street and stuff. (?). Oh that’s still on the corner of State and Broad.
INTERVIEWER: Yeah.
BRENDA: I I know there’s Woolworth over here.
INTERVIEWER: I think we have pictures of it yeah.
BRENDA: On State Street and you would come out on the side on Broad Street.
INTERVIEWER: And you’d wrap around?
BRENDA: Yeah. You’d go in the store on State and you’d come out on Broad Street. And in the back that’s where they used to have (?). They had more bus (?). I remember that. Uh (?) McDonald’s is downtown. McDonalds and then right now by McDonald’s was (?) down here. So Lord have mercy. See how this street go. No this ain’t it. It used to be closed off. (?). Man remember we had the street where we cars. We was walking in the street? Yeah and they opened it back up. They did work so they opened it back up.
INTERVIEWER: Mmm. Yeah I can imagine that there was a lot of.
BRENDA: Oh my God.
INTERVIEWER: There was a lot going on down there.
BRENDA: They got the Capitol movie.
INTERVIEWER: Did you do you remember uh.
BRENDA: Yeah.
INTERVIEWER: Seeing films down there?
BRENDA: The Capitol on Broad Street. We used to go to the movies and. Let me see that picture again. (?). Oh that’s the paper stand(?).
INTERVIEWER: This is. You were five years old. I don’t know if you remember the the those movies but uh.
BRENDA: I I remember no I remember the movies.
INTERVIEWER: Uh huh.
BRENDA: I remember.
INTERVIEWER: The theater.
BRENDA: I might have been five years old but I went to these movies.
INTERVIEWER: Uh huh.
BRENDA: Maybe I didn’t maybe I didn’t go when I was five. Maybe I went like nine and ten.
INTERVIEWER: Uh huh.
BRENDA: But yeah. 
INTERVIEWER: Yeah?
BRENDA: And ya know I remember that. Yeah the Capitol.
INTERVIEWER: Can you tell me anything  more about these photos that.
BRENDA: No.
INTERVIEWER: Come up?
BRENDA: I can’t tell you no more than the buildings I know. (?) you way down the street. (?) This is uh (?) Street. (?) is further down Broad Street.
INTERVIEWER: Mmhm.
BRENDA: I can’t really tell you too much about the um the pictures because I was young.
INTERVIEWER: Mmhm.
BRENDA: But I do.
INTERVIEWER: There are a couple ones that are a little later.
BRENDA: Oh they were in ‘54 I do remember. I do remember. Aw y’all went to the library and got all these?
INTERVIEWER: Yep. This one was taken after an air raid drill. Do you remember?
BRENDA: Ah nobody was downtown. I don’t remember that no.
INTERVIEWER: This is the Mayfair Theater.
BRENDA: Oh I remember the Mayfair. Yep. 
INTERVIEWER: Do you remember seeing shows there?
BRENDA: Yeah we used to go there and and there was the Trent Theater downtown also.
INTERVIEWER: Mmhm.
BRENDA: The Trent was right across the on on Broad Street to the further near Perry Street.
INTERVIEWER: OK.
BRENDA: There was the Trent Theater. We had three theaters downtown.
INTERVIEWER: Three? OK.
BRENDA: Yep. Capitol, Mayfair and Trent. Right Linda? Capitol, Mayfair and Trent? Yeah.
INTERVIEWER: And they were like cinemas? They weren’t stages? Was it.
BRENDA: No it was uh.
INTERVIEWER: Or both?
BRENDA: Yeah cinemas.
INTERVIEWER: Cinema?
BRENDA: Yeah.
INTERVIEWER: OK.
BRENDA: We’d watch one movie all day long didn’t we? Stay in there all day. We ain’t they didn’t didn’t pull us out like they do now.
INTERVIEWER: They kick you out now?
BRENDA: We’d go to the movies and stay all day long. Mom didn’t have to worry about oh look this snow.
INTERVIEWER: Do you remember the snow? We had a lot of pictures of this.
BRENDA: Oh yeah. What’s this 1960? 
INTERVIEWER: Yeah.
BRENDA: That big snow?
INTERVIEWER: There’s. Woolworth should be in that picture.
BRENDA: Woolworth and that snow. Crescent.
INTERVIEWER: Park Lane.
BRENDA: That’s at Crescent.
INTERVIEWER: Kitty Kelly(?)?
BRENDA: I don’t remember Kitty Kelly but I was.
INTERVIEWER: Oh here Woolworth.
BRENDA: Oh yeah that’s on Woolworth uh uh Crescent was right next door. You’d go over here and you’d come out on the other side. And the (?) Street bank building is now a apartment building.
INTERVIEWER: Mmm.
BRENDA: What was that?
INTERVIEWER: Uh Yards department store.
BRENDA: Oh I forgot about Yards department store. Remember that?
INTERVIEWER: What do you remember about it?
BRENDA: It was the department store we would go in. Oh we had there was some cheap stores downtown. Everybody went downtown. (?).
INTERVIEWER: This was around Christmastime. The decorations and stuff.
BRENDA: Uh huh. This is still it’s still on Broad and State. He still on he he on Broad Street going down there (?). That’s Broad. It was always a lot of people downtown.
INTERVIEWER: Really?
BRENDA: Always. Downtown with State always stayed (?). And Dunkin Donuts is over here now. And and up there is the um uh army where they trained the young boys to get in service. What?
INTERVIEWER: (?) you mentioned there were like ethnic parades and stuff.
BRENDA: Yeah. They always had parades. Yeah we always had parades. (?). What? Those some good pictures aha. I remember them but you know what? Really(?) see all these people downtown? We um we didn’t go downtown that much only to the movies. 
INTERVIEWER: Mmhm.
BRENDA: And then when we do go down to the movie downtown we were with our parents and we just go shopping and come back home that’s all.
INTERVIEWER:Mmm. 
BRENDA: But now everybody hang downtown.
INTERVIEWER: But then uh when you were older did you end up going on your own?
BRENDA: Oh yeah yeah when I got older yeah. Go down there and stay a long time.
INTERVIEWER: Mmhm.
BRENDA: It was nice downtown.
INTERVIEWER: Yeah I could imagine.
BRENDA: It was.
INTERVIEWER: Um how uh so you like the the amount of foot traffic is it a lot different than it is now?
BRENDA: Um.
INTERVIEWER: Is it like a walk downtown now?
BRENDA: Uh if you tried to walk downtown now through the traffic and the people and the port it’s still a whole lot of people down there but it’s not um good.
INTERVIEWER: How so?
BRENDA: Lot of lot of young people hanging out and even old people hanging out with nothing to do.
INTERVIEWER: Mmhm.
BRENDA: And uh you can’t you can’t even really walk down the street (?) street. A lot of people don’t go downtown as much as they used to especially on uh like bigs days like the first of the month. You know anything about that?
INTERVIEWER: Did you get your paycheck?
BRENDA: Thank you.
INTERVIEWER: Right.
BRENDA: My my my paycheck (?). And everybody was downtown kinda dangerous but.
INTERVIEWER: Mmm.
BRENDA: It’s all right. It’s all right. The big ole (?) don’t bother me but.
INTERVIEWER: Why do you think that it has has changed like that?
BRENDA: You know why? Because of the economy.
INTERVIEWER: Mmm.
BRENDA: And because uh a lot of young people don’t have anything they don’t have no job. They don’t have nothing to do. We used to have car (?). We used to have skating rink. We used to have a lot of activities for the children uh even the young people and now there’s nothing so what they do they get in groups and they hang downtown. So that’s why.
INTERVIEWER: Right right.
BRENDA: Yeah. All all our things have been taken away from us and we have nothing.
INTERVIEWER: Mmm.
BRENDA: We have nothing for our kids here. Nothing. Well I’m I’m just glad I lived in that era because I had a good time.
INTERVIEWER: Yeah it looked like it would be a good time.
BRENDA: Yeah it was. It was nice and (?). You you didn’t have to worry ‘bout nothing. Everybody spoke to everybody. There was no cover fee. 
INTERVIEWER: Mmm.
BRENDA:We were all people.
INTERVIEWER: Mmhm.
BRENDA: Now it’s like a issue.
INTERVIEWER: Mmhm.
BRENDA: Yeah so I just stay home. Not all the time I don’t.
INTERVIEWER: Mmm yeah uh I looked a lot about uh the steel industry and how that was really uh forwarded the economy of Trenton and and.
BRENDA: Yeah.
INTERVIEWER: And when that declined you’re saying that it the uh the impact was felt throughout the city.
BRENDA: Um Trenton mostly is was more like a close town you know uh a close down to the community.
INTERVIEWER: Mmm.
BRENDA: It was our town. And then we all our our our our our uh activities was taken away from us. You know like I said car (?), the skating rink, things for us to do as a family. Even Romeo and Juliet is gone. I used to take my kid there when he did a good grade in school. Oh I’d tell him to go get a couple of his friends. We used to go to Romeo and Juliet and.
INTERVIEWER: What was that?
BRENDA: Um that was more on um Calhoun Street.
INTERVIEWER: Oh.
BRENDA: It was a restaurant.
INTERVIEWER: OK.
BRENDA: And he’d take like four of his friends and they had uh uh one of them big pizzas and they’d have (?) soda and I’m sitting over there with a pitcher of beer.
INTERVIEWER: Mmm.
BRENDA: I had a good time. But see uh people have nothing to do now so that’s why everybody go downtown because that’s still the hotspot and you can see everybody. You go downtown I guarantee if I go downtown right now and I say I’ll be back in fifteen minutes I’m not gonna come back because I’m down there. Everybody knows everybody.
INTERVIEWER: Still?
BRENDA: Hey what’s up how you doing? I ain’t see you in a long time.
INTERVIEWER: Hmm.
BRENDA: That’s all.
INTERVIEWER: Did you feel um it was a strong sense of community identity in terms of living in Trenton at the time?
BRENDA: Yep. Yep. Everybody knew everybody and we had to worry ‘bout nothing more (?). If you got hurt everybody would help you.
INTERVIEWER: Mmhm.
BRENDA: If you did something wrong your mother, neighbors and all you could (?) always down the street ‘til you got home. That’s how close we were.
INTERVIEWER: Do you feel that uh how is that now?
BRENDA: Uhh.
INTERVIEWER: A little different?
BRENDA: A whole lot different.
INTERVIEWER: How so?
BRENDA: Wah well one day I think that people my age it’s about those who could afford to have left town and the ones who can’t are still here and they don’t do anything. Now the young kids has taken over.
INTERVIEWER: Mmhm.
B And they’re disrespectful. They have no manners. They they’re raised by by parents that are. I’m glad I was raised in that era that I was raised in because I can tell my grandkids that we used to play hopscotch(?), jump over the can, hide-n-seek, doubledutch. These kids today can’t do nothing but (?). Oh I remember him John was a good guy. He go he got killed over there two two blocks away or something like that. You know they all have no.
INTERVIEWER: Different stories?
BRENDA: Yeah.
INTERVIEWER: Yeah.
BRENDA: They all have no good things. They they got um miserable things. I had (?).
INTERVIEWER: Mmm.
BRENDA: So back in my day I mean I don’t know why it changed the way that it did. They’ll never see what we saw.
INTERVIEWER: Hmm.
BRENDA: Mmm Trenton is Trenton is damn you know Trenton makes the world takes.
INTERVIEWER: Yeah yeah.
 BRENDA: Ahahaha.
INTERVIEWER: You think that’s true?
BRENDA: I think.
INTERVIEWER: That’s the motto.
BRENDA: I think Trenton got a lot of money. They ain’t letting nobody take it though.
INTERVIEWER: Mmm.
BRENDA: Mmhm. I think Trenton got. I don’t think we’re as poor as they say we are.
INTERVIEWER: Mmm.
BRENDA: There’s a lot of (?) in Trenton. We’re very historical.
INTERVIEWER: Right right.
BRENDA: And we’re the capital city.
INTERVIEWER: Right.
BRENDA: So that’s what I’m talking about.
INTERVIEWER: So have you lived here all your life? Uh what made you stay? You obviously like the area. You have good memories of it.
BRENDA: Uh no. This what happened. I left. When my son got eighteen he left. 
INTERVIEWER: OK.
BRENDA: I moved to California for like three years.
INTERVIEWER: OK.
BRENDA: And then I came back because my job wanted to relocate me to Phoenix. I’m not no it’s like a hundred degrees out there in the. I’m not going out there and so I made out (?) into my bank account that (?).
INTERVIEWER: Mmhm.
BRENDA: And I came back home and I never left again.
INTERVIEWER: Mmm.
BRENDA: I love Trenton. I love.
INTERVIEWER: I can tell yeah.
BRENDA: I love Trenton yeah. Yeah I know everybody everybody in Trenton.
INTERVIEWER: Mmm. Uh do you have any uh memorable stories of visiting the downtown area?
BRENDA: Huh I remember. Yeah I remember I had to get (?) for myself when my my parents used to take us downtown on Saturday.
INTERVIEWER: Mmhm.
BRENDA: And we would go shopping. We would go to Woolworth.
INTERVIEWER: Right.
BRENDA: (?). And we would have lunch and then we’d come back home. That was a good it was good memories. And I remember when I got older like as a teenager me and my friends used to get together and we’d go to the movies and stay all day (?) movie.
INTERVIEWER: Mmhm.
BRENDA: You know I had good. I have great memories of Trenton.
INTERVIEWER: Mmhm.
BRENDA: Even the parades was happy. Yeah we had good times.
INTERVIEWER: Mmhm.
BRENDA: Mmhm. It’s just lately these five six years is going downhill.
INTERVIEWER: Yeah it sounds like a really vibrant.
BRENDA: Trenton was jamming. Whatchu talking about?
INTERVIEWER: Yeah.
BRENDA: Yeah.
INTERVIEWER: We looked at these pictures and it looked like uh it looked like Manhattan.
BRENDA: And New York yeah. 
INTERVIEWER: Mmhm.
BRENDA: Trenton is the bomb. Uh huh yeah we had a good time. I enjoy it here.
INTERVIEWER: Yeah.
BRENDA: My sister now want me to come over. You know me there’s nothing here but yeah there’s a lot here in Trenton. I love Trenton.
INTERVIEWER: Where. You sisters still living here?
BRENDA: My sisters. I got one in in California.
INTERVIEWER: Mmhm.
BRENDA: One in North Carolina and one in Sunset Bay(?).
INTERVIEWER: OK.
BRENDA: They they don’t never wanna come back home.
INTERVIEWER: Really?
BRENDA: What you mean? There’s nothing here in Trenton. What? This my home. What you talking about?
INTERVIEWER: Yeah yeah.
BRENDA: I ain’t going. I’ll leave but I’m always coming back.
INTERVIEWER: Mmhm.
BRENDA: And I’ve been here ever since. I think it was. I came back home ‘bout ten to fifteen years ago and I ain’t never going. 
INTERVIEWER: Mmm.
BRENDA: I ain’t going nowhere. Mmhm. (?)
INTERVIEWER: Um we’re also interested in where you think Trenton will head into the future. Uh after spending so much time in it.
BRENDA: Ah ah you know what I. You don’t want me to answer that aha. I I think it’s gonna. It’s it’s bad because our our kids are our future right now and the way of what’s going on in Trenton. Not wanting (?) and no jobs and no activities. It’s kinda bad as is so I think in another five to ten years it’s gonna be really bad.
INTERVIEWER: Hmm.
BRENDA: Unless something good happens to change. You know OK they have no jobs so they they’re selling drugs ‘cause they gonna provide for their families.
INTERVIEWER: Right. Somehow.
BRENDA: And then we have some who who haven’t been raised so they do (?) and hurt people.
INTERVIEWER: Yeah yeah yeah.
BRENDA: And it’s getting real bad with it. That’s the only thing I’m I’m afraid about Trenton is it’s gonna get worse.
INTERVIEWER: Hmm.
BRENDA: And what it is right now I’m (?) somebody or something happens to pull us back out.
INTERVIEWER: Hmm. Um would you say that right now within the downtown area there’s is there any art and culture going on?
BRENDA: OK now in the downtown well they got bookstores down there and you can go to a museum. Oh I love it. I take all my nieces and nephew to the museum.
INTERVIEWER: The state museum?
BRENDA: Oh watchu talking.
INTERVIEWER: I haven’t been. I was looking to go there.
BRENDA: What?
INTERVIEWER: Is it worth it?
BRENDA: It’s worth it let me tell you.
INTERVIEWER: Yeah?
BRENDA: My sisters they’re not into teaching their kids culture.
INTERVIEWER: Mmhm.
BRENDA: So I get all all the nieces and nephew and they they have a good show at the museum. I take ‘em all and go to the museum and there’s barracks downtown.
INTERVIEWER: Right.
BRENDA: The barracks. Yeah what? You gotta teach your kids some culture and that (?) statue.
INTERVIEWER: Mmhm.
BRENDA: I take ‘em and let learn them a little bit about history and stuff like that. I we was in the paper I was in the newspaper.
INTERVIEWER: Really?
BRENDA: Yeah.
INTERVIEWER: For what?
BRENDA: Front page. Martin Luther King Day we did a um we walked out in the rain for the march for Martin Luther King and I got all my little nieces and nephew by me and we made the front page.
INTERVIEWER: Wow.
BRENDA: Yeah. So yeah there’s a lot of good uh artwork and stuff going on still in Trenton. It’s just that a lot of people don’t take their kids a lot of people were arrested close to our museum up there.
INTERVIEWER: Hmm.
BRENDA: Where we have exhibits and stuff going on. Yeah and now we have our parades down that street. Used to be in the park but now it’s down that avenue.
INTERVIEWER: Hmm. Why do you think there’s uh like a sort of disinterest in the in going to the museum? Like your sisters.
BRENDA: Because kids have. Kids having kids but my sister and they all like well you know what some parents just don’t give a whole lot(?). That that’s what I feel about my sisters. They they were them. They like they time(?) but no you can’t do that. You gotta take the kids. Let the kids get some culture. You gotta let them know things so maybe I’m the auntie who gives out like that.
INTERVIEWER: Mmhm.
BRENDA: I take all of ‘em. (?). I even take ‘em to the soup kitchen to eat.
INTERVIEWER: Hmm.
BRENDA: But my sister get mad because you took my son to the soup kitchen? Yeah if something happen to you they know there to go to eat. Your help. I I I like to do a lot of things.
INTERVIEWER: Right right. How do you think that the arts and culture of Trenton could be improved now?
BRENDA: I don’t know. I don’t know. I think we need better leadership. I think we need people coming with new ideas to go back to this book the way it was.
INTERVIEWER: Mmm.
BRENDA: But more moderate. I mean I think they need to put up more uh they need things for them to do and that will bring ‘em all back. It’ll take (?) that um you know nothing to do.
INTERVIEWER: Right right.
BRENDA: You could take our pic. There was gonna be a movie built right downtown on Broad Street.
INTERVIEWER: Uh huh.
BRENDA: Near Perry. Near Friendship Church. They had.
INTERVIEWER: OK.
BRENDA: Started rebuilding a movie and they stopped. They didn’t never do what they supposed what they said they was gonna do. They never finished.
INTERVIEWER: Hmm.
BRENDA: So they might have ideas but they don’t do nothing so I don’t I don’t know. Like I know we need I think.
INTERVIEWER: It would be good. It would be good.
BRENDA: It would be I think it would bring ‘em back.
INTERVIEWER: Good for the neighborhood.
BRENDA: Yeah because you know once you get something like that started they say oh c’mon lemme let’s take our kids down there to that new movie downtown on Broad Street and then all the other kids and and their parents will go too you know.
INTERVIEWER: Yeah.
BRENDA: They were starting uh another building over here with something more creative for their kids.
INTERVIEWER: Mmhm.
BRENDA: Yeah people will do it but we don’t have it.
INTERVIEWER: Hmm.
BRENDA: If we have it I know I’d go. I’m taking my my grandkids and everybody else’s kids. That’s how I.
INTERVIEWER: Catch a show or something.
BRENDA: Yeah.
INTERVIEWER: Yeah yeah yeah.
BRENDA: That’s what you have to do. There’s nothing good for them to look at or be involved in uh huh.
INTERVIEWER: Hmm. So definitely a different place since back then huh?
BRENDA: Oh it it’s so different the change. It is really. This let me tell you know it it’s so different but I do remember this picture. I do remember that.
INTERVIEWER: Mmhm.
BRENDA: But it is. It’s a whole lot of different. It’s a whole it’s a whole new world.
INTERVIEWER: Yeah.
BRENDA: It’s a different world. And I will say it can go back to the old but more moderate you know?
INTERVIEWER: Hmm mmhm.
BRENDA: Yep.
INTERVIEWER: Um is it where you thought it would. Is.
BRENDA: I mean.
INTERVIEWER: Is Trenton now where you thought it would be?
BRENDA: No I never thought Trenton would go down like this. Never but you know it’s a whole lot of different things that made it go down. I’d say that uh I think Trenton dropped(?) a lot and worked out a lot and we have no more memories. My memories now as an adult is careless. You can’t walk the street unless you get mugged. That’s my memory now as an adult but my memory as a child.
INTERVIEWER: Right.
BRENDA: (?) (?) (?). Yeah.
INTERVIEWER: Yeah it’s interesting.
BRENDA: Yeah so um and besides uh (?), my kids, my son and my grandkids are grown adults. Because I woudn’t live here with them. Uh I would move. I would probably move with my sister or something because it it’s not it’s no place to to raise. There’s no role models. There’s nothing you know? There’s nothing but destruction evil things. And the peer pressure this this time is bad because of the drugs. 
INTERVIEWER: Hmm.
BRENDA: So you know I wouldn’t I wouldn’t.
INTERVIEWER: Do you remember there being gangs in the in the between ‘45 and ‘665?
BRENDA: Back in my day? No. Whah? There’s wasn’t gangs back in my day. We didn’t know what that was. What was a gang? What is a blood? What is a crip? We didn’t know what that was.
INTERVIEWER: Really?
BRENDA: We had we had good times back in my day.
INTERVIEWER: Hmm.
BRENDA: Mmhm.
INTERVIEWER: That’s good to know.
BRENDA: Yeah.
INTERVIEWER: Um and I guess to stay on in terms of the future what else would be good for the community more broadly in terms of Trenton as a whole?
BRENDA: Just like I say as a whole it would help things or buildings for our family or children to go to. Bring it back. Put the uh activities and uh nice little restaurants and things like that back into the community. I think it would bring us back up. Because you know what I do know for a fact that we have something going good going on we do take our children and and we have our cousins and everybody. We go and it was nice to spread the uh you know spread it and then everybody would come and join in.
INTERVIEWER: Yeah yeah yeah.
BRENDA: Yeah and then if somebody wanna come in and (?) will be (?) up why you wanna mess this up for us? You know and that stop all of that. So I think that’s uh I think that’s uh what’s what they they need to do rebuild back from this old stuff that (?) people have.
INTERVIEWER: Mmm.
BRENDA: See all the people walking down the street?
INTERVIEWER: Yeah looks like they’re having a good time.
BRENDA: Yeah yeah good time.
INTERVIEWER: Yeah yeah yeah.
BRENDA:Yep.
INTERVIEWER: So um is there anything else you’d like to share uh that I didn’t ask about that that sticks out to you about Old Trenton?
BRENDA: No only thing I can say is that I wish it come back.
INTERVIEWER: Mmm.
BRENDA: So I can be young again,
INTERVIEWER: Mmm.
BRENDA: Ahahaha.
INTERVIEWER: Yeah yeah.
BRENDA: That’s it.
INTERVIEWER: Yeah so that’s those are all my questions.
BRENDA: That’s all your questions?
INTERVIEWER: Yeah. Thank you very much for the interview.
BRENDA: It was really nice talking to you. Yeah. You welcome. Mmhm. Anything I can. Thank you for the pictures.
INTERVIEWER 2: You’re welcome. Can I just take a picture of you sitting here?
BRENDA: Oh.
INTERVIEWER 2: You can smile.
BRENDA: OK. With my little smile.
', 'Initial transcript', 't');

INSERT INTO user_edit_request (user_id, transcript_id, text, edit_comment, request_approved, create_time) VALUES (1, 1, 'SIDE A:

Siskowitz: At 45 when I came back, Professor Loe was one of the world famous professors who came to Princeton along with Professor Ganowski and Professor Reeseson and Professor Loe was co-chairman with me in 1943. Uh, so he wrote me a fax- a card that I still have asking me to come back to the regular meeting and with Princeton ______ more than tripled I should- I should be storming to come to Princeton. So in ‘45 I already took the chairmanship even though I wouldn''t be in Princeton at that point. I was only able- I bought the farm in Princeton in May of ‘45 and moved here in June.

Interviewer: In this house?

Siskowitz: In this house in ‘45. Uh, aside from ‘45, ‘46, ‘47, ‘48 I remember each ___ getting paid. In ‘47- in ‘48 rather, if my memory serves me right, Jess Epstein took over the chairmanship and, uh, seven years ago this treasurer every continuously with me wherever I was chairman. He was also treasurer when Epstein was chairman back in 1950. Some years ago moved to Trenton and, uh, Harry Belot the treasurer job.

Interviewer: Now was there a president? And a chairman?

Siskowitz: No

Interviewer: Or just the chairman?

Siskowitz: Chairman, but in the later years he became a president quite later. So in 1951- in 1951 I took the chairmanship again and i- and in ‘52 though until about 1961 when I took it again, I was treasurer so I was- I didn''t lose much time between the two I was either chairman or treasurer throughout. So in ‘61 was when the last time I was chairman of the United Jewish Appeal. It was- we had some very interesting moments in those years ‘cause those were really important years for the UJA. In 1947 for example, the UJA was- the program was 170 million dollars. We had a crowd of 45,000. We were just a handful of people and we formed a christian community and quite important people in that community the president of the university the president of the institute for  for the {inaudible} 87 87 yes after frank eder left from the ___ _______ dean brown and reverend gordon and reverend tucker reverend walsh from all churches and a couple of my personal favs john huff joseph huff the former mayor of princeton mark ___ so {inaudible} and  it was quite interesting when  the chairman of that community wrote about the clothing that we had and the enormous amount for the community we should take it in consideration of the times those for those with homes like across the street here in 42 were built for 5,000 dollars and the house across the street was up for sale for fewer than 5,000 dollars and sell it for 270 something

Interviewer: How much was this house when you moved?

Siskowitz:well I brought it up when the _____ but I will say this that when I bought it the taxes was a __ for 34 dollars my taxes now is closer to 6,000 dollars. [laughter] so you can see what the difference is  the land was this time the real assessment a couple of years ago _____ the land was around 300 to 500 dollars was assist for 129,000 dollars just the land so you have an idea what the difference in price for those in early years im talking about was when when the loaf of bread was still cents when the big round load of bread was forty-five cents when corn flakes was five cents so you should remember so that if we take it to a proper prospective when they''re talking about when we raised 5,000 dollars reasonably that was 11 million when people''s income was only about 50 dollars a week with big ____ when I worked in the service in 1944 in 43 I recall that that time that 5,000 dollars was in the first five percent of income for the people in the United states in the first five percent was 5,000 dollars

Interviewer: now when you got the christian group to help you, did you-they meet that quota?

Siskowitz: they helped I would say that there was a great deal of response from the christian community very modest and then again some prove the point that each group have to take care of their own

Interviewer: ...this including the jewish... 9:16-9:26

Siskowitz:(9:30)..until several years later really in 1961 even the amount that we raised was around-a little over 30,000 between 9,000 something like that of course the community kept growing and [inaudible] of course it raised considerably more money it became very large amounts number of .... you see and the number of people coming and professional people climbing under business people at that time coming in the business people would leave [laugher] if I do remember correctly the community changed considerably it''s a different community a ..living we live in a small community where somebody has simcha everybody was up for simcha if someone have a sad situation everybody was there if somebody had a rough site all you had to do was grab the phone and we had people to ...(10:50)... today we have a law school where basically we live their problems with .... so its a different community entirely and it was a very pleasant community in fact so much so that when I have various opportunities for promotions in .. Jersey I didn''t accept I felt I was moved here more but of course by the time they kicked me out of the service I had no intensions to make any changes and then drove Princeton ..... another community and there were a lot of there were a lot of friends here and the cooperation of the new people coming in was exceptionally good young people professor marvin bernstein was doing student role at that time telling sticks I think he would''ve affect  ....of sticks well in Israel for a year in university ...physics and the rate of beautiful weather to 1961 when I took over the chairmanship again telling me about how beautiful israel was and the progress israel was making and we owe the weather to the community all together at the time once in dinners in the early years we always have a dinner to start the ..... for the major dinners first and then eventually some raid started the big dinner for the whole community we paid for the dinner our total campaign expenses was no more at any time than 3 percent

Interviewer: that''s not bad

Siskowitz: you see when we talk about the dinner [laughs] I sort of found a little note today um [shuffles paper] let''s see if I have it here [shuffles more ] (13:41-13:56) yeah so during the time when I was in 1961 the cost of the dinner was 5 dollars and 50 cents a person we had 75 people at the dinner 5.50 was a big investment today to invite people to the dinner 

[inaudible]

Siskowitz: you get a count of ... and priests and judges and others of whatever is given which helped the situation but I also have it wrote here that during the period that I was treasure in 1956 ''57 ''58 in 1959 in 1960 the dinners was running like in ''56 was running 4.75 a person of course we had to pay for .... and we had to pay for a little bit extras so the whole dinner for 73 persons in 1956 we paid 407 dollars and in the other expenses of course was millions everything we did was on volunteer basis we had no one on a paid basis at the time  example in 1957 we had 68 people at our dinner a few 85  cost total costs would be 283.01 dollars [laughs] so take that in in consideration where we can pay of the day they say 5000 dollars and of course and then the sum kept decreasing each year [inaudible] so personally I feel we did a good job  in 1940 when we had the new people coming were the SUA at that time [shuffles 16:14-16:21] in 1940 let''s see 1942 just to correct myself let see ''42 I was appointed already in the American Jewish .. Edition Committee a national committee  I served in that and in 1961 I was there for a few years with the association in 1961 they reappointed me again for another four years for the for the Americans Retribution Committee in 1940 [shuffles 17:00-06] in 194- [shuffles 17:08-17:11] 6 mrs. jess epstein served as secretary she was a tremendous help to me at the time she also served in 1947 and then of course we went with other people jess esptein took over the chairmanship in 1949 I believe it was for I think maybe two years at that time and other people who were left as treasurer and in 1960 1951 I took one of them  harry bennett was treasurer when jess epstein was re-elected and then in 1951 and after following that after she was elected she ran the treasurership until 1961 she went up  with the chairmanship again and that was after that we had all these wonderful people coming who have taken a great interest in young people as I was with a kid here [laughter] we took in great interest and contributed considerably and so we have a very active community and still have a very fine active community here doctor vined? who was originally from Trenton ... ms.vine who said we was from bordentown and had delayed jurisdiction she said this about them she served a couple of years in the women''s division as a served

Siskowitz:is there a ruth-ruth

Interviewer: ruth

Siskowitz:ruth jersey singoa 

Interviewer: yeah

Interviewer:yeah oh I remember as a matter of fact I took her running pictures

Siskowitz: really?

Interviewer: yeah missionary stuff I didn''t approve of 

Siskowitz:right

[overlapping] at the time

Siskowitz: she was a dentist with not enough time in the morning she was tired [flipping pages 19:44-19:52] [mumbling 19:53-55] ''51 into the mid 60''s she continued that women''s position in 1961 she [flipping pages 20:13-20:23] ''61 did she yeah she was secretary in 1961 and I think she continued as secretary in ''62 im not sure sixty- delran daughter of 

Interviewer:missioner 

Siskowitz:missioner man who said to dress in something beautiful at her afterwards when she was in Europe and met some very important people to come to address this community and honestly though him and her each alone were able to recognize the importance of Princeton was it was wealthy  and it was a land of cooperation and when I went into the service there were letters from the destinations at the time and each time I took a treasurership or chairmanship while I was receiving a very nice letter from the head office ... with cooperation a lot of good help so it wasn''t a job that pertained by any one person it was a cooperative organization

Interviewer: how was albert einstein''s influence in-

Interviewer: he was he was very cooperative he attended all of our meetings he came here when I had meeting with the board he was he signed all of my letters that I sent all up to the day he died he sent out a letter to the christian committee different people asking him to serve with the committee that I had proposed at that time 

Siskowitz: did you vote him in the office?

Interviewer: he was almost he was I would say honorary chairman in every campaign we had we had him as our honorary chairman we had a professor lowe who was a very well renowned individual who served with me for several years as for a couple years as co chairman professor kadowski served with me for a couple of years as co chairman wherever he was and so basically for a joint study was a very important part of our campaign the influence of einstein and these professors they affect professor lowe used to give me the names of all those who have come over and in December I would stick around to contact these people for donations every time I spent money ....at that tim I can tell if you''re interested to know the .... that''s of course another stay the wonderful things about professor einstein the different things there was example through sight this one example was about professor einstein I was in his home because I had to get his signature on the letters I was sending back to his community he was in a conference with two other professors and the problems they were having and so I separated it was very interesting to do to be sitting there and directing the discussion but a group of young men came to the door unannounced without appointment asking to see professor einstein and ms. dickens who was the secretary at the time told them that he was occupied that he couldn''t possibly see anyone without an appointment and they were quick insistent and he heard the commotion and he collective sat up what is the problem so ms. dickens explained to him these people came from english I think it was they were having a group forming to have invited different important people to address the incident and this is the farm area in...i think it was at that time and he was like wow look at the young people bringing in and he went to the door and looked at the lady and expected him a purpose why wasn''t he they wanted him to come to address them and he appreciated the invitation so much and praised them highly for their efforts that they were making in their um [inaudible] young people mostly and but that he wasn''t already in a position to do that and even every interviews that he was having they were bringing the cameras in television at that time already to his home and in fact even when he was here one time when I was having a table spread for after the meeting he couldn''t attempt to participate in that part but at that time the way he praised them I felt as if it was a rabbi talking to his students [laughter] and and encouraged them to continue with that so smiley so he was admirable he was left aloof he was a he treated everyone really now he was in my town take with him I felt an ... basis with him because that is the way he treated me if he got a letter from someone from his uncle he would call or have his ms.dickens call me to discuss certain things so he was definitely a very fine young boy he couldn''t aside from being a professor he was to a degree a shy person that may seem when he was here and I had the table against the door because I had chairs all over the place and when he was ready to leave we were seeing the discussion room standing above several recent situations and when he was ready to leave I had we had to move the closet and he thought he could go out the other way in my head closed off you still have an opening that other closet that was the he was embarrassed by the fact that he to go out before everyone else you believe and when I told him I had the broke face? and he had to come through the door he was really embarrassed by it but aside from so many other things at one time and by the enthusiasm at the meeting at the public meeting that was at... I was tearing the paper read making every effort to contact every Jew possible and even everyone suspected to be a Jew [laughter] at least we did he pulled my sleeve turned to me and he said they''re just like the Nazi''s [laughter] the way he snapped [inaudible mumbling with laughter] but the fact of the matter is that in those days we did contact everyone that possible could we left no one to go without a contribution this is something that I don''t any federation had every succeeded in doing and i''ve seen publications of the Jewish federation and they used to post the different contributions and it was shameful to see that so many contributions were in the 10 15 20 dollar range but just working people too so many business people that was shameful to even publish it was to date expect in 1970 we never published the amounts anyone gave but in 1970 the professor linkton ran the campaign and he published not individual but in classes listing those over 2000 those at that time that was already related to that class and over 1000 in those in between 500 and 1000 and between 250 and 500 and so on and listed those under 35 and when I read the names I was sick because I felt that was a terrible thing to do if these people couldn''t afford to give at that time they shouldn''t be publicized 

[inaudible interviewer comment] 

Siskowitz: I felt very strongly about that also of course I saw names of others that should able to help more of course in 1970 the ... sucks it was not existing doesn''t resonate like the 40''s or 50''s you see so I was always against this idea of publishing because people are giving in accordance to their what their heart permits then we tax ourselves and I always felt that women could do a usual rate is a tax that we put on ourselves that is important tax to take care of our own to take care of those who need help and without the help that Israel standing leads to the disparity today we still have problems but we also have problems individually that have to be taken care of and if we don''t have a Jewish community established locally we will never be ready to have those overseas 

Interviewer: true

Siskowitz: you see

Interviewer: true

Interviewer: so you have to that as well and we have people like in Trenton I recall .. wrote in one of the articles about the Hebrew Boys Society well when we think about something like this I was very impressed with that article in fact and several numbers that you have written and I followed very closely in fact but here is a situation where people as you pointed out won''t chase was a big deal about 126,000 dollars as I remember those people needed help and it was the help that like I''m thinking in my own case when we came here in 1921 with my uncle who was a reasonably good for most of the circumstances because he was a builder at that time and then over his sister with five children that''s my family by the idea of the first world war and established us in the grocery store so that we could take care of ourselves and when I think about it how many people have been in those things in an individual basis how many people have the fortunate to have an uncle who can be able to do something like that

Interviewer: hmm

Siskowitz: so that we need a community its like I  read a mr. scadel who was chairman of the latex cooperation he''s the one who owned the place they were building the rock of ...today

[inaudible]

Siskowitz: dump rocket you see and I recall when I called him here on this sunday morning and of course I made the appointment with him first it was during the time when Truman was president and he was going to use the army to break a strike at the railroad I think it was at that time

Interviewer: yes

Siskowitz: you recall that incident?

Interviewer: yup

Siskowitz: and a member of senators where calling him to get his opinion on it and describe everybody on the drill and of course he was against the idea using the army to break a strike and things of that sort and one discussion I had with him and his argument of course was him given on an individual basis he published books for Palestine a book for Palestine for example he was really a cancer critic in honor of his father who died from cancer which was costing him close to half a million dollars a year to maintain and after he was explaining that people were considering him a lesser .... because he wouldn''t take certain cases because they were doing experimental work primarily at that time for the cancer and so he''s  argument was that he was being that went off on his own that he shouldn''t be expected to join and they accepted him we would like him to join the community and he said of course he was a citizen of the world he wasn''t just a citizen of Princeton at that time and as I told him at that time I said mr. scadal that''s fine for you to say that you can afford it what about me who can''t afford to have an individual charity organization we needed an organization to form ourselves and able to be able to help our fellow Jews and in the final analysis it was Ms.Penal who went up with her man and she continued giving fairly reasonable contributions but he felt he might''ve been justified that he would spend a great deal of money on his elder he didn''t need an organization to lead him to where his money should go you see so we have our experiences and I think I made some bless time to you I can explain to without having people I have invited to serve on the board because they were referred to me as Jews and then .... away Jews they were only they thought I was Jewish so their name is Jewish [laughter]  like like the Catholic minister coming today you see but the discussions I had with some of those people they still have a feeling

Interviewer: true

Siskowitz:even though they were Christian, brought up as Christians, but they still had the feeling yeah of one particular case who would not make his contribution that one particular year because he joined this abusive community and they never Palestine appeal couldn''t agree on the percentage of take when we joined as a joined the group we were already running in the campaign before the ... came up to the settlement and he was at the time felt very strongly remorse for the joined this abusive community he was extra impact Palestine appeal itself and since it was impacted by Palestine we gotten to quite a discussion about it and in the discussion he said well I''m not Jewish I''m Christian my wife my brother was Christian I was brought up as a Christian my wife was Christian [inaudible] my father today was taken disinterest of course at that time they never considered him chairman you see and this I said to him I can''t seem to remember his name it was a real Jewish name actually and I said no we''re not doing it in honor of to honor your father we''re doing it because you have your father''s heart, you have a Jewish heart we take care of our Jews and he looked at me at the time and of course even through the discussion we were having about Palestine I believe I convinced him that it was important that we should have a piece of land where we could unite and if and get the people all these refugees that ...and I would stay true and accept during those days and in fact I got a larger contribution from the the morning gift of a long discussion was a big contributer but when I mentioned about the Jewish heart 

[inaudible]

Siskowitz: he he said goodness I remember my grandpa well he was a very charitable person you see what else can I tell you

Interviewer: it all sounded very good

Siskowitz: they say I have contact with the community even before I came to the community because the few Jewish people that were here used to be at festivals in my jewelry store and they variation on fall street

Interviewer:can you give me inner workings of the your family with your brothers and sisters

Siskowitz: well what could I tell you

Interviewer: when you were smaller I mean how close were you-

Siskowitz: we were a very close family very close we were a very close family in before we came here like I said my father died when I was about eight years old and that was a direct result of the first world war so we all worked together very closely we all cooperated with everything very closely and when we came here my two sisters the oldest sisters went to work with me i think my younger sister who was only sixteen at that time she took complete control over the store she picked up the English language in no time simply went to night school short time she was very capable individual wonderful person let''s say I was very close with her and after school I was 

Interviewer: what was what was your sisters name who''s sydney grosses sitting her grosses mother

Siskowitz: lina

Interviewer:lina?

Siskowitz: yeah 

Interviewer: was she with you

Siskowitz: she was the next oldest

Interviewer: thirsty 

Siskowitz: I had a brother who was left in Europe he left when the war started in 1914 the school gave him a complete scholarship and they moved out to deep Russia I think it was what would we call it that was the landing..... it was eighteen he had to the school moved up and him he went from the school and he was left-

[inaudible overlap]..St. Petersburg wasn''t it

Siskowitz:that was after that they named the 

Interviewer: Purtrugra? 

[inaudible laughter]

Interviewer:I heard you change it 

Siskowitz: yeah [laughter] but ..went with the school and he only came once for a visit during the war and my father and I can recall this so vividly was at all prepared one year to go visit him he got the passport he got the everything ready and something came up and I don''t know exactly what he wasn''t able to aboard it they didn''t permit




















SIDE B: 

Siskowitz: and in the when we came here in 1921 because we were always in East Slovakia and we went to Reagan where I had an uncle there who later came here after us as well in 1921 we got a letter from my brother we had left our address with the Red Cross at the time when we were locating one of the other families and he was able to get the address that way and wrote a letter at the time he was still in the army he was a commander of engineers he was an engineer at the time and of course he was hoping that someday we would able to be together he was a when we got believe it another letter from him in fact Liam wrote to him a couple of time and then he got the response eventually and under the Stallon situation he was one of the people obviously that was eliminated among many others when Stallon started this business

Interviewer: Now one of one of Liam''s daughters is the head nurse at Greenwood''s house

Siskowitz:I don''t know if she''s the head nurse but she''s there

Interviewer: What was her name? [overlapping] Aileen 

Siskowitz: Aileen Burkman

Interviewer: Okay now. Does Aileen have a daughter?

Siskowitz: She has two daughters

Interviewer: [overlapping] That''s also nurses?

Siskowitz: No, no one daughter is a teacher and the other one is working in New York in some agency of some sort I don''t know if she''s there

Interviewer: [overlapping inaudible] maybe Aileen had a daughter that worked at the as a nurse to some-

Siskowitz: No no she''s she had taken up nurses nursing before she was married and when the children grew up she went back to nursing and she got the job at the Greenwoodhouse fine young lady and she has two daughters and a son the son is in college now the son spent a year in Israel in fact and of course the other daughter Burnese she''s a teacher she''s got two sons one is now a lieutenant in the marines he wants to make a career out of that and the other one is in college now and then Brenda who was running the school for the land of Israel she''s got two children so Liam had a lot of ... from his three children they were all very well and married and doing well

Interviewer: That''s good that''s nice

Siskowitz:and he had a great deal of ... from them and a great deal of joy he said too bad that he''s not well today Liam and I were very close

Interviewer: How close were you in age?

Siskowitz: Two years and two months

Interviewer: And who''s older

Siskowitz: He''s older

Interviewer: And your your one was in the army in Russia

Siskowitz: He was 

Interviewer: was he 

Siskowitz: the second one in the family

Interviewer: Okay

Siskowitz: Jean Failman was the oldest and then my brother Theya he was second and then Liam and then Anna and there was another child that died before I knew anything about it and then Liana and then I''m the baby of the family so 

Interviewer: That''s nice it''s a nice close family

Siskowitz: Very close very close we were we were a singing family actually at that time we didn''t have radios and TV''s and we all enjoyed the singing 

Interviewer: What I''d like to do is I''d like to borrow this and as I write this I can refer to some of these things with the dates that you were saying and I''ll get them back to you

Siskowitz: I appreciate that

  


', 'Initial transcript', 't', '2021-04-12 01:26:29');
INSERT INTO user_edit_request (user_id, transcript_id, text, edit_comment, request_approved, create_time) VALUES (1, 2, 'Transcribed by Jacob Haney

INTERVIEWER: Today is, uh, May the 31st 1995, I’m sitting with, uh, Joel Millner in his spacious office, and uh we’re gonna explore a little more information of his dad Nathan Millner, which I recall him very well, uh, a few years back. Uh, the first thing, uh, J I wanna do is to clarify, uh, this first date when he was born. What year was he born? It’s—I had somebody mention somewhere 1884

JOEL MILLNER: Ummmm, [pause], I just wanna, uhhh, make sure ‘84?

INTERVIEWER: Because his hundredth birthday is what you have at, on the tape—

JOEL MILLNER [interrupting]: Yeah, well that was it, it was August 25th uh—

[1:00]

INTERVIEWER [interrupting]: Okay 1994, so [indistinguishable] okay, alright, and where was, where was he born?

JOEL MILLNER: He was born in, uh, in, um, Vilna 

INTERVIEWER: Vilna, that was, that was probably in Poland at that time.

JOEL MILLNER: Yeah, it was Poland, right.

INTERVIEWER: Okay, and, uh, uh, how many, uh, uh, how many, children, were, were, did his parents have?

JOEL MILLNER: Uh, gee, that’s uh, you know I’ve never, um, uh, well they never came to this country so, uh, I knew there was a, uh, a sister and, uh, I think two other brothers, but I’m not sure. That’s a, uh, that’s a question that, uh—

INTERVIEWER: Okay, wh—, alright, what kind a, what kind of a livelihood did your grandfather have in Vilna uh, before they came over here?

[2:00]

JOEL MILLNER: Uh, well, he had some kind of a uh, of a store, but uh, I don’t think my father was involved in the store, he had learned a trade as a uh, as a uh, repairing, uh, manufacturing shoes, I thought they, they called him, he was a uh, top—, a topper, he made the uh, tops of uh, of shoes, and he had gone away to learn the trade, and uh, and then he came home, and then he was in, uh, he was, ya know, working in his trade and, and  doing very well in his trade, but I guess he was uh, 19 or uh 20 [3:00] and uh, it wasuh, he uh, left his family to uh, to come to the United States because uh, otherwise he would’ve hadda gone into the uh,service

INTERVIEWER: Now, did he go into, after, —er did he go into any separate businesses after he learned, uh, the shoe making business or he didn''t do that until he came to this country?

JOEL MILLNER: No, he did that over there, he was making a, uh, a living doing that as a young man, now, um, uh, what the family business was a, uh, I—I—I honestly don’t know.

INTERVIEWER: Okay, now, you mentioned that uh, uh, he came here to this country in 1905, uh, and he stayed with an uncle and 5 cousins.

JOEL MILLNER: Well that was, uh, uh—

[4:00]

INTERVIEWER [interrupting]: So that would have been one of his, his uh, father’s brother—

JOEL MILLNER [interrupting]: One of the father’s brothers a uh—

INTERVIEWER [interrupting]: And, where

JOEL MILLNER [continuing]: he was, uh an uncle of uh—

INTERVIEWER [interrupting]: Where did he live, when he came here?

JOEL MILLNER: Well, I thought they lived, uh, down on, uh, Unionstreet, or that area, ya know, in, in downtown uh, Trenton

INTERVIEWER: Okay, uh, do you know about how long he stayed with them?

JOEL MILLNER: He stayed with them for a short period of time, and then he moved in with uh, um, Joe Olinski[s family, and, uh—

INTERVIEWER[interrupting]: The Olinskifamily, was it Joe Olinski?

JOEL MILLNER: Yeah, I don’t know who, the, uh, the father was but, uh, you know, uh [indistinguishable], uh, I don’t remember the father’s name, I’m not sure if it was Abe or, uh, or not, I don’t know that was, you know, uh, [5:00] Joe Olinski, they, they had a roofing supply business, and, uh, and then I guess he left there and then he, I thought he worked in his trade in the Boston area for, for [indistinguishable]—

INTERVIEWER [interrupting]:O—Okay, now I have something here that I heard somewhere that he sold uh, writing papers and pens and needles, was it, did he do that while he was here in Trenton, in the Trenton Area?

JOEL MILLNER: Yeah, I—I don’t think, uh, he, ya know, he was a uh, peddler 

INTERVIEWER: okay

JOEL MILLNER: You know, uh, and—

INTERVIEWER [interrupting]: ’cause they said between 1905 and 1923 he had different businesses and he sold candy and hot dogs and—

JOEL MILLNER [interrupting]: Well, he had a little store where the guys you know, played uh, cards in the, uh, in the back room, and, uh, and he sold candy—

INTERVIEWER [interrupting]: like a, like a [indistinguishable]?

JOEL MILLNER: Yeah, yeah, but he happened to be a very good, uh, a very good [6:00] card player, now, uh, now whether he was, uh, uh made any money doing that or not uh, it’s hard to say.

INTERVIEWER [interrupting]: Well, they always, they always uh, cut the pile,, the house always cut the pile, so.

JOEL MILLNER [overlapping]: Did they really? 
INTERVIEWER: Yeah. Okay now, uh, there was a hardware store in Trenton, uh, it says five years, [indistinguishable] owned a, owned a, he had a hardware store

JOEL MILLNER: Well yeah, yeah, I guess he was on broad street, he had a, uh, houseware store, and—

INTERVIEWER: Was that Broad, uh, South Broad or North Broad, do you—?

JOEL MILLNER: I believe it was South Broad

INTERVIEWER: Okay, okay, and uh, you said that the next thing was in 1922 or 1923, uh, he bought uh, your mother a diamond ring?

[7:00]

JOEL MILLNER: Well he had, uh, well that could be, uh, you know uh, that’s probably the right—right year, I mean he had, uh, how he met my mother, or, uh, how they made the match, and, and I think it was the Rabbi who was in Trenton at that time, uh, and uh, was uh, was originally from Elizabeth, and my mother had came from a family of, uh, of ten children from Elizabeth, and I guess, uh, at that point in time she hadda be in her uh, mid to uh, mid-30’sor so, and the Rabbi knew uh, [8:00] uh, knew the family, and when my father was uh, went to state college, she realized ya know, how learned he was in, in all the Jewish uh, services, and uh, able to conduct them, and he had a uh, a beautiful Hazzan voice, and uh he thought, gee this would be a very good uh, match for uh, for Reba Jacobson, so, uh, that’s how they ma—made the match.

INTERVIEWER: and her name was Reba?

JOEL MILLNER: Reba, R—E—B—A

INTERVIEWER: Okay, and that was from, uh, they were fromwhat town was that?

JOEL MILLNER: Well, the Jacobson’s uh, were from Elizabeth, New Jersey.

INTERVIEWER: okay, okay, now they mentioned something about a car that he first owned, do you remember, uh, you said, uh, uh, [9:00] I’ve never heard of a Dwight, was that a—was that a—?

JOEL MILLNER [interrupting]: I don’t know that

INTERVIEWER: Now—

JOEL MILLNER [interrupting]: I remember he had a hotmobile

INTERVIEWER: Hotmobile?

JOEL MILLNER: Yeah, now that one seemed to be memorable, that name, because I thought it was a funny name

INTERVIEWER: Uh, it said something about his father-in -aw was in—built houses, the Jacobson [indistinguishable]—

JOEL MILLNER [interrupting]: Well, Bernard, uh, Bernard Jacobson, I guess he, uh, was in the, uh, lumber and coal business in, uh, in Elizabeth, and I guess he was there with, uh, I don’t know how many sons or, uh, were, were involved uh—

INTERVIEWER: Well, it said they had five sons and five daughters?

JOEL MILLNER: That’s right

INTERVIEWER: Okay.

JOEL MILLNER: Yeah, that’s true, [10:00] and all the, uh, I think all the sons were, uh, were in the lumber business.

INTERVIEWER: Okay, now this is the other part, another part that was, a lot of conversation took place, about taking a house in trade. What was, what was that?

JOEL MILLNER: Well, he, he was, he had, uh, what, what he did was he sold boulders, uh, he would bring in a car load of lumber and then he would tally it out and sell it off to the, uh, to the builders. And they uh, in this particular case they, they weren''t able to pay him, and that was probably during the uh, depression, and he took the uh, the house in trade, and some of the also uh [11:00] sometimes they just, that was part of the arrangement that they would supply the material and then they, and then when they would build a track of houses, and would get a house and uh, so that that would compensate them.

INTERVIEWER: [indistinguishable] says the family gave them  five thousand dollars for a wedding present, now was this in a house that hecould sell or was this a cash present

JOEL MILLNER: That was probably a cash—c—cash present that I’m sure my mother used to furnish the, uh, the house

INTERVIEWER [overlapping]: mhmm

JOEL MILLNER [continuing]:you know, because she had very expensive taste, and, uh, she didn’t, uh, [12:00] she wouldn’t settle for anything less than the best you know, uh.

INTERVIEWER:[indistinguishable]  said they loaded, loaded a truck with lumber and then he went out and sold it is that, is that what he did?

JOEL MILLNER: Well, usually they would, uh, not necessarily load a truck, but they would load off a box car to somebody else’s truck, and then what—what wasn’t sold then I guess, then he had to find uh, storage space, and, then  I guess that’s when he, he, uh, must’ve bought a, uh, um, a, um, a, uh, I guess a guy had a uh, up on Ingham avenue had a uh, a uhm, mill shop and he probably bought that, uh, I think the [13:00] family name was uh, uh, Halpert. And, uh, and then he was—it was either on Ingham avenue or Willow, I, I think it was Ingham avenue, uh, uh, and I guess he was there for a number of years and then he, he moved to uh to Prospect street and he acquired, the uh, what used to be the old globe uh, rubber mill, and he was there until, uh, well, we were there until 1941, and, uh, you know I’ve always felt that, uh, while we were there until 1941, and I always felt that, um, unbeknownst to him he was, uh, um, very instrumental in the, in changing [14:00] the, um, the uhh, the way the city was, uh, was developed in the sense that, uh, he had bought Hermi—, the uh, the uh, Hermitage avenue, uh, uh, well not the Hermitage avenue, the Prospect Street property, uh, which he was paying $125 dollars a month rent, and, and, he offered to, to uh, buy it for eighty-five hundred dollars, but that was too late,  the uh, the state or the federal government had, had bought the ground for twelve thousand five hundred dollars

INTERVIEWER [interrupting]: What, what address was that on Prospect Street? Do you recall?

JOEL MILLNER: uh, I think it was [15:00] 314 Prospect

INTERVIEWER: And what’s—what’s on that now? Do you know?

JOEL MILLNER: Well, that''s the housing, the Prospect Village is there now, see now if he had acquired that uh, uh, [indistinguishable] who knows where they would have built that type of housing.

INTERVIEWER [interrupting]: That was right, that was right where that welding place used to be?

JOEL MILLNER: across from the, uh, [indistinguishable], that uh, that came across the road and the, uh, the box cars could load right into our, uh, into our building.

INTERVIEWER: There was some—there was something about a department store in Albany, what, uh, that uh—

JOEL MILLNER: Uh, he worked for, uh, I guess it was, uh, Axel Litzer, who, uh, one time had a uh, had a store down on a, uh, on Broad Street, I—I don’t know whether they were called the [indistinguishable], I don’t know that uh—[16:00]

INTERVIEWER: Well they said it was a shirt factory. He worked in a shirt factory, and hesold everything in every department, and trimmed windows in the store.

JOEL MILLNER: Well that, I don’t know, uh, in what, I, I know that he did that, uh, and, and uh,  it had to be prior to, uh, to him getting married—

INTERVIEWER [overlapping]: alright, okay

JOEL MILLNER [continuing]:It had to have been, uh, well, he had to be uh, 1905 he came in so uh, that was like 18 years that uh, he was here in Trenton and Boston and uh, and uh, where was it, what was I sayin?

INTERVIEWER: Albany.

JOEL MILLNER: Was it Albany? Yeah uh, that was an 18 year span, you know, that uh, he, uh, was here and there and uh [17:00] he was a bachelor uh, you know, uh

INTERVIEWER: Okay, then there was something about he worked for Erkin and Kahn on Perry Street, when it was on Perry Street, right on the corner of Perry and Broad, is that where [indistinguishable] had his place there, is that? 

JOEL MILLNER: Erkin and Kahn, yeah

INTERVIEWER: Was that where it was? ‘Cause I know Erkin and Kahn was out on Clinton avenue for… 

JOEL MILLNER: Yeah, but, uh, well I don''t uh, I don’t remember uh, uh, I don’t remember that

INTERVIEWER: Which—which uncle had a junk shop on Union Street?

JOEL MILLNER: Well that had to be, uh, uh, probably the uncle that he lived with, you know, that’s, you know the person he lived with —

INTERVIEWER [overlapping]: O—Okay, okay [indistinguishable]

JOEL MILLNER [continuing]: I don’t know what his name was, but, uh that was, uh, the—the brother’s, uh, no, the sons were uh, [18:00] Frank Millner, Henry Millner, and, uh, uh, Albert Millner

INTERVIEWER: Okay and then their children, it was Irv, and, uh, Irv Millner

JOEL MILLNER: Irv Millner, was, uh, Irv was uh, was Frank’s uh,

INTERVIEWER: Son

JOEL MILLNER: Son

INTERVIEWER: Okay, well, so, so it could’ve been the Millner Family that had the junkyard, is that it?

JOEL MILLNER: Oh, it was definitely the Millner family.

INTERVIEWER: Okay, okay, alright thats, thats all  I—

JOEL MILLNER: Yeah.

INTERVIEWER: Okay, okay, now one thing that I, uh, you know, thought was a—a tremendous thing was he ordered a car load of nails? What—what was that story he was tellin? He ordered a car load of nails, and, uh, in kegs and then went out and peddled them all? 
JOEL MILLNER: Well, that waswhat he did, you know, [19:00] uh, uh, you know he would buy and, and—

INTERVIEWER: Well what got him into the wholesale business? He didn''t want to work with the Millners anymore—I mean with the uh?

JOEL MILLNER: Well he had, well, he was never really work for uh, for the Millners in the, in the, uh junkyard, no. He may have lived with them for a while, but then uh, then he peddled, he had the store on broad street and, you know, between I guess he was in Boston working in his trade.Why he left that to, uh, you know, to come back, or w—when he went to, uh, Albany, uh, I—I don’t know, you know, what the, uh, the uh, what came first, you know?

INTERVIEWER: Yes, okay, the thing is, that’s fascinating about this is that he started out ordering car loads of nails and then he had a car load of the window weights, and I remember that ’cause I used to have to fix them as a kid, so I know what he was talking about.

JOEL MILLNER: Yeah, yeah, well he, uh, he was a, uh, [20:00] um, an adventurous guy, you know he was always buying quantities of, uh, of—of material, you know, uh, he uh, I re—I— well I remember years ago now, uh, uh, he—he went and, and bought at a sale probably, uh, maybe about 1960, he bought, uh, a Mohawk Driver went out of uh business er, they were liquidating, and uh, in uh, Philadelphia, and he bought, uh, thousands of doors, you know, and, uh, that uh, well [21:00] it wasn’t this room, but uh, but one of the a—a—a similar room uh, wa—was, was filled with doors, uh from, from wall to wall, from floor to ceiling.

INTERVIEWER: When did you take over this complex here? W—When—

JOEL MILLNER [interrupting]: 1941

INTERVIEWER: 1941?

JOEL MILLNER: Yeah

INTERVIEWER: What was here before? W—Wha—

JOEL MILLNER [interrupting]: Well they manufactured school and church furniture, uh, and uh, and then I guess uh, during the depression uh, you know, that—it was a very successful, uh, uh, business, but the uh, then I think the, during the depression they wanted to work for the uh, for the people, uh, in the different, uh, states. So they, there really was, th—uh, that the school furniture would be manufactured within the state, [22:00] not in—in, uh, in Trenton.

INTERVIEWER: Ho—How old is this building? Because wooden beams that you have here

JOEL MILLNER: This, uh, this has to be a hundred years old I would think, or uh close to it.

SPEAKER 3: [indistinguishable] Gonna get a quick bite

JOEL MILLNER: Well why don’t you wait until I''m done with uh, this oral, because uh, you know he’s, uh, not gonna be, uh—

INTERVIEWER: No, it won’t be that much longer, just a little bit

JOEL MILLNER: uh, and we uh, uh, in fact, uh, he, they had a s—sale here, when they sold out, and you can’t believe the desk that he bought.

INTERVIEWER: In all the time, are there any of those things still left in here, the old window sashes, [indistinguishable], old doors, old desks? [23:00]They long gone?
23:00
JOEL MILLNER: Oh, I don’t know, you know, there’s probably, ha, there''s probably still some window weights around, you know, in fact there are, you know, window weights around uh, uh, there''s some old uh, uh, moldings, that uh, Chestnut moldings, that uh, ya know, that ceased to be a going thing, uh, you know uh, where they used back pans and stuff, uh, you know, uh, eh back to, I don''t know I just sold a guy 13 pair of sash that uh, that would, have to go back to the uh, 1950s, you know, when we bought ’em.

INTERVIEWER: Well if you could—

JOEL MILLNER [interrupting]: I was in college, I was in college when those windows were bought

INTERVIEWER: If you come across any stuff that has your name [24:00] on it or Millner Lumber that goes back in old letterheads, or a photograph of a building or the workers, I mean—I’d like to have that for the archives, if you come across it, you know,[indistinguishable]—

JOEL MILLNER [overlapping]: I doubt it

INTERVIEWER [continuing]: Well, if you do you know not to throw it away, alright, so save it for me.

JOEL MILLNER: Well, I wouldn''t throw it away, yeah, uh

INTERVIEWER: When—When did, uh, uh, you and your brother take over here, when—when did you both come to work here?

JOEL MILLNER: uh, I would think that probably 1952, uh—

INTERVIEWER: Was your sister active at all here?

JOEL MILLNER: My sister was never, never, never worked here,my brother and I you know, started working here uh, when we were twelve years old. That’s why I tell people I‘ve been working around here 55 years uh

INTERVIEWER: That’s when we all started, about that age. 

JOEL MILLNER: Yeah [laughing], you know, uh, uh and, in those days it was uh, [25:00] hard work you know, they didn’t have the mechanical equipment that they have today, you know, for unloading, and we used to get up, uh, you know, come to work 6 o’clock in the morning and sometimes work ‘til 6:30,7:00 at night, you know, was, uh, stuff had to be, uh, loaded and shipped and what not, uh

INTERVIEWER: Do you remember what the first trucks were that were in here that you were able to—that you were permitted to drive?

JOEL MILLNER: Oh, well that was a, uh, well I picked up the, uh, I was a, uh, driving trucks before I was permitted to drive, you know uh, I remember I guess it must’ve been, uh, must’ve been 1941 or so, you know, uh, I went over and took one of the trucks out of the garage on a Sunday, and uh and drove it up to uh, [26:00] Slocums Bowling Alley and uh, on Pennington Road, and we were bowling and didn’t have a license, and uh, and uh on the way back we ran out of gas, and because there were no gas stations open because they had gas rationing, and what not, and uh, so uh, well I was with two other fellas, and I said well [indistinguishable]do is go back and get the other truck and tow it back to uh, to the uh, yard. So, uh, whichever we did, we had to take the bus back to Prospect Street from Pennington Road, I brought the other truck up and we started to tow it back and we you know, came down Parkside Avenue, made the turn going up Oakland Street, and uh, somewhere [27:00] along the line something happened to one of the uh, to the uh, break on the truck that was being towed, and we, uh, we got to corner of Prospect and, uh, Oakland and Prospect and I, ya know, stopped the uh, uh, stopped the truck to make the turn and all of a sudden “BOOM”, the car comes in and crashes the whole uh, headlight and fender. So, uh, I said, “oh this isn’t very goo—not very good, what are we gonna do about this?” And I said, “well we still have to take the truck down Prospect Street and take it around the back of the, uh, building where it gets parked”, and I said “now, look, when we, when we, when I signal that I''m stopping, you know, turn the, uh, truck away, so that we, the truck wont hit the back of the, um, the tow truck won’t hit the back of the truck we got”, [28:00] and okay, I wave, and he’s supposed to pull away and all of a sudden “BOOM” got the other fender, and uh, headlight, and, but I don’t know, I think the charge to have it repaired was like $300 dollars but I paid it back, uhhm, but uh, that was, uh, you know, that’s when I was driving, you know, um you know, must’ve been—

INTERVIEWER [interrupting]: Did they ever have, did Millner Lumber every have a horse drawn?

JOEL MILLNER: I think originally yeah, he,he did, you know, yeah.

INTERVIEWER: Are there any pictures of—of that ar—ar—around?

JOEL MILLNER: No, no, and I think we used to, originally, um, o—one of the trucks, you know, yo—you had to crank it to uhh, uh, to start it.

INTERVIEWER: ‘cause we came across some of shines trucks with a horse wagon, and then  som—another truck.

JOEL MILLNER: Yea, yeah, no [29:00] I don’t believe we have any pictures of that, but uh

INTERVIEWER: So, when did your dad actually retire from here and went to Florida, and didn’t, and didn’t—

JOEL MILLNER [interrupting]: Well, I don''t think he ever really retired, you know, uh, uh, I, you know, when we came into the business, and—and probably wrongly so, in 1952, you know, we were both here, when I was at—finished college, [indistinguishable] was here uh, you know, while I was in, in college, and he decided he didn’t want to go to college, er uh, and, uh, my father pretty much backed off, you know, from uh, being an active participant, he wanted to be a participant, but uh he, he, he, he didn''t want the, the daily uhh, problems, that uh, ya know, the servicing the customers uh, that uh, that uh, were required, ya know. [30:00] I mean, he wanted to make the decisions, but he wasn''t around, you know, to uh, to uh, to make the decisions, and uh, we found it necessary to make the decisions, and then have him, you know, uh, uh, say well you shouldn''t have done this or you shouldn''t of done that. Well, listen we had to make a decision and that''s the decision we, you know, we, we, we made, uh, you know, if you wanna, if you''re here then we’ll consult you, but if you’re not here i feel you have to give us the, uh that we’re, we’re attempting to do the best job possible, but, you know. So that’s when uh, uh, he sort of backed off and then I think he was, when he moved to Florida uh, he was 84 years old, so he lived in Florida almost 20 years, uh, I—I think, uh, into his 90s [31:00] he came back and he had the home on uh, on Bellevue Avenue and he, he had a place to stay, and after that, he uh, he came, after he sold the house he came back, but, but less uh, frequently, because then he would stay with a friend, uh, Andrew Repaul, and, uh, occasionally he would stay with us, but I don''t think he was comfortable staying with us, you know, because you’re always, you’re not home, you’re going, you’re coming, you know, I don’t know, I can’t eat the hours that you guys eat, you know, and uh, and uh, and then he, uh, and then he stayed with a fellow by the name of Lou Bellanchio, that had, uh, uh, that had a furniture factory, that, that he was manufacturing furniture, [32:00] uh, sofa beds. Uh, do you remember he, uh, well originally he was on, uh, I—I guess he, he was, he manufactured in the old Skillman building— 

INTERVIEWER: Oh yeah, yeah.

JOEL MILLNER: Ya know? And then he moved up to Adams Avenue, and then he moved back here, and, and was here for a number of years, and then I guess uh,, ya know uh, they went out of business, uh

INTERVIEWER: Now, did you own, or your dad own your [indistinguishable] or was that the [indistinguishable]?

JOEL MILLNER: [indistinguishable]—

INTERVIEWER [interrupting]: Pkay, and on this side of the street, where the back is, did you own that spot?

JOEL MILLNER: No, that was, uh, that was the, uh,  uh, Johnson Oldsmobile.

INTERVIEWER: Well, wasn’t Stanley Products in there?

JOEL MILLNER: Well, Stanley Products moved in after Johnson left.P
INTERVIEWER: okay, alright. 

JOEL MILLNER: You know, [33:00] and then the bank took it over, ya know, and, and we were probably uhh, uh, negligent in, in not attempting to, to buy that and, and utilizing that as a front, storefront with the yard in the, in the, in the back, but, you know, we had so much space here that, uh, and, uh, it wasn''t as important to, uh, uh, t—to be uh, fronting on Hermitage Avenue, uh, at the point in time, you know, or we could, uh, have acquired, uh there was a gas station o—on the corner here uh, you know, and then the bank, uh, put a little branch in th—in there and uh, between the gas station and our property. 

INTERVIEWER: That was, that was Gale, over that gas station, didn’t he—guy by name of Gale? He had a Pontiac [indistinguishable]  
JOEL MILLNER [interrupting]: It could be,  I never noti—

INTERVIEWER [Continuing]: [Indistinguishable] Young fella, I remember a guy, it was a young fella. 

JOEL MILLNER: Well, who was that, [34:00] I thought it was—the one guy that had it was by the name of Alan, wasn’t it?Uh, I don’t remember his first name—

INTERVIEWER: Because across the street was Ross, wasn’t it?

JOEL MILLNER: Burt Ross, uh Burt and Laura Ross

INTERVIEWER [overlapping]: Burt Ross, yeah.

JOEL MILLNER [continuing]: Yeah, yeah, and then, uh, next to it was Weinstein, and then, uh, I think Kunis had a, little, uh, bakery there?

INTERVIEWER: There was a bakery, a laundromat, Hermitage Press was in there, the printers [indistinguishable]

JOEL MILLNER: Yeah, and uh, Kramer, the uh, the uh, tailor was there—

INTERVIEWER: [overlapping]: yeah, [indistinguishable]

JOEL MILLNER [continuing]: A—And then Prior Donuts was there, uh, and then at one time, they had a little restaurant on the uh, corner of, uh, Hermitage and uh, and Edgewood uh, ya know, it wasn’t a bad little, uh, restaurant.

INTERVIEWER: I remember, I think it was a pizza shop there. Okay, well I tell ya that will, that will certainly fill in—
', 'Initial transcript', 't', '2021-04-12 01:26:29');
INSERT INTO user_edit_request (user_id, transcript_id, text, edit_comment, request_approved, create_time) VALUES (1, 3, 'INTERVIEWER: All right. So uh one more time for the record. Uh could I have your name?
BRENDA: Brenda Camp.
INTERVIEWER: And uh when and where were you born?
BRENDA: Trenton New Jersey. Right near Trentonia.
INTERVIEWER: Mmhm.
BRENDA: I am an original Trentonian.
INTERVIEWER: Um what year?
BRENDA: 1949.
INTERVIEWER: ‘49? OK. Uh so between ‘65 you were about sixteen? Nineteen. Sixteen-ish?
BRENDA: Hmm. Yes nine sixteen yeah.
INTERVIEWER: Um and you lived there ever since?
BRENDA: I been living here ever since.
INTERVIEWER: Mmhm.
BRENDA: Well I did move to California for a little while but came back to Trenton.
INTERVIEWER: Where where in Trenton have you lived?
BRENDA: Um oh East Trenton.
INTERVIEWER: Mmhm.
BRENDA: That’s Jefferson Street. Um I live lived on Fountain Avenue. I lived in North Trenton. Um I went to Jefferson School.
INTERVIEWER: Mmhm.
BRENDA: Junior High (?) Woodrow Wilson School I went to. Trenton High was our only high school.
INTERVIEWER: At the time?
BRENDA: Very nice. Mmhm.
INTERVIEWER: Yeah so I have I have maps here. Um so we’re interested in this nine block area of downtown uh part of Trenton.
BRENDA: What’s this?
INTERVIEWER: Uh this is Broad Street right here.
BRENDA: Right.
INTERVIEWER: And East Street right here. So all this.
BRENDA: Oh East State Street.
INTERVIEWER: Yeah East State Street yeah. So all this this this neighborhood.
BRENDA: Oh this Hanover. Oh this Hanover. OK. Mechanics Street. OK well Broad Street used to be um. See now there’s cars going through Broad Street. It used to be closed off. They used to have the street was all closed off. So it was like.
INTERVIEWER: Only walk?
BRENDA: Yes we’d walk in the middle of the street but it was closed off. The cars used to have to go around.
INTERVIEWER: Really?
BRENDA: That’s a long time ago. That’s where we had movies down there. East State Street we had um (?). We had the movie theater. (?). We used to have um. Well so you only interested in this particular area?
INTERVIEWER: Yeah the downtown area.
BRENDA: Oh um (?) used to be down there.
INTERVIEWER: Mmhm.
BRENDA: Used to have Wool Woolworths where we can go take our kids and have lunch.
INTERVIEWER: Mmhm.
BRENDA: And then we go shopping. Oh it was nice down there. We had a good time downtown.
INTERVIEWER: So uh so that’s what we’re looking for. Uh so what was transportation like there? If it was only foot traffic were there like was it accessible to people outside?
BRENDA: Well most of the people lived in Trenton and those areas that you’re talking about. Transpor. We all lived around so we usually walked. Everybody walked downtown. Everybody. That’s that’s like a hangout also downtown. (?). So the transportation was really good. And then they decided to open up the street so that’s when the buses and everything started coming down.
INTERVIEWER: And so you said there was like shopping and stuff?
BRENDA: Yeah.
INTERVIEWER: Were like. Was there like.
BRENDA: We had good stores. Rifkin(?) was the store, Ritzen, Rifkin, (?). We had Sears downtown. We had the banks down there. They had uh. What’s the store? Over by cargo (?). We had Woolworth. Yeah it was nice. Everybody’d be downtown Saturdays shopping take the kids out stuff like that.
INTERVIEWER: And you mentioned there was a lot of arts and culture like theaters and stuff?
BRENDA: There was theaters down there. Go to the movies stay all day long.
INTERVIEWER: Yeah.
BRENDA: Ain’t like now where you gotta get out.
INTERVIEWER: Mmhm.
BRENDA: Stay all day long (?). And movies.
INTERVIEWER: (?)
BRENDA: Yeah. And that’s where our parades was. We had our parades downtown.
INTERVIEWER: Mmhm.
BRENDA: Alton Street and (?). Um you know like Myrtle Bay(?) or when they have parades we all go downtown.
INTERVIEWER: Mmhm.
BRENDA: Mmhm. All kinds of parades. Spanish parades. Different cultures. So it wasn’t just one. Spanish people had a parade. We had a parade. Everybody had a parade.
INTERVIEWER: Do you remember it being pretty uh multi-ethnic? In term of.
BRENDA: Yeah uh multi-ethnic and everybody got along.
INTERVIEWER: Really?
BRENDA: It ain’t it ain’t like it is now.
INTERVIEWER: How so?
BRENDA: Now? Uh people not gonna walk down street now after five thirty.
INTERVIEWER: Yeah yeah.
BRENDA: You can’t do that now. Back when my dad would used to play um hopscotch (?).
INTERVIEWER: Mmhm.
BRENDA: You know the kids had fun. Double dutch. Now we don’t go outside. It’s too dangerous.
INTERVIEWER: Mmhm.
BRENDA: We go through (?) which is a bad thing for our (?).
INTERVIEWER: Yeah.
BRENDA: You know.
INTERVIEWER: I understand.
BRENDA: Other than that.
INTERVIEWER: So I went to the archive and gathered a bunch of photos of the area during this time period.
BRENDA: OK.
INTERVIEWER: I wanted to show you um to see if they.
BRENDA: See if I remember too.
INTERVIEWER: Yeah yeah yeah.
BRENDA: OK.
INTERVIEWER: So you can have a look at ‘em here.
BRENDA: OK. Lemme see. And then I’ll look at these and then tell you a little something so I don’t.
INTERVIEWER: Yeah so here this is the caption. This is um.
BRENDA: (?)
INTERVIEWER: Yep the the year and then.
BRENDA: OK. Now this is before me.
INTERVIEWER: This is before you were born. Yeah yeah.
BRENDA: OK. Let’s go.
INTERVIEWER: And they’re in chronological order so you.
BRENDA: That one’s before me too. I turned fifty five. See didn’t I tell you?
INTERVIEWER: (?).
BRENDA: Yeah we lived there.
INTERVIEWER: Yeah these are.
BRENDA: This is all by the corner of. This is State Street right here. And look right down here it’s Broad Street.
INTERVIEWER: Mmhm.
BRENDA: I see. See these buses here but it’s the middle of this street was closed at one time. Well look at that.
INTERVIEWER: Do you remember all this?
BRENDA: I remember. This is still.
INTERVIEWER: This you remember? That one too?
BRENDA: The beh. Um the beer L beer place. Right now over this is where Dunkin Donuts is now.
INTERVIEWER: Right right.
BRENDA: Yeah I know I know. I remember all this. Let me think about that. You got me out here.
INTERVIEWER: This is the construction of the post office on East State.
BRENDA: Hmm I don’t remember this (?).
INTERVIEWER: Uh Moose Hall?
BRENDA: Moose Hall yeah. This is at the corner of State and Broad.
INTERVIEWER: Mmhm.
BRENDA: This here. (?), (?). Yeah.
INTERVIEWER: You remember walking these streets?
BRENDA: Yeah we walked these streets. I don’t see any down here though but I was down there somewhere. I’m telling you. We walked downtown. Oh I remember this car. Where was this at Warren Street? That’s on the uh. Linda you should’ve been over here Linda. This this look at these pictures by Warren Street and stuff. (?). Oh that’s still on the corner of State and Broad.
INTERVIEWER: Yeah.
BRENDA: I I know there’s Woolworth over here.
INTERVIEWER: I think we have pictures of it yeah.
BRENDA: On State Street and you would come out on the side on Broad Street.
INTERVIEWER: And you’d wrap around?
BRENDA: Yeah. You’d go in the store on State and you’d come out on Broad Street. And in the back that’s where they used to have (?). They had more bus (?). I remember that. Uh (?) McDonald’s is downtown. McDonalds and then right now by McDonald’s was (?) down here. So Lord have mercy. See how this street go. No this ain’t it. It used to be closed off. (?). Man remember we had the street where we cars. We was walking in the street? Yeah and they opened it back up. They did work so they opened it back up.
INTERVIEWER: Mmm. Yeah I can imagine that there was a lot of.
BRENDA: Oh my God.
INTERVIEWER: There was a lot going on down there.
BRENDA: They got the Capitol movie.
INTERVIEWER: Did you do you remember uh.
BRENDA: Yeah.
INTERVIEWER: Seeing films down there?
BRENDA: The Capitol on Broad Street. We used to go to the movies and. Let me see that picture again. (?). Oh that’s the paper stand(?).
INTERVIEWER: This is. You were five years old. I don’t know if you remember the the those movies but uh.
BRENDA: I I remember no I remember the movies.
INTERVIEWER: Uh huh.
BRENDA: I remember.
INTERVIEWER: The theater.
BRENDA: I might have been five years old but I went to these movies.
INTERVIEWER: Uh huh.
BRENDA: Maybe I didn’t maybe I didn’t go when I was five. Maybe I went like nine and ten.
INTERVIEWER: Uh huh.
BRENDA: But yeah. 
INTERVIEWER: Yeah?
BRENDA: And ya know I remember that. Yeah the Capitol.
INTERVIEWER: Can you tell me anything  more about these photos that.
BRENDA: No.
INTERVIEWER: Come up?
BRENDA: I can’t tell you no more than the buildings I know. (?) you way down the street. (?) This is uh (?) Street. (?) is further down Broad Street.
INTERVIEWER: Mmhm.
BRENDA: I can’t really tell you too much about the um the pictures because I was young.
INTERVIEWER: Mmhm.
BRENDA: But I do.
INTERVIEWER: There are a couple ones that are a little later.
BRENDA: Oh they were in ‘54 I do remember. I do remember. Aw y’all went to the library and got all these?
INTERVIEWER: Yep. This one was taken after an air raid drill. Do you remember?
BRENDA: Ah nobody was downtown. I don’t remember that no.
INTERVIEWER: This is the Mayfair Theater.
BRENDA: Oh I remember the Mayfair. Yep. 
INTERVIEWER: Do you remember seeing shows there?
BRENDA: Yeah we used to go there and and there was the Trent Theater downtown also.
INTERVIEWER: Mmhm.
BRENDA: The Trent was right across the on on Broad Street to the further near Perry Street.
INTERVIEWER: OK.
BRENDA: There was the Trent Theater. We had three theaters downtown.
INTERVIEWER: Three? OK.
BRENDA: Yep. Capitol, Mayfair and Trent. Right Linda? Capitol, Mayfair and Trent? Yeah.
INTERVIEWER: And they were like cinemas? They weren’t stages? Was it.
BRENDA: No it was uh.
INTERVIEWER: Or both?
BRENDA: Yeah cinemas.
INTERVIEWER: Cinema?
BRENDA: Yeah.
INTERVIEWER: OK.
BRENDA: We’d watch one movie all day long didn’t we? Stay in there all day. We ain’t they didn’t didn’t pull us out like they do now.
INTERVIEWER: They kick you out now?
BRENDA: We’d go to the movies and stay all day long. Mom didn’t have to worry about oh look this snow.
INTERVIEWER: Do you remember the snow? We had a lot of pictures of this.
BRENDA: Oh yeah. What’s this 1960? 
INTERVIEWER: Yeah.
BRENDA: That big snow?
INTERVIEWER: There’s. Woolworth should be in that picture.
BRENDA: Woolworth and that snow. Crescent.
INTERVIEWER: Park Lane.
BRENDA: That’s at Crescent.
INTERVIEWER: Kitty Kelly(?)?
BRENDA: I don’t remember Kitty Kelly but I was.
INTERVIEWER: Oh here Woolworth.
BRENDA: Oh yeah that’s on Woolworth uh uh Crescent was right next door. You’d go over here and you’d come out on the other side. And the (?) Street bank building is now a apartment building.
INTERVIEWER: Mmm.
BRENDA: What was that?
INTERVIEWER: Uh Yards department store.
BRENDA: Oh I forgot about Yards department store. Remember that?
INTERVIEWER: What do you remember about it?
BRENDA: It was the department store we would go in. Oh we had there was some cheap stores downtown. Everybody went downtown. (?).
INTERVIEWER: This was around Christmastime. The decorations and stuff.
BRENDA: Uh huh. This is still it’s still on Broad and State. He still on he he on Broad Street going down there (?). That’s Broad. It was always a lot of people downtown.
INTERVIEWER: Really?
BRENDA: Always. Downtown with State always stayed (?). And Dunkin Donuts is over here now. And and up there is the um uh army where they trained the young boys to get in service. What?
INTERVIEWER: (?) you mentioned there were like ethnic parades and stuff.
BRENDA: Yeah. They always had parades. Yeah we always had parades. (?). What? Those some good pictures aha. I remember them but you know what? Really(?) see all these people downtown? We um we didn’t go downtown that much only to the movies. 
INTERVIEWER: Mmhm.
BRENDA: And then when we do go down to the movie downtown we were with our parents and we just go shopping and come back home that’s all.
INTERVIEWER:Mmm. 
BRENDA: But now everybody hang downtown.
INTERVIEWER: But then uh when you were older did you end up going on your own?
BRENDA: Oh yeah yeah when I got older yeah. Go down there and stay a long time.
INTERVIEWER: Mmhm.
BRENDA: It was nice downtown.
INTERVIEWER: Yeah I could imagine.
BRENDA: It was.
INTERVIEWER: Um how uh so you like the the amount of foot traffic is it a lot different than it is now?
BRENDA: Um.
INTERVIEWER: Is it like a walk downtown now?
BRENDA: Uh if you tried to walk downtown now through the traffic and the people and the port it’s still a whole lot of people down there but it’s not um good.
INTERVIEWER: How so?
BRENDA: Lot of lot of young people hanging out and even old people hanging out with nothing to do.
INTERVIEWER: Mmhm.
BRENDA: And uh you can’t you can’t even really walk down the street (?) street. A lot of people don’t go downtown as much as they used to especially on uh like bigs days like the first of the month. You know anything about that?
INTERVIEWER: Did you get your paycheck?
BRENDA: Thank you.
INTERVIEWER: Right.
BRENDA: My my my paycheck (?). And everybody was downtown kinda dangerous but.
INTERVIEWER: Mmm.
BRENDA: It’s all right. It’s all right. The big ole (?) don’t bother me but.
INTERVIEWER: Why do you think that it has has changed like that?
BRENDA: You know why? Because of the economy.
INTERVIEWER: Mmm.
BRENDA: And because uh a lot of young people don’t have anything they don’t have no job. They don’t have nothing to do. We used to have car (?). We used to have skating rink. We used to have a lot of activities for the children uh even the young people and now there’s nothing so what they do they get in groups and they hang downtown. So that’s why.
INTERVIEWER: Right right.
BRENDA: Yeah. All all our things have been taken away from us and we have nothing.
INTERVIEWER: Mmm.
BRENDA: We have nothing for our kids here. Nothing. Well I’m I’m just glad I lived in that era because I had a good time.
INTERVIEWER: Yeah it looked like it would be a good time.
BRENDA: Yeah it was. It was nice and (?). You you didn’t have to worry ‘bout nothing. Everybody spoke to everybody. There was no cover fee. 
INTERVIEWER: Mmm.
BRENDA:We were all people.
INTERVIEWER: Mmhm.
BRENDA: Now it’s like a issue.
INTERVIEWER: Mmhm.
BRENDA: Yeah so I just stay home. Not all the time I don’t.
INTERVIEWER: Mmm yeah uh I looked a lot about uh the steel industry and how that was really uh forwarded the economy of Trenton and and.
BRENDA: Yeah.
INTERVIEWER: And when that declined you’re saying that it the uh the impact was felt throughout the city.
BRENDA: Um Trenton mostly is was more like a close town you know uh a close down to the community.
INTERVIEWER: Mmm.
BRENDA: It was our town. And then we all our our our our our uh activities was taken away from us. You know like I said car (?), the skating rink, things for us to do as a family. Even Romeo and Juliet is gone. I used to take my kid there when he did a good grade in school. Oh I’d tell him to go get a couple of his friends. We used to go to Romeo and Juliet and.
INTERVIEWER: What was that?
BRENDA: Um that was more on um Calhoun Street.
INTERVIEWER: Oh.
BRENDA: It was a restaurant.
INTERVIEWER: OK.
BRENDA: And he’d take like four of his friends and they had uh uh one of them big pizzas and they’d have (?) soda and I’m sitting over there with a pitcher of beer.
INTERVIEWER: Mmm.
BRENDA: I had a good time. But see uh people have nothing to do now so that’s why everybody go downtown because that’s still the hotspot and you can see everybody. You go downtown I guarantee if I go downtown right now and I say I’ll be back in fifteen minutes I’m not gonna come back because I’m down there. Everybody knows everybody.
INTERVIEWER: Still?
BRENDA: Hey what’s up how you doing? I ain’t see you in a long time.
INTERVIEWER: Hmm.
BRENDA: That’s all.
INTERVIEWER: Did you feel um it was a strong sense of community identity in terms of living in Trenton at the time?
BRENDA: Yep. Yep. Everybody knew everybody and we had to worry ‘bout nothing more (?). If you got hurt everybody would help you.
INTERVIEWER: Mmhm.
BRENDA: If you did something wrong your mother, neighbors and all you could (?) always down the street ‘til you got home. That’s how close we were.
INTERVIEWER: Do you feel that uh how is that now?
BRENDA: Uhh.
INTERVIEWER: A little different?
BRENDA: A whole lot different.
INTERVIEWER: How so?
BRENDA: Wah well one day I think that people my age it’s about those who could afford to have left town and the ones who can’t are still here and they don’t do anything. Now the young kids has taken over.
INTERVIEWER: Mmhm.
B And they’re disrespectful. They have no manners. They they’re raised by by parents that are. I’m glad I was raised in that era that I was raised in because I can tell my grandkids that we used to play hopscotch(?), jump over the can, hide-n-seek, doubledutch. These kids today can’t do nothing but (?). Oh I remember him John was a good guy. He go he got killed over there two two blocks away or something like that. You know they all have no.
INTERVIEWER: Different stories?
BRENDA: Yeah.
INTERVIEWER: Yeah.
BRENDA: They all have no good things. They they got um miserable things. I had (?).
INTERVIEWER: Mmm.
BRENDA: So back in my day I mean I don’t know why it changed the way that it did. They’ll never see what we saw.
INTERVIEWER: Hmm.
BRENDA: Mmm Trenton is Trenton is damn you know Trenton makes the world takes.
INTERVIEWER: Yeah yeah.
 BRENDA: Ahahaha.
INTERVIEWER: You think that’s true?
BRENDA: I think.
INTERVIEWER: That’s the motto.
BRENDA: I think Trenton got a lot of money. They ain’t letting nobody take it though.
INTERVIEWER: Mmm.
BRENDA: Mmhm. I think Trenton got. I don’t think we’re as poor as they say we are.
INTERVIEWER: Mmm.
BRENDA: There’s a lot of (?) in Trenton. We’re very historical.
INTERVIEWER: Right right.
BRENDA: And we’re the capital city.
INTERVIEWER: Right.
BRENDA: So that’s what I’m talking about.
INTERVIEWER: So have you lived here all your life? Uh what made you stay? You obviously like the area. You have good memories of it.
BRENDA: Uh no. This what happened. I left. When my son got eighteen he left. 
INTERVIEWER: OK.
BRENDA: I moved to California for like three years.
INTERVIEWER: OK.
BRENDA: And then I came back because my job wanted to relocate me to Phoenix. I’m not no it’s like a hundred degrees out there in the. I’m not going out there and so I made out (?) into my bank account that (?).
INTERVIEWER: Mmhm.
BRENDA: And I came back home and I never left again.
INTERVIEWER: Mmm.
BRENDA: I love Trenton. I love.
INTERVIEWER: I can tell yeah.
BRENDA: I love Trenton yeah. Yeah I know everybody everybody in Trenton.
INTERVIEWER: Mmm. Uh do you have any uh memorable stories of visiting the downtown area?
BRENDA: Huh I remember. Yeah I remember I had to get (?) for myself when my my parents used to take us downtown on Saturday.
INTERVIEWER: Mmhm.
BRENDA: And we would go shopping. We would go to Woolworth.
INTERVIEWER: Right.
BRENDA: (?). And we would have lunch and then we’d come back home. That was a good it was good memories. And I remember when I got older like as a teenager me and my friends used to get together and we’d go to the movies and stay all day (?) movie.
INTERVIEWER: Mmhm.
BRENDA: You know I had good. I have great memories of Trenton.
INTERVIEWER: Mmhm.
BRENDA: Even the parades was happy. Yeah we had good times.
INTERVIEWER: Mmhm.
BRENDA: Mmhm. It’s just lately these five six years is going downhill.
INTERVIEWER: Yeah it sounds like a really vibrant.
BRENDA: Trenton was jamming. Whatchu talking about?
INTERVIEWER: Yeah.
BRENDA: Yeah.
INTERVIEWER: We looked at these pictures and it looked like uh it looked like Manhattan.
BRENDA: And New York yeah. 
INTERVIEWER: Mmhm.
BRENDA: Trenton is the bomb. Uh huh yeah we had a good time. I enjoy it here.
INTERVIEWER: Yeah.
BRENDA: My sister now want me to come over. You know me there’s nothing here but yeah there’s a lot here in Trenton. I love Trenton.
INTERVIEWER: Where. You sisters still living here?
BRENDA: My sisters. I got one in in California.
INTERVIEWER: Mmhm.
BRENDA: One in North Carolina and one in Sunset Bay(?).
INTERVIEWER: OK.
BRENDA: They they don’t never wanna come back home.
INTERVIEWER: Really?
BRENDA: What you mean? There’s nothing here in Trenton. What? This my home. What you talking about?
INTERVIEWER: Yeah yeah.
BRENDA: I ain’t going. I’ll leave but I’m always coming back.
INTERVIEWER: Mmhm.
BRENDA: And I’ve been here ever since. I think it was. I came back home ‘bout ten to fifteen years ago and I ain’t never going. 
INTERVIEWER: Mmm.
BRENDA: I ain’t going nowhere. Mmhm. (?)
INTERVIEWER: Um we’re also interested in where you think Trenton will head into the future. Uh after spending so much time in it.
BRENDA: Ah ah you know what I. You don’t want me to answer that aha. I I think it’s gonna. It’s it’s bad because our our kids are our future right now and the way of what’s going on in Trenton. Not wanting (?) and no jobs and no activities. It’s kinda bad as is so I think in another five to ten years it’s gonna be really bad.
INTERVIEWER: Hmm.
BRENDA: Unless something good happens to change. You know OK they have no jobs so they they’re selling drugs ‘cause they gonna provide for their families.
INTERVIEWER: Right. Somehow.
BRENDA: And then we have some who who haven’t been raised so they do (?) and hurt people.
INTERVIEWER: Yeah yeah yeah.
BRENDA: And it’s getting real bad with it. That’s the only thing I’m I’m afraid about Trenton is it’s gonna get worse.
INTERVIEWER: Hmm.
BRENDA: And what it is right now I’m (?) somebody or something happens to pull us back out.
INTERVIEWER: Hmm. Um would you say that right now within the downtown area there’s is there any art and culture going on?
BRENDA: OK now in the downtown well they got bookstores down there and you can go to a museum. Oh I love it. I take all my nieces and nephew to the museum.
INTERVIEWER: The state museum?
BRENDA: Oh watchu talking.
INTERVIEWER: I haven’t been. I was looking to go there.
BRENDA: What?
INTERVIEWER: Is it worth it?
BRENDA: It’s worth it let me tell you.
INTERVIEWER: Yeah?
BRENDA: My sisters they’re not into teaching their kids culture.
INTERVIEWER: Mmhm.
BRENDA: So I get all all the nieces and nephew and they they have a good show at the museum. I take ‘em all and go to the museum and there’s barracks downtown.
INTERVIEWER: Right.
BRENDA: The barracks. Yeah what? You gotta teach your kids some culture and that (?) statue.
INTERVIEWER: Mmhm.
BRENDA: I take ‘em and let learn them a little bit about history and stuff like that. I we was in the paper I was in the newspaper.
INTERVIEWER: Really?
BRENDA: Yeah.
INTERVIEWER: For what?
BRENDA: Front page. Martin Luther King Day we did a um we walked out in the rain for the march for Martin Luther King and I got all my little nieces and nephew by me and we made the front page.
INTERVIEWER: Wow.
BRENDA: Yeah. So yeah there’s a lot of good uh artwork and stuff going on still in Trenton. It’s just that a lot of people don’t take their kids a lot of people were arrested close to our museum up there.
INTERVIEWER: Hmm.
BRENDA: Where we have exhibits and stuff going on. Yeah and now we have our parades down that street. Used to be in the park but now it’s down that avenue.
INTERVIEWER: Hmm. Why do you think there’s uh like a sort of disinterest in the in going to the museum? Like your sisters.
BRENDA: Because kids have. Kids having kids but my sister and they all like well you know what some parents just don’t give a whole lot(?). That that’s what I feel about my sisters. They they were them. They like they time(?) but no you can’t do that. You gotta take the kids. Let the kids get some culture. You gotta let them know things so maybe I’m the auntie who gives out like that.
INTERVIEWER: Mmhm.
BRENDA: I take all of ‘em. (?). I even take ‘em to the soup kitchen to eat.
INTERVIEWER: Hmm.
BRENDA: But my sister get mad because you took my son to the soup kitchen? Yeah if something happen to you they know there to go to eat. Your help. I I I like to do a lot of things.
INTERVIEWER: Right right. How do you think that the arts and culture of Trenton could be improved now?
BRENDA: I don’t know. I don’t know. I think we need better leadership. I think we need people coming with new ideas to go back to this book the way it was.
INTERVIEWER: Mmm.
BRENDA: But more moderate. I mean I think they need to put up more uh they need things for them to do and that will bring ‘em all back. It’ll take (?) that um you know nothing to do.
INTERVIEWER: Right right.
BRENDA: You could take our pic. There was gonna be a movie built right downtown on Broad Street.
INTERVIEWER: Uh huh.
BRENDA: Near Perry. Near Friendship Church. They had.
INTERVIEWER: OK.
BRENDA: Started rebuilding a movie and they stopped. They didn’t never do what they supposed what they said they was gonna do. They never finished.
INTERVIEWER: Hmm.
BRENDA: So they might have ideas but they don’t do nothing so I don’t I don’t know. Like I know we need I think.
INTERVIEWER: It would be good. It would be good.
BRENDA: It would be I think it would bring ‘em back.
INTERVIEWER: Good for the neighborhood.
BRENDA: Yeah because you know once you get something like that started they say oh c’mon lemme let’s take our kids down there to that new movie downtown on Broad Street and then all the other kids and and their parents will go too you know.
INTERVIEWER: Yeah.
BRENDA: They were starting uh another building over here with something more creative for their kids.
INTERVIEWER: Mmhm.
BRENDA: Yeah people will do it but we don’t have it.
INTERVIEWER: Hmm.
BRENDA: If we have it I know I’d go. I’m taking my my grandkids and everybody else’s kids. That’s how I.
INTERVIEWER: Catch a show or something.
BRENDA: Yeah.
INTERVIEWER: Yeah yeah yeah.
BRENDA: That’s what you have to do. There’s nothing good for them to look at or be involved in uh huh.
INTERVIEWER: Hmm. So definitely a different place since back then huh?
BRENDA: Oh it it’s so different the change. It is really. This let me tell you know it it’s so different but I do remember this picture. I do remember that.
INTERVIEWER: Mmhm.
BRENDA: But it is. It’s a whole lot of different. It’s a whole it’s a whole new world.
INTERVIEWER: Yeah.
BRENDA: It’s a different world. And I will say it can go back to the old but more moderate you know?
INTERVIEWER: Hmm mmhm.
BRENDA: Yep.
INTERVIEWER: Um is it where you thought it would. Is.
BRENDA: I mean.
INTERVIEWER: Is Trenton now where you thought it would be?
BRENDA: No I never thought Trenton would go down like this. Never but you know it’s a whole lot of different things that made it go down. I’d say that uh I think Trenton dropped(?) a lot and worked out a lot and we have no more memories. My memories now as an adult is careless. You can’t walk the street unless you get mugged. That’s my memory now as an adult but my memory as a child.
INTERVIEWER: Right.
BRENDA: (?) (?) (?). Yeah.
INTERVIEWER: Yeah it’s interesting.
BRENDA: Yeah so um and besides uh (?), my kids, my son and my grandkids are grown adults. Because I woudn’t live here with them. Uh I would move. I would probably move with my sister or something because it it’s not it’s no place to to raise. There’s no role models. There’s nothing you know? There’s nothing but destruction evil things. And the peer pressure this this time is bad because of the drugs. 
INTERVIEWER: Hmm.
BRENDA: So you know I wouldn’t I wouldn’t.
INTERVIEWER: Do you remember there being gangs in the in the between ‘45 and ‘665?
BRENDA: Back in my day? No. Whah? There’s wasn’t gangs back in my day. We didn’t know what that was. What was a gang? What is a blood? What is a crip? We didn’t know what that was.
INTERVIEWER: Really?
BRENDA: We had we had good times back in my day.
INTERVIEWER: Hmm.
BRENDA: Mmhm.
INTERVIEWER: That’s good to know.
BRENDA: Yeah.
INTERVIEWER: Um and I guess to stay on in terms of the future what else would be good for the community more broadly in terms of Trenton as a whole?
BRENDA: Just like I say as a whole it would help things or buildings for our family or children to go to. Bring it back. Put the uh activities and uh nice little restaurants and things like that back into the community. I think it would bring us back up. Because you know what I do know for a fact that we have something going good going on we do take our children and and we have our cousins and everybody. We go and it was nice to spread the uh you know spread it and then everybody would come and join in.
INTERVIEWER: Yeah yeah yeah.
BRENDA: Yeah and then if somebody wanna come in and (?) will be (?) up why you wanna mess this up for us? You know and that stop all of that. So I think that’s uh I think that’s uh what’s what they they need to do rebuild back from this old stuff that (?) people have.
INTERVIEWER: Mmm.
BRENDA: See all the people walking down the street?
INTERVIEWER: Yeah looks like they’re having a good time.
BRENDA: Yeah yeah good time.
INTERVIEWER: Yeah yeah yeah.
BRENDA:Yep.
INTERVIEWER: So um is there anything else you’d like to share uh that I didn’t ask about that that sticks out to you about Old Trenton?
BRENDA: No only thing I can say is that I wish it come back.
INTERVIEWER: Mmm.
BRENDA: So I can be young again,
INTERVIEWER: Mmm.
BRENDA: Ahahaha.
INTERVIEWER: Yeah yeah.
BRENDA: That’s it.
INTERVIEWER: Yeah so that’s those are all my questions.
BRENDA: That’s all your questions?
INTERVIEWER: Yeah. Thank you very much for the interview.
BRENDA: It was really nice talking to you. Yeah. You welcome. Mmhm. Anything I can. Thank you for the pictures.
INTERVIEWER 2: You’re welcome. Can I just take a picture of you sitting here?
BRENDA: Oh.
INTERVIEWER 2: You can smile.
BRENDA: OK. With my little smile.
', 'Initial transcript', 't', '2021-04-12 01:26:29');

INSERT INTO user_edit_request (user_id, transcript_id, text, edit_comment, create_time) VALUES (5, 4, 'I am vandalizing your website! No more transcripts for you! Ha ha! Wait, there''s approval? Shoot, I didn''t think that far...', '>:)', '2021-04-12 01:39:34');