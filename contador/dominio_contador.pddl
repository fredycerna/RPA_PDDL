; Dominio de ejemplo para mostrar como contar objetos
; Ilustra tambien el uso de los tipos
(define (domain contar)
    (:requirements :typing :equality :fluents)
    ; Hay que declarar los tipos
    (:types reloj sonido)
    (:functions
        (cuenta ?r - reloj)
    )  
    (:predicates
        (parar-reloj)
       (vreloj ?r - reloj ?s - sonido)
       (siguiente ?s1 - sonido ?s2 - sonido) ; El valor v2 es el siguiente al valor v1
    )
    (:action tic-tac
    ; Anyade una unidad al contador
        :parameters (?r - reloj
                     ?s1 ?s2 - sonido
        )
        :precondition (and 
            (vreloj ?r ?s1) 
            (siguiente ?s1 ?s2))
        :effect (and 
           (vreloj ?r ?s2)
           (not (vreloj ?r ?s1) )
           (increase (cuenta ?r) 1)
        )
    )    
    (:action parar
    ; Anyade una unidad al contador
        :parameters (?r - reloj )
        :precondition (and 
            (= (cuenta ?r) 7) 
        )
        :effect (and 
           (parar-reloj)
        )
    )   
 
)