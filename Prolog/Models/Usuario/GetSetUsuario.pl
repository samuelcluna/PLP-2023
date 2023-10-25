:- module(getSetUsuario, [getUsuarioNome/2, getUsuarioSenha/2, getUsuarioByMatricula/2 ]).

:- use_module('../../Repository/usuarioRepository.pl').
:- use_module('../../Data/data.pl').
:- use_module('../../Utils/conversors.pl').

getUsuarioByMatricula(Matricula, Usuario) :-
    getByMatricula(Matricula, Usuario).

getUsuarioNome(Matricula, Nome) :- 
    getByMatricula(Matricula, Usuario),
    Resultado = usuario(_, Nome, _, _).

getUsuarioSenha(Matricula, Senha) :- 
    getByMatricula(Matricula, Usuario),
    Resultado = usuario(_, _, _, Senha).