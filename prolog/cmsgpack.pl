/*  File:    cmsgpack.pl
    Author:  Roy Ratcliffe
    Created: Jan 19 2022
    Purpose: C-Based Message Pack for SWI-Prolog
*/

:- module(cmsgpack,
          [ mp_pack/2,
            mp_unpack/2
          ]).
:- use_foreign_library(foreign(cmsgpack)).

%!  mp_pack(Term, String) is det.

%!  mp_unpack(String, Term) is semidet.
