;============================================================================
; OM-Chaos
; Dynamic systems library for OM
;============================================================================
;
;   This program is free software. For information on usage 
;   and redistribution, see the "LICENSE" file in this distribution.
;
;   This program is distributed in the hope that it will be useful,
;   but WITHOUT ANY WARRANTY; without even the implied warranty of
;   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
;
;============================================================================
 
(in-package :om)

;--------------------------------------------------
;Load files 
;--------------------------------------------------

(mapc #'om::compile&load 
      (list
       (om::om-relative-path '("sources") "package")
       (om::om-relative-path '("sources") "orbitals")
       (om::om-relative-path '("sources") "ifs")
       (om::om-relative-path '("sources") "fractus")
       ))

;--------------------------------------------------
;Fill package 
;--------------------------------------------------

(om::set-lib-release 1.4)

(om::fill-library 
 '(("orbitals" nil nil (alea::Verhulst alea::Verhulst2 
                        alea::kaosn alea::kaosn1 
                        alea::baker1 alea::baker2 alea::lorentz alea::navier-stokes 
                        alea::stein alea::stein1 alea::henon alea::henon-heilles 
                        alea::torus alea::rossler alea::ginger alea::ginger2) nil)
   ("IFS" nil nil (alea::ifs-lib alea::IFSx alea::make-w alea::app-W-trans) nil)
   ("fractus" nil nil (alea::midpoint1 alea::midpoint2 alea::fract-gen1) nil)
   ("UTILS" nil nil (alea::distance alea::angle alea::choixaux) nil)
   ))



