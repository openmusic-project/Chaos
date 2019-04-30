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

(defpackage "ALEA" 
  (:use "COMMON-LISP" "OpenMusic"))


(om::add-lib-alias "OMChaos" "Chaos")