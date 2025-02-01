(define (problem contar_10)
 (:domain contar)

 (:objects 
    r0 - reloj
    tic tac - sonido
    )
 (:init
   ; Inicio
    (vreloj r0 tic)
 ; Contadores
    (= (cuenta r0) 0)
 ; Numeros
    (siguiente tic tac)
    (siguiente tac tic)
 )
 (:goal (and 
    (parar-reloj)
    )
 )
)