% Free Tuts:
% http://www.swi-prolog.org/pldoc/man?section=quickstart
% http://kti.ms.mff.cuni.cz/~bartak/prolog
% SWI-Prolog: http://www.swi-prolog.org/pldoc/doc_for?object=manual

% listing. list what is in the current Prolog database
% consult('filename'). load program
% reconsult('filename'). replace any defined procedures with any in file

man(stan).
man(peter).
man(wahsing).
man(vince).
woman(lobo).
woman(jeanne).
woman(angela).

married(wahsing, lobo).
married(stan, jeanne).

parent(wahsing, stan).
parent(stan, angela).
parent(stan, vince).

grandchild(GP, C) :- parent(GP, P), parent(P, C).
father(P, C) :- man(P), parent(P, C).
father(F, C) :- man(F), married(F, M), parent(M, C).
mother(P, C) :- woman(P), parent(P, C).
mother(M, C) :- woman(M), married(F, M), parent(F, C).
child(P, C) :- married(P, P2), child(P2, C).
sibling(C1, C2) :- parent(P, C1), parent(P, C2).

authored(small_gods, terry_pratchett).
authored(night_watch, terry_pratchett).
authored(guards_guards, terry_pratchett).
authored(a_walk_in_the_woods, bill_bryson).
authored(notes_from_a_small_island, bill_bryson).
authored(the_lost_continent, bill_bryson).
authored(consider_phlebas, iain_m_banks).
authored(the_player_of_games, iain_m_banks).
authored(use_of_weapons, iain_m_banks).
authored(surface_detail, iain_m_banks).
authored(snow_crash, neal_stephenson).
authored(crytponomicon, neal_stephenson).

% authored(What, neal_stephenson). % list books authored by neal_stephenson

plays(jimi_hendrix, guitar).
plays(eric_clapton, guitar).
plays(radiohead, guitar).
plays(radiohead, knobs).

genre(jimi_hendrix, blues).
genre(psychedelic_rock, blues).
genre(eric_clapton, blues).
genre(eric_clapton, blues_rock).
genre(eric_clapton, psychedelic_rock).
genre(radiohead, alternative_rock).
genre(radiohead, experimental_rock).
genre(radiohead, electronic).

% plays(Who, guitar).
instruments_in_genre(I, G) :- plays(A, I), genre(A, G).