(define (get_Paskal_triangle_value row column)
  (cond (
         (and (= row 0) (= column 0)) 1
                                      )
        (else (get_parent row column)        
              )
        )
  )
(define (get_parent row column)
  (cond (
         (or (= row 0) (= column 0)) 
         1
         )
        (else
         (+
          (get_parent (- row 1) column)
          (get_parent row (- column 1))
          )
         )  
        )
  )


(get_Paskal_triangle_value 3 2)
