/* This file contains facts to use in Assignment 4.
 * Please don't hand in a copy of it or copy these facts into the
 * file of rules that you hand in.  This file is provided
 * to give you some test data for the rules you are
 * required to write.  We will test your rules with
 * different facts.
 *
 * CISC 260, winter 2014
 */

/*
 * Facts about actors appearing in Joss Whedon TV shows,
 * for Part 1 of the assignment.
 * The whedon relation has 4 parameters:
 *   1. name of series (one of buffy, angel, or firefly)
 *   2. name of actor
 *   3. name of character the actor played
 *   4. a category for the character -- vampire, captain,
 *      slayer, etc.
 * 
 * For example, the fact  
 *   whedon(firefly, nathanFillion, mal, captain).
 * Means that Nathan Fillion played the rule of Mal
 * in the Firefly series, and Mal was the captain of the ship in that series.
 *
 * Apologies to any Whedon fans in the class.  It's
 * an extremely abbreviated list of the actors in Joss's shows, picked
 * to make an interesting assignment rather than to present any kind of
 * thorough documentation!  
 *
 * Note: I got my Whedon facts from imdb.com and my Oscar facts from 
 * www.oscars.org.  I won't give bonus points for typos in names of
 * people or films, unless a particular person or film appears twice and
 * is spelled differently each time.
 */
whedon(firefly, nathanFillion, mal, captain).
whedon(firefly, ginaTorres, zoe, firstMate).
whedon(firefly, alanTudyk, wash, pilot).
whedon(firefly, ronGlass, book, preacher).
whedon(firefly, adamBaldwin, jayne, fighter).
whedon(firefly, jonathanWoodward, tracey, friend).
whedon(firefly, carlosJacott, dobson, fed).
whedon(firefly, seanMaher, simon, doctor).

whedon(angel, davidBoreanaz, angel, vampire).
whedon(angel, alexisDenisof, wesley, fighter).
whedon(angel, jamesMarsters, spike, vampire).
whedon(angel, sarahMichelleGeller, buffy, slayer).
whedon(angel, ginaTorres, jasmine, demon).
whedon(angel, carlosJacott, richard, demon).
whedon(angel, adamBaldwin, hamilton, administrator).
whedon(angel, jonathanWoodward, knox, scientist).
whedon(angel, jossWhedon, numfar, demon).
whedon(angel, elizaDushku, faith, slayer).
whedon(angel, amyAcker, fred, genius).
whedon(angel, jAugustRichards, gunn, fighter).

whedon(buffy, davidBoreanaz, angel, vampire).
whedon(buffy, alexisDenisof, wesley, watcher).
whedon(buffy, jeffKober, zachary, vampire).
whedon(buffy, jamesMarsters, spike, vampire).
whedon(buffy, sarahMichelleGeller, buffy, slayer).
whedon(buffy, brianThompson, luke, vampire).
whedon(buffy, nathanFillion, caleb, preacher).
whedon(buffy, anthonyHead, giles, watcher).
whedon(buffy, markMetcalf, master, vampire).
whedon(buffy, carlosJacott, ken, demon).
whedon(buffy, elizaDushku, faith, slayer).
whedon(buffy, brianThompson, judge, demon).
whedon(buffy, jeffKober, rack, warlock).
whedon(buffy, jonathanWoodward, webs, vampire).

whedon(dollhouse, elizaDushku, echo, doll).
whedon(dollhouse, amyAcker, claireSaunders, doctor).
whedon(dollhouse, franKranz, topher, genius).

whedon(agentsOfShield, jAugustRichards, mike, hero).
whedon(agentsOfShield, ronGlass, streiten, doctor).
whedon(agentsOfShield, chloeBennet, skye, hacker).

/*
 * Facts about nominees and winners of Academy Awards 
 * "Oscars" for Part 2 of the assignment.  
 *
 * These facts use three kinds of structures.  
 * 1. We describe an award as a structure with three 
 * components -- the name and year of the award, and
 * whether we're talking about the winner of the award
 * or a nominee.  For example, award(bestActor, 2004, nominee)
 * means a nominee for the Best Actor award in 2004.
 * 2. We describe a person (actor, director, etc.) as
 * a structure with two components -- the person's name
 * and the film for which he or she was nominated.
 * who won or was nominated.  For example, 
 * person(leonardoDiCaprio, theAviator)
 * 3. We describe a film who won a Best Picture or 
 * Documentary award as a structure with one
 * component, the name of the film.  For example, 
 * film(findingNeverland).
 *
 * The "oscar" facts take two parameters: an award plus
 * a winner/nominee. The first parameter is always an
 * award structure.  For awards given to a specific person
 * (an actor, director, etc.), the second parameter is
 * a person structure.  For awards such as Best Picture that
 * are given to a film in general, the second parameter is
 * the name of the film (a simple identifier).
 */
oscar(award(bestActor,2004,nominee), person(donCheadle, hotelRwanda)).
oscar(award(bestActor,2004,nominee), person(johnnyDepp, findingNeverland)).
oscar(award(bestActor,2004,nominee), person(leonardoDiCaprio, theAviator)).
oscar(award(bestActor,2004,winner),  person(clintEastwood, millionDollarBaby)).
oscar(award(bestActor,2004,nominee), person(jamieFoxx, ray)).

oscar(award(bestActor,2005,winner),  person(philipSeymourHoffman, capote)).
oscar(award(bestActor,2005,nominee), person(terrenceHoward, hustleAndFlow)).
oscar(award(bestActor,2005,nominee), person(heathLedger, brokebackMountain)).
oscar(award(bestActor,2005,nominee), person(joaquinPhoenix, walkTheLine)).
oscar(award(bestActor,2005,nominee), person(davidStrathairn, goodNightAndGoodLuck)).

oscar(award(bestActor,2006,nominee), person(leonardoDiCaprio, bloodDiamond)).
oscar(award(bestActor,2006,nominee), person(ryanGosling, halfNelson)).
oscar(award(bestActor,2006,nominee), person(peterOToole, venus)).
oscar(award(bestActor,2006,nominee), person(willSmith, thePursuitofHappyness)).
oscar(award(bestActor,2006,winner),  person(forestWhitaker, theLastKingOfScotland)).

oscar(award(bestActress,2004,nominee), person(annetteBening, juliaLambert)).
oscar(award(bestActress,2004,nominee), person(catalinaSandinoMoreno, mariaFullOfGrace)).
oscar(award(bestActress,2004,nominee), person(imeldaStaunton, veraDrake)).
oscar(award(bestActress,2004,winner),  person(hilarySwank, millionDollarBaby)).
oscar(award(bestActress,2004,nominee), person(kateWinslet, eternalSunshine)).
	
oscar(award(bestActress,2005,nominee), person(judiDench, mrsHendersonPresents)).
oscar(award(bestActress,2005,nominee), person(felicityHuffman, transamerica)).
oscar(award(bestActress,2005,nominee), person(keiraKnightley, prideAndPrejudice)).
oscar(award(bestActress,2005,nominee), person(charlizeTheron, northCountry)).
oscar(award(bestActress,2005,winner),  person(reeseWitherspoon, walkTheLine)).
	
oscar(award(bestActress,2006,nominee), person(penelopeCruz, volver)).
oscar(award(bestActress,2006,nominee), person(judiDench, notesOnAScandal)).
oscar(award(bestActress,2006,winner),  person(helenMirren, theQueen)).
oscar(award(bestActress,2006,nominee), person(merylStreep, theDevilWearsPrada)).
oscar(award(bestActress,2006,nominee), person(kateWinslet, littleChildren)).

oscar(award(bestPicture,2004,nominee), film(theAviator)).
oscar(award(bestPicture,2004,nominee), film(findingNeverland)).
oscar(award(bestPicture,2004,winner),  film(millionDollarBaby)).
oscar(award(bestPicture,2004,nominee), film(ray)).
oscar(award(bestPicture,2004,nominee), film(sideways)).

oscar(award(bestPicture,2005,nominee), film(brokebackMountain)).
oscar(award(bestPicture,2005,nominee), film(capote)).
oscar(award(bestPicture,2005,winner),  film(crash)).
oscar(award(bestPicture,2005,nominee), film(goodNightAndGoodLuck)).
oscar(award(bestPicture,2005,nominee), film(munich)).
	
oscar(award(bestPicture,2006,nominee), film(babel)).
oscar(award(bestPicture,2006,winner),  film(theDeparted)).
oscar(award(bestPicture,2006,nominee), film(lettersFromIwoJima)).
oscar(award(bestPicture,2006,nominee), film(littleMissSunshine)).
oscar(award(bestPicture,2006,nominee), film(theQueen)).

oscar(award(documentary,2004,winner),  film(bornIntoBrothels)).
oscar(award(documentary,2004,nominee), film(theStoryOfTheWeepingCamel)).
oscar(award(documentary,2004,nominee), film(superSizeMe)).
oscar(award(documentary,2004,nominee), film(resurrection)).
oscar(award(documentary,2004,nominee), film(twistOfFaith)).

oscar(award(documentary,2005,nominee), film(darwinsNightmare)).
oscar(award(documentary,2005,nominee), film(enron)).
oscar(award(documentary,2005,winner),  film(marchOfThePenguins)).
oscar(award(documentary,2005,nominee), film(murderball)).
oscar(award(documentary,2005,nominee), film(streetFight)).

oscar(award(documentary,2006,nominee), film(deliverUsFromEvil)).
oscar(award(documentary,2006,winner),  film(anInconvenientTruth)).
oscar(award(documentary,2006,nominee), film(iraqInFragments)).
oscar(award(documentary,2006,nominee), film(jesusCamp)).
oscar(award(documentary,2006,nominee), film(myCountryMyCountry)).

% A made-up nomination to make sure Depp is seen as a double
% nominee even though his two nominations are in the same year.
oscar(award(bestActor,2004,nominee), person(johnnyDepp, anotherDeppFilm)).

% Another made-up nomination with one person receiving two awards
% for the same film.  He should also be seen as a double nominee.
oscar(award(bestDirector,2004,winner), person(jamieFoxx, ray)).



	