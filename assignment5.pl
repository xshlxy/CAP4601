% Financial Advisor Expert System

% Facts
savings(22000).
income(25000).
dependents(3).

% Rules
advice(Savings, Income, Dependents) :-
    Savings < 10000,
    write('Advice: Consider saving more for emergencies.').

advice(Savings, Income, Dependents) :-
    Savings >= 10000, Savings < 50000,
    Dependents > 0,
    write('Advice: You are in a moderate position. Consider investments for your future.').

advice(Savings, Income, Dependents) :-
    Savings >= 50000,
    Dependents > 0,
    write('Advice: You are financially stable. Consider maximizing your investments and savings.').

advice(Savings, Income, Dependents) :-
    Savings >= 50000,
    Dependents = 0,
    write('Advice: You are financially secure. Consider long-term investments and retirement plans.').

% Entry point for financial advice
financial_advice :-
    savings(Savings),
    income(Income),
    dependents(Dependents),
    write('Financial Situation:'), nl,
    write('Savings: $'), write(Savings), nl,
    write('Income: $'), write(Income), nl,
    write('Dependents: '), write(Dependents), nl,
    advice(Savings, Income, Dependents).
