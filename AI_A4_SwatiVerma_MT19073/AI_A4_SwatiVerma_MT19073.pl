
start :-
  ansi_format([bold,fg(blue)], 'Career Advisory System. ~w', ['']),nl,
  ansi_format([bold], 'Welcome !! We will try to advice best career option for you. ~w', ['']),nl,
  write('We will give you different options.'), nl,
  reset_values,
  readFromFile,
  advice_career(Option).


readFromFile:-
  setup_call_cleanup(
    open('D:/Artificial_Intelligence/AI_A4_SwatiVerma_MT19073/out_new.txt',read,Input),
    (
      repeat,
      read_term(Input, X, []),
      read_from_file(X),asserta(X), !
    ),
    close(Input)
  ).

%Using cut here so that once a degree has been adviced then other degrees will not be explored
advice_career(Option) :-career(Option), !.

:- dynamic(result/2).

% Reset temporarily stored values whenever program starts
reset_values :-retract(result(_, _)),fail.
reset_values.



career(ms) :-
  physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(tech),
  given_exam(gre),
  write('You seems to be interested in research.'),nl,
  write('You are good in english and your marks are also good.'),nl,
  write('So, you can go for higher studies'),nl,
  ansi_format([bold,fg(green)], ' Suggestion: Masters in Science ~w', ['']).


career(mtech) :-
  physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(tech),
  given_exam(gate),
  write(' '),
  write('You seems to be interested in research.'),nl,
  write('You have cleared gate cutoff and you are interested in technology.'),nl,
  write('So, you can go for higher studies'),nl,
  ansi_format([bold,fg(green)], ' Suggestion: Masters in Technology. ~w', ['']).


career(mba) :-
  physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(tech), 
  given_exam(cat),
  write('You seems to be interested in business.'),nl,
  write('You have cleared CAT cutoff and you have good management skills.'),nl,
  write('You can go for higher studies'),nl,
  ansi_format([bold,fg(green)], ' Suggestion: Masters in Business Administration. ~w', ['']).

  career(job) :-
  physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(tech), 
  given_exam(none),
  coding(yes),
  write('You seems to be interested in coding .'),nl,
  write('You have done tech projects and loves to learn new technology.'),nl,
  write('So, you can go for an IT Job'),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(green)], ' 1. Software developer. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 2. Data Anayst. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 3. Technical researcher. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 4. System Designer. ~w', ['']).


career(job) :-
  physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(tech),
  given_exam(none),
  coding(no),
  write('You seems not interested in coding.'),nl,
  write('You need to improve your aptitude also.'),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(green)], ' 1. Public Sector. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 2. Teaching profile. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 3. Take one year gap and try to explore new hobbies and interests. ~w', ['']).

career(others) :-
  physical_or_mental(mental),
  aptitute(no),
  tech_or_nontech(tech),  
  traveller_nontraveller(traveller),
  creative_and_innovative(yes),
  write('You seems like a creative and innovative person with technical knowledge.'),nl,
  write('You  like travelling a lot. '),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(magenta)], ' 1. Event Planner. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 2. Journalism. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 2. Photographer if you are interested in photography.. ~w', ['']).

career(army) :-
  physical_or_mental(physical),
  aptitute(yes),
  leadership(yes),
  risk_taker(yes),
  write('You seems to be physically fit.'),nl,
  write('You are a risk taker and can adapt to any situation.'),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(green)], ' 1. Join India Army Force. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 2. Join India Air Force. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 3. Join India Navy Force. ~w', ['']).

career(business) :-
  physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(nontech),   
  business_oriented(yes),
  write('You are a non-technological person but you are good in aptitute and you are a risk taker.'),nl,
  write('You are interested in business and you have good management skills and well as you are a good leadership.'),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(green)], ' 1. You can start your own business. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 2. Be an entrepreneaur. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 3. Join any business related company. ~w', ['']).





career(others) :-
  physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(nontech),  
  business_oriented(no),
  traveller_nontraveller(nontraveller),
  creative_and_innovative(yes),
  write('You seems like a creative and innovative person.'),nl,
  write('But you do not like travelling and wants to do something by staying at a place only'),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(magenta)], ' 2. Interior Designer. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 2. Artist. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 3. Fashion Designer.. ~w', ['']).



  career(others) :-
  physical_or_mental(mental),
  aptitute(no),
  tech_or_nontech(tech),  
   business_oriented(no),
  traveller_nontraveller(traveller),
  creative_and_innovative(yes),
  write('You seems like a creative and innovative person with technical knowledge.'),nl,
  write('You  like travelling a lot. '),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(magenta)], ' 1. Event Planner. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 2. Journalism. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 2. Photographer if you are interested in photography.. ~w', ['']).

career(others) :-
  physical_or_mental(mental),
  aptitute(no),
  tech_or_nontech(nontech),  
  traveller_nontraveller(nontraveller),
  creative_and_innovative(yes),
  write('You seems like a creative and innovative person.'),nl,
  write('But you do not like travelling and wants to do something by staying at a place only'),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(magenta)], ' 2. Interior Designer. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 2. Artist. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 3. Fashion Designer.. ~w', ['']).




career(others):-
ansi_format([bold,fg(red)], 'Sorry, we are unable to help you. ~w', ['']),nl,
write('You can take a break for this year or try to explore your new interestes.').


read_from_file(end_of_file):- !.
read_from_file(X):-
  asserta(X),!,
  fail.