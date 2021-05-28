%Program Starts from here

start :-
  ansi_format([bold,fg(blue)], 'Career Advisory System. ~w', ['']),nl,
  ansi_format([bold], 'Welcome !! We will try to advice best career option for you. ~w', ['']),nl,
  write('We will give you different options.'), nl,
  write('To answer the questions, enter the option followed by a "."'), nl,
  reset_values,
  advice_career(Option).


%Using cut here so that once a degree has been adviced then other degrees will not be explored
advice_career(Option) :-career(Option), !.

% Stores replies of a user temporarily
:- dynamic(result/2).

% Reset temporarily stored values whenever program starts
reset_values :-retract(result(_, _)),fail.
reset_values.


% Career Options for CSE Student
career(ms) :-
  physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(tech),
  research_or_practical(research),
  given_exam(gre),
  cleared_gre_cutoff(yes),
  cgpa_more_than_9(yes),
  english(yes),
  write('You seems to be interested in research.'),nl,
  write('You are good in english and your marks are also good.'),nl,
  write('So, you can go for higher studies'),nl,
  ansi_format([bold,fg(green)], ' Suggestion: Masters in Science ~w', ['']).

career(ms) :-
  physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(tech),
  research_or_practical(research),
  given_exam(gre),
  cleared_gre_cutoff(yes),
  cgpa_more_than_9(yes),
  write('You seems to be interested in research.'),nl,
  write('Your marks are good but you need to work on your english.'),nl,
  write('Still, you can go for higher studies'),nl,
  ansi_format([bold,fg(green)], ' Suggestion: Masters in Science ~w', ['']).


career(ms) :-
  physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(tech),
  research_or_practical(research),
  given_exam(gre),
  cleared_gre_cutoff(yes),
  cgpa_more_than_9(no),
  ansi_format([bold,fg(green)], ' Sorry, you do not have enough CGPA to do MS. ~w', ['']),
  nl,
  write('You can still apply for some of the colleges for MS'),nl,
  write(' It would be better if you try finding other career options. ').



career(mtech) :-
  physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(tech),
  research_or_practical(research),
  given_exam(gate),
  cleared_gate_cutoff(yes),
  cgpa_more_than_7(yes),
  write(' '),
  write('You seems to be interested in research.'),nl,
  write('You have cleared gate cutoff and you are interested in technology.'),nl,
  write('So, you can go for higher studies'),nl,
  ansi_format([bold,fg(green)], ' Suggestion: Masters in Technology. ~w', ['']).


career(mtech) :-
  physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(tech),
  research_or_practical(research),
  given_exam(gate),
  cleared_gate_cutoff(yes),
  cgpa_more_than_7(no),
  write('You seems to be interested in research.'),nl,
  write('You have cleared gate cutoff and but your CGPA is less than 7.'),nl,
  write('Still, you can go for higher studies'),nl,
  ansi_format([bold,fg(green)], ' Suggestion: Masters in Technology. ~w', ['']).


career(mba) :-
  physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(tech), 
  given_exam(cat),
  cleared_cat_cutoff(yes),
  cgpa_more_than_9(yes),
  business_oriented(yes),
  good_in_interacting(yes),
  management_skills(yes),
  write('You seems to be interested in business.'),nl,
  write('You have cleared CAT cutoff and you have good management skills.'),nl,
  write('You can go for higher studies'),nl,
  ansi_format([bold,fg(green)], ' Suggestion: Masters in Business Administration. ~w', ['']).
  


career(mba) :-
  physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(tech), 
  given_exam(cat),
  cleared_cat_cutoff(yes),
  cgpa_more_than_9(yes),
  business_oriented(yes),
  good_in_interacting(yes),
  management_skills(no),
  write('You seems to be interested in business.'),nl,
  write('You have cleared CAT cutoff with good CGPA but you need to improve your management skills.'),nl,
  write('Still, You can go for higher studies'),nl,
  ansi_format([bold,fg(green)], ' Suggestion: Masters in Business Administration. ~w', ['']).

career(mba) :-
  physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(tech), 
  given_exam(cat),
  cleared_cat_cutoff(yes),
  cgpa_more_than_9(yes),
  business_oriented(yes),
  good_in_interacting(no),
  write('You seems to be interested in business.'),nl,
  write('You have cleared CAT cutoff with good CGPA but you need to improve your cummunication skills.'),nl,
  write('Still, You can go for higher studies'),nl,
  ansi_format([bold,fg(green)], ' Suggestion: Masters in Business Administration. ~w', ['']).


career(mba) :-
  physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(tech), 
  given_exam(cat),
  business_oriented(yes),
  cleared_cat_cutoff(yes),
  cgpa_more_than_9(no),
  write('You seems to be interested in business.'),nl,
  write('You have cleared CAT cutoff but you need to improve your cummunication skills as well as CGPA.'),nl,
  write('Still, You can go for higher studies'),nl,
  ansi_format([bold,fg(green)], ' Suggestion: Masters in Business Administration. ~w', ['']).


career(job) :-
  physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(tech), 
  given_exam(cat),
  cleared_cat_cutoff(yes),
  coding(yes),
  flexible_working_hour(yes),
  neophile(yes),
  write('You seems to be interested in coding and cleared CAT exam.'),nl,
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
  given_exam(cat),
  cleared_cat_cutoff(yes),
  coding(yes),
  flexible_working_hour(yes),
  neophile(no),
  write('You seems to be interested in coding.'),nl,
  write('You have also cleared CAT exam.'),nl,
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
  given_exam(cat),
  cleared_cat_cutoff(no),
  coding(yes),
  flexible_working_hour(yes),
  write('You seems to be interested in coding.'),nl,
  write('You have also given CAT exam.'),nl,
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
  given_exam(cat),
  cleared_cat_cutoff(yes),
  coding(yes),
  flexible_working_hour(yes),
  write('You seems to be interested in coding.'),nl,
  write('You have also given CAT exam.'),nl,
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
  research_or_practical(research),
  given_exam(gate),
  cleared_gate_cutoff(no),
  coding(yes),
  flexible_working_hour(yes),
  write('You seems to be interested in coding as well as research.'),nl,
  write('You have also given GATE exam.'),nl,
  write('So, you can go for an IT Job'),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(green)], ' 1. Software developer. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 2. Data Anayst. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 3. Technical researcher. ~w', ['']).


career(job) :-
 physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(tech),
  given_exam(gate),
  cleared_gate_cutoff(yes),
  coding(yes),
  flexible_working_hour(yes),
  write('You seems to be interested in coding.'),nl,
  write('You have also given GATE exam.'),nl,
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
  research_or_practical(research),
  given_exam(gre),
  cleared_gate_cutoff(yes),
  coding(yes),
  flexible_working_hour(yes),
  write('You seems to be interested in coding.'),nl,
  write('You have also given GATE exam.'),nl,
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
  research_or_practical(research),
  given_exam(gre),
  cleared_gre_cutoff(no),
  coding(yes),
  flexible_working_hour(yes),
  write('You seems to be interested in coding.'),nl,
  write('You have also given GRE exam.'),nl,
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
  coding(yes),
  flexible_working_hour(yes),
  write('You seems to be interested in coding and technology.'),nl,
  write('So, you can go for an IT Job'),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(green)], ' 1. Software developer. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 2. Data Anayst. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 4. System Designer. ~w', ['']).


career(job) :-
 physical_or_mental(mental),
  aptitute(no),
  tech_or_nontech(tech),
  coding(yes),
  flexible_working_hour(yes),
  write('You seems to be interested in coding.'),nl,
  write('You need to improve your aptitute though.'),nl,
  write('Still, you can go for an IT Job'),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(green)], ' 1. Software developer. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 2. Data Anayst. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 3. Technical researcher. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 4. System Designer. ~w', ['']).


career(job) :-
  physical_or_mental(mental),
  aptitute(no),
  tech_or_nontech(tech),
  coding(no),
  flexible_working_hour(yes),
  write('You seems not interested in coding.'),nl,
  write('You need to improve your aptitude also.'),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(green)], ' 1. Public Sector. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 2. Teaching profile. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 3. Take one year gap and try to explore new hobbies and interests. ~w', ['']).


career(job) :-
  physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(tech),
  flexible_working_hour(no),
  social_service(yes),
  teaching(yes),
  given_exam(none),
  write('You seems to be interested in teaching as well as you have technological knowledge.'),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(green)], ' 1. Teacher. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 2. Private tutor. ~w', ['']).

career(job) :-
  physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(tech),
  coding(yes),
  flexible_working_hour(no),
  social_service(yes),
  teaching(yes),
  given_exam(none),
  write('You seems to be interested in teaching as well as you have technological knowledge.'),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(green)], ' 1. Teacher. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 2. Private tutor. ~w', ['']).


career(job) :-
  physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(tech),
  coding(yes),
  flexible_working_hour(no),
  social_service(yes),
  teaching(no),
  given_exam(none),
  write('You like serving the society as well as you have coding knowledge.'),nl,
  write('But you do not like teaching.'),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(green)], ' 1. Public Sector Job. ~w', ['']).

career(job) :-
  physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(tech),
  coding(no),
  flexible_working_hour(no),
  social_service(yes),
  teaching(no),
  given_exam(none),
  write('You like serving the society as well as you have technological knowledge.'),nl,
  write('But you do not like teaching or coding .'),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(green)], ' 1. Public Sector Job. ~w', ['']).

career(job) :-
  physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(tech),
  coding(yes),
  flexible_working_hour(no),
  social_service(yes),
  teaching(yes),
  write('You seems to be interested in teaching as well as you have technological knowledge.'),nl,
  write('We are also good at coding.'),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(green)], ' 1. Teacher. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 2. Private tutor. ~w', ['']).


career(job) :-
  physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(tech),
  coding(no),
  flexible_working_hour(no),
  social_service(yes),
  teaching(yes),
  write('You seems to be interested in teaching as well as you have technological knowledge.'),nl,
  write('We are also good at coding.'),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(green)], ' 1. Teacher. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 2. Private tutor. ~w', ['']).


career(job) :-
  physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(tech),
  coding(yes),
  flexible_working_hour(no),
  social_service(yes),
  teaching(no),
  write('You like serving the society as well as you have technological knowledge.'),nl,
  write('We would suggest you following job options'),nl,
  write('But you do not like teaching.'),nl,
  ansi_format([bold,fg(green)], ' 1. Public Sector Job. ~w', ['']).

career(job) :-
  physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(tech),
  coding(no),
  flexible_working_hour(no),
  social_service(yes),
  teaching(no),
  write('You like serving the society as well as you have technological knowledge.'),nl,
  write('But you do not like teaching.'),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(green)], ' 1. Public Sector Job. ~w', ['']).

career(job) :-
  physical_or_mental(mental),
  aptitute(no),
  tech_or_nontech(tech),
  flexible_working_hour(no),
  social_service(yes),
  write('You like serving the society as well as you have technological knowledge.'),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(green)], ' 1. Teacher. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 2. Private tutor. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 3. Public Sector Job. ~w', ['']).

career(job) :-
  physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(tech),
  given_exam(cat),
  cleared_cat_cutoff(no),
  flexible_working_hour(no),
  social_service(yes),
  write('You like serving the society as well as you have technological knowledge.'),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(green)], ' 1. Teacher. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 2. Private tutor. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 3. Public Sector Job. ~w', ['']).


career(job) :-
  physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(tech),
  given_exam(gate),
  cleared_cat_cutoff(no),
  flexible_working_hour(no),
  social_service(yes),
  write('You like serving the society as well as you have technological knowledge.'),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(green)], ' 1. Teacher. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 2. Private tutor. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 3. Public Sector Job. ~w', ['']).

career(job) :-
  physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(tech),
  given_exam(gre),
  cleared_cat_cutoff(no),
  flexible_working_hour(no),
  social_service(yes),
  write('You like serving the society as well as you have technological knowledge.'),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(green)], ' 1. Teacher. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 2. Private tutor. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 3. Public Sector Job. ~w', ['']).

career(job) :-
  physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(tech),
  given_exam(gre),
  cleared_cat_cutoff(yes),
  flexible_working_hour(no),
  social_service(yes),
  write('You like serving the society as well as you have technological knowledge.'),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(green)], ' 1. Teacher. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 2. Private tutor. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 3. Public Sector Job. ~w', ['']).

career(job) :-
  physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(tech),
  given_exam(gate),
  cleared_cat_cutoff(yes),
  flexible_working_hour(no),
  social_service(yes),
  write('You like serving the society as well as you have technological knowledge.'),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(green)], ' 1. Teacher. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 2. Private tutor. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 3. Public Sector Job. ~w', ['']).

career(job) :-
  physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(tech),
  given_exam(cat),
  cleared_cat_cutoff(yes),
  flexible_working_hour(no),
  social_service(yes),
  write('You like serving the society as well as you have technological knowledge.'),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(green)], ' 1. Teacher. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 2. Private tutor. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 3. Public Sector Job. ~w', ['']).



career(job) :-
  physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(tech),
  given_exam(cat),
  cleared_cat_cutoff(no),
  flexible_working_hour(yes),
  coding(yes),
  social_service(yes),
  write('You like serving the society as well as you have technological knowledge.'),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(green)], ' 1. Teacher. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 2. Private tutor. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 3. Public Sector Job. ~w', ['']).


career(business) :-
  physical_or_mental(mental),
  aptitute(no),
  tech_or_nontech(nontech),   
  business_oriented(yes),
  good_in_interacting(yes),
  management_skills(yes),
  leadership(yes),
  creative_and_innovative(yes),
  risk_taker(yes),
  write('You are a non-technological person but you are a risk taker.'),nl,
  write('You are interested in business and you have good management skills and well as you are a good leadership.'),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(green)], ' 1. You can start your own business. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 2. Be an entrepreneaur. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 3. Join any business related company. ~w', ['']).


career(business) :-
  physical_or_mental(mental),
  aptitute(yes),
  tech_or_nontech(nontech),   
  business_oriented(yes),
  good_in_interacting(yes),
  management_skills(yes),
  leadership(yes),
  creative_and_innovative(yes),
  risk_taker(yes),
  write('You are a non-technological person but you are good in aptitute and you are a risk taker.'),nl,
  write('You are interested in business and you have good management skills and well as you are a good leadership.'),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(green)], ' 1. You can start your own business. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 2. Be an entrepreneaur. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 3. Join any business related company. ~w', ['']).

career(army) :-
  physical_or_mental(physical),
  leadership(yes),
  risk_taker(yes),
  adapt_to_critical_condition(yes),
  write('You seems to be physically fit.'),nl,
  write('You are a risk taker and can adapt to any situation.'),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(green)], ' 1. Join India Army Force. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 2. Join India Air Force. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 3. Join India Navy Force. ~w', ['']).


career(army) :-
  physical_or_mental(physical),
  leadership(no),
  risk_taker(yes),
  adapt_to_critical_condition(yes),
  write('You seems to be physically fit.'),nl,
  write('You are a risk taker and can adapt to any situation.'),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(green)], ' 1. Join India Army Force. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 2. Join India Air Force. ~w', ['']),nl,
  ansi_format([bold,fg(green)], ' 3. Join India Navy Force. ~w', ['']).



career(others) :-
  aptitute(yes),
  tech_or_nontech(tech),  
  social_service(no),
  traveller_nontraveller(nontraveller),
  creative_and_innovative(yes),
  write('You seems like a creative and innovative person with technical knowledge.'),nl,
  write('But you do not like travelling and wants to do something by staying at a place only'),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(magenta)], ' 1. Graphic Designer. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 2. Interior Designer. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 2. Artist. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 3. Fashion Designer.. ~w', ['']).



career(others) :-
  aptitute(yes),
  tech_or_nontech(nontech),  
  traveller_nontraveller(nontraveller),
  creative_and_innovative(yes),
  write('You seems like a creative and innovative person.'),nl,
  write('But you do not like travelling and wants to do something by staying at a place only'),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(magenta)], ' 2. Interior Designer. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 2. Artist. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 3. Fashion Designer.. ~w', ['']).


career(others) :-
  aptitute(yes),
  traveller_nontraveller(nontraveller),
  creative_and_innovative(no),
  write('You do not like travelling and wants to do something by staying at a place only'),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(magenta)], ' 2. Interior Designer. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 2. Artist. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 3. Fashion Designer.. ~w', ['']).

career(others) :-
  aptitute(no),
  tech_or_nontech(nontech),  
  business_oriented(no),
  traveller_nontraveller(nontraveller),
  creative_and_innovative(yes),
   write('You seems like a creative and innovative person.'),nl,
  write('But you do not like travelling and wants to do something by staying at a place only'),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(magenta)], ' 1. Graphic Designer. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 2. Interior Designer. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 2. Artist. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 3. Fashion Designer.. ~w', ['']).



career(others) :-
  aptitute(yes),
  tech_or_nontech(tech),  
  social_service(no),
  traveller_nontraveller(traveller),
  creative_and_innovative(yes),
  write('You seems like a creative and innovative person with technical knowledge.'),nl,
  write('You  like travelling a lot. '),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(magenta)], ' 1. Event Planner. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 2. Journalism. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 2. Photographer if you are interested in photography.. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 3. International Aid Woker.. ~w', ['']).


career(others) :-
  aptitute(yes),
  tech_or_nontech(tech),  
  social_service(no),
  traveller_nontraveller(traveller),
  creative_and_innovative(no),
  write('You seems like a creative and innovative person with technical knowledge.'),nl,
  write('You  like travelling a lot. '),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(magenta)], ' 1. Event Planner. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 2. Journalism. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 2. Photographer if you are interested in photography.. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 3. International Aid Woker.. ~w', ['']).

career(others) :-
  physical_or_mental(physical), 
  traveller_nontraveller(traveller),
  creative_and_innovative(yes),
  write('You seems like a creative and innovative person.'),nl,
  write('You  like travelling a lot. '),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(magenta)], ' 1. Event Planner. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 2. Journalism. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 2. Photographer if you are interested in photography.. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 3. International Aid Woker.. ~w', ['']).


career(others) :-
  aptitute(yes),
  tech_or_nontech(tech),  
  social_service(no),
  traveller_nontraveller(traveller),
  creative_and_innovative(yes),
  write('You seems like a creative and innovative person with technical knowledge.'),nl,
  write('You  like travelling a lot. '),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(magenta)], ' 1. Event Planner. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 2. Journalism. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 2. Photographer if you are interested in photography.. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 3. International Aid Woker.. ~w', ['']).

career(others) :-
  aptitute(yes),
  tech_or_nontech(nontech),  
  traveller_nontraveller(traveller),
  creative_and_innovative(yes),
  write('You seems like a creative and innovative person.'),nl,
  write('You  like travelling a lot. '),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(magenta)], ' 1. Event Planner. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 2. Journalism. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 2. Photographer if you are interested in photography.. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 3. International Aid Woker.. ~w', ['']).


career(others) :-
  aptitute(yes),
  tech_or_nontech(nontech),  
  traveller_nontraveller(traveller),
  creative_and_innovative(no),
  write('You seems like a creative and innovative person.'),nl,
  write('You  like travelling a lot. '),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(magenta)], ' 1. Event Planner. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 2. Journalism. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 2. Photographer if you are interested in photography.. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 3. International Aid Woker.. ~w', ['']).


career(others) :-
  aptitute(no),
  tech_or_nontech(nontech),  
  business_oriented(no),
  traveller_nontraveller(traveller),
  creative_and_innovative(yes),
  write('You seems like a creative and innovative person.'),nl,
  write('You  like travelling a lot. '),nl,
  write('We would suggest you following job options'),nl,
  ansi_format([bold,fg(magenta)], ' 1. Event Planner. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 2. Journalism. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 2. Photographer if you are interested in photography.. ~w', ['']),nl,
  ansi_format([bold,fg(magenta)], ' 3. International Aid Woker.. ~w', ['']).


career(others):-
 ansi_format([bold,fg(red)], 'Sorry, we are unable to help you. ~w', ['']),nl,
  write('You can take a break for this year or try to explore your new interestes.').


query(physical_or_mental) :-
  write('Do you like physical work or work which includes thinking and problem solving?'), nl.

query(teaching) :-
  write('Are you interested in teaching? '), nl.

query(aptitute) :-
  write('Are you good in aptitude? '), nl.

query(english) :-
  write('Can you speak English fluently? '), nl.

query(research_or_practical) :-
  write('Are you interested in doing research or interseted in practical implementation? '), nl.

query(tech_or_nontech) :-
  write('Are you a tech or non tech person? '), nl.

query(cgpa_more_than_9) :-
  write('Is your B.tech CGPA more than 9 ? '), nl.

query(given_exam) :-
  write('Which exam you cleared GRE/GATE/CAT/None ?'), nl.

query(cleared_gre_cutoff) :-
  write('Have you cleared cutoff marks for gre? '), nl.

query(cleared_gate_cutoff) :-
  write('Have you cleared cutoff marks for gate? '), nl.

query(cleared_cat_cutoff) :-
  write('Have you cleared cutoff marks for cat? '), nl.

query(cgpa_more_than_7) :-
  write('Is your CGPA more than 7 ? '), nl.


query(coding) :-
  write('Are you interested in coding? '), nl.

query(neophile) :-
  write('Are you interested in learning new technologies? '), nl.

query(flexible_working_hour) :-
  write('Are you comfortable in flexible working hour? '), nl.


query(social_service) :-
  write('Do you like serving our society ? '), nl.


query(business_oriented) :-
  write('Are you interested in business? '), nl.

query(good_in_interacting) :-
  write('Do you like interacting with people? '), nl.

query(management_skills) :-
  write('Do you have good management skill? '), nl.

query(leadership) :-
  write('Are you a good leader? '), nl.


query(creative_and_innovative) :-
  write('Are you a person of creative and innovative ideas? '), nl.

query(risk_taker) :-
  write('Are you willing to take risks? '), nl.

query(adapt_to_critical_condition) :-
  write('Are you comfortable in living in critical weather conditions? '), nl.


query(traveller_nontraveller) :-
  write('Do you like travelling ? '), nl.


reply(mental) :-
  write('Mental Work.').
reply(physical) :-
  write('Physical work.').

reply(research) :-
  write('Interested in research.').

reply(practical) :-
  write('Interested in practical implementation.').

reply(tech) :-
  write('Love new technologies.').

reply(nontech) :-
  write('Not a technical person.').

reply(gre) :-
  write('Given GRE.').

reply(gate) :-
  write('Given GATE.').

reply(cat) :-
  write('Given CAT.').

reply(none):-
  write('None').

reply(computer) :-
  write('Comfortable in working on a computer.').

reply(hands) :-
  write('Do not like working on a computer.').

reply(yes) :-
  write('Yes.').

reply(no) :-
  write('No.').

reply(nontraveller) :-
  write('Do not like travelling.').

reply(traveller) :-
  write('Like travelling.').


%Assigning answers cooresponding to each question

physical_or_mental(Ans) :-
  result(physical_or_mental, Ans).
physical_or_mental(Ans) :-
  \+ result(physical_or_mental, _),
  ques_ans_choice(physical_or_mental, Ans, [physical, mental]).

aptitute(Ans) :-
  result(aptitute, Ans).
aptitute(Ans) :-
  \+ result(aptitute, _),
  ques_ans_choice(aptitute, Ans, [yes, no]).



teaching(Ans) :-
  result(teaching, Ans).
teaching(Ans) :-
  \+ result(teaching, _),
  ques_ans_choice(teaching, Ans, [yes, no]).

english(Ans) :-
  result(english, Ans).
english(Ans) :-
  \+ result(english, _),
  ques_ans_choice(english, Ans, [yes, no]).

cgpa_more_than_9(Ans) :-
  result(cgpa_more_than_9, Ans).
cgpa_more_than_9(Ans) :-
  \+ result(cgpa_more_than_9, _),
  ques_ans_choice(cgpa_more_than_9, Ans, [yes, no]).

cgpa_more_than_7(Ans) :-
  result(cgpa_more_than_7, Ans).
cgpa_more_than_7(Ans) :-
  \+ result(cgpa_more_than_7, _),
  ques_ans_choice(cgpa_more_than_7, Ans, [yes, no]).

research_or_practical(Ans) :-
  result(research_or_practical, Ans).
research_or_practical(Ans) :-
  \+ result(research_or_practical, _),
  ques_ans_choice(research_or_practical, Ans, [research, practical]).

tech_or_nontech(Ans) :-
  result(tech_or_nontech, Ans).
tech_or_nontech(Ans) :-
  \+ result(tech_or_nontech, _),
  ques_ans_choice(tech_or_nontech, Ans, [tech, nontech]).


given_exam(Ans) :-
  result(given_exam, Ans).
given_exam(Ans) :-
  \+ result(given_exam, _),
  ques_ans_choice(given_exam, Ans, [gre, gate,cat,none]).

cleared_gre_cutoff(Ans) :-
  result(cleared_gre_cutoff, Ans).
cleared_gre_cutoff(Ans) :-
  \+ result(cleared_gre_cutoff, _),
  ques_ans_choice(cleared_gre_cutoff, Ans, [yes, no]).

cleared_gate_cutoff(Ans) :-
  result(cleared_gate_cutoff, Ans).
cleared_gate_cutoff(Ans) :-
  \+ result(cleared_gate_cutoff, _),
  ques_ans_choice(cleared_gate_cutoff, Ans, [yes, no]).

cleared_cat_cutoff(Ans) :-
  result(cleared_cat_cutoff, Ans).
cleared_cat_cutoff(Ans) :-
  \+ result(cleared_cat_cutoff, _),
  ques_ans_choice(cleared_cat_cutoff, Ans, [yes, no]).


coding(Ans) :-
  result(coding, Ans).
coding(Ans) :-
  \+ result(coding, _),
  ques_ans_choice(coding, Ans, [yes, no]).

business_oriented(Ans) :-
  result(business_oriented, Ans).
business_oriented(Ans) :-
  \+ result(business_oriented, _),
  ques_ans_choice(business_oriented, Ans, [yes, no]).

good_in_interacting(Ans) :-
  result(good_in_interacting, Ans).
good_in_interacting(Ans) :-
  \+ result(good_in_interacting, _),
  ques_ans_choice(good_in_interacting, Ans, [yes, no]).

management_skills(Ans) :-
  result(management_skills, Ans).
management_skills(Ans) :-
  \+ result(management_skills, _),
  ques_ans_choice(management_skills, Ans, [yes, no]).

neophile(Ans) :-
  result(neophile, Ans).
neophile(Ans) :-
  \+ result(neophile, _),
  ques_ans_choice(neophile, Ans, [yes, no]).

flexible_working_hour(Ans) :-
  result(flexible_working_hour, Ans).
flexible_working_hour(Ans) :-
  \+ result(flexible_working_hour, _),
  ques_ans_choice(flexible_working_hour, Ans, [yes, no]).

social_service(Ans) :-
  result(social_service, Ans).
social_service(Ans) :-
  \+ result(social_service, _),
  ques_ans_choice(social_service, Ans, [yes, no]).

leadership(Ans) :-
  result(leadership, Ans).
leadership(Ans) :-
  \+ result(leadership, _),
  ques_ans_choice(leadership, Ans, [yes, no]).


creative_and_innovative(Ans) :-
  result(creative_and_innovative, Ans).
creative_and_innovative(Ans) :-
  \+ result(creative_and_innovative, _),
  ques_ans_choice(creative_and_innovative, Ans, [yes, no]).

risk_taker(Ans) :-
  result(risk_taker, Ans).
risk_taker(Ans) :-
  \+ result(risk_taker, _),
  ques_ans_choice(risk_taker, Ans, [yes, no]).

adapt_to_critical_condition(Ans) :-
  result(adapt_to_critical_condition, Ans).
adapt_to_critical_condition(Ans) :-
  \+ result(adapt_to_critical_condition, _),
  ques_ans_choice(adapt_to_critical_condition, Ans, [yes, no]).

traveller_nontraveller(Ans) :-
  result(traveller_nontraveller, Ans).
traveller_nontraveller(Ans) :-
  \+ result(traveller_nontraveller, _),
  ques_ans_choice(traveller_nontraveller, Ans, [traveller, nontraveller]).


%Implemented backtracking and lists
% Takes list of choices and present it to the users in proper format
replies([], _).
replies([Head|Tail], Val) :-
  write(Val), write(' '), reply(Head), nl,
  NextVal is Val + 1,replies(Tail, NextVal).


%from given set of choice list, whatever user chooses is explored by explore rule
explore(1, [Head|_], Head).
explore(Val, [Head|Tail], FinalReply) :- Val > 1, NextVal is Val - 1,explore(NextVal, Tail, FinalReply).


% Main function to ask questions and get a reply from user and assert the result
ques_ans_choice(Quiz, Ans, Options) :-
  query(Quiz),
  replies(Options, 1),
  read(Val),
  explore(Val, Options, FinalReply),
  asserta(result(Quiz, FinalReply)),
  FinalReply = Ans.