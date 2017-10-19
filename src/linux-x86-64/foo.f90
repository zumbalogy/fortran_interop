FUNCTION mult(a, b) BIND(C, name='foomult')
    INTEGER,VALUE :: a,b
    INTEGER :: mult

    mult = a * b
END FUNCTION mult
