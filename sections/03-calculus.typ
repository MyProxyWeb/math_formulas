#import "../utils/table.typ": table_with_sn

= Calculas

=== Derivatives

#table_with_sn(
  ([ $ f( x ) $ ], [ $ f'( x ) $ ]),
  (
    ($ c $, $ 0 $),
    ($ x^n $, $ n x^( n - 1 ) $),
    ($ e^x $, $ e^x $),
    ($ a^x $, $ a^x ln( a ) $),

    ($ ln( x ) $, $ 1 / x $),
    ($ log_a( x ) $, $ 1 / ( x ln( a ) ) $),

    ($ sin( x ) $, $ cos( x ) $),
    ($ cos( x ) $, $ - sin( x ) $),
    ($ tan( x ) $, $ sec( x )^2 $),
    ($ cot( x ) $, $ - csc( x )^2 $),
    ($ sec( x ) $, $ sec( x ) tan( x ) $),
    ($ csc( x ) $, $ - csc( x ) cot( x ) $),

    ($ sin^(-1)( x ) $, $ 1 / sqrt( 1 - x^2 ) $),
    ($ cos^(-1)( x ) $, $ - 1 / sqrt( 1 - x^2 ) $),
    ($ tan^(-1)( x ) $, $ 1 / ( 1 + x^2 ) $),
    ($ cot^(-1)( x ) $, $ - 1 / ( 1 + x^2 ) $),
    ($ sec^(-1)( x ) $, $ 1 / ( abs( x ) sqrt( x^2 - 1 ) ) $),
    ($ csc^(-1)( x ) $, $ - 1 / ( abs( x ) sqrt( x^2 - 1 ) ) $),

    ($ sinh( x ) $, $ cosh( x ) $),
    ($ cosh( x ) $, $ sinh( x ) $),
    ($ tanh( x ) $, $ sech( x )^2 $),
    ($ coth( x ) $, $ - csch( x )^2 $),
    ($ sech( x ) $, $ - sech( x ) tanh( x ) $),
    ($ csch( x ) $, $ - csch( x ) coth( x ) $),

    ($ sinh^(-1)( x ) $, $ 1 / sqrt( x^2 + 1 ) $),
    ($ cosh^(-1)( x ) $, $ 1 / ( sqrt( x - 1 ) sqrt( x + 1 ) ) $),
    ($ tanh^(-1)( x ) $, $ 1 / ( 1 - x^2 ) $),
    ($ coth^(-1)( x ) $, $ 1 / ( 1 - x^2 ) $),
    ($ sech^(-1)( x ) $, $ - 1 / ( x sqrt( 1 - x^2 ) ) $),
    ($ csch^(-1)( x ) $, $ - 1 / ( abs( x ) sqrt( 1 + x^2 ) ) $),


    ($ f( x ) g( x ) $, $ f'( x ) g( x ) + f( x ) g'( x ) $),

    ($ f( g( x ) ) $, $ f'( g( x ) ) g'( x ) $)
  )
)

=== Integral

#table_with_sn(
  ([ $ f( x ) $ ], [ $ ∫ f( x ) d x $ ]),
  (
    ($ c $, $ c x + C $),
    ($ x^n $, $ x^( n + 1 ) / ( n + 1 ) + C $),
    ($ x^-1 $, $ ln( abs( x ) ) + C $),
    ($ e^x $, $ e^x + C $),
    ($ a^x $, $ a^x / ln( a ) + C $),

    ($ ln( x ) $, $ x ln( x ) - x + C $),
    ($ log_a( x ) $, $ x log_a( x ) - x / ln( a ) + C $),

    ($ sin( x ) $, $ - cos( x ) + C $),
    ($ cos( x ) $, $ sin( x ) + C $),
    ($ tan( x ) $, $ - ln( abs( cos( x ) ) ) + C $),
    ($ cot( x ) $, $ ln( abs( sin( x ) ) ) + C $),
    ($ sec( x ) $, $ ln( abs( sec( x ) + tan( x ) ) ) + C $),
    ($ csc( x ) $, $ - ln( abs( csc( x ) + cot( x ) ) ) + C $),

    ($ sec( x )^2 $, $ tan( x ) + C $),
    ($ csc( x )^2 $, $ - cot( x ) + C $),
    ($ sec( x ) tan( x ) $, $ sec( x ) + C $),
    ($ csc( x ) cot( x ) $, $ - csc( x ) + C $),

    ($ sin^(-1)( x ) $, $ x sin^(-1)( x ) + sqrt( 1 - x^2 ) + C $),
    ($ cos^(-1)( x ) $, $ x cos^(-1)( x ) - sqrt( 1 - x^2 ) + C $),
    ($ tan^(-1)( x ) $, $ x tan^(-1)( x ) - ln( 1 + x^2 ) / 2 + C $),

    ($ sinh( x ) $, $ cosh( x ) + C $),
    ($ cosh( x ) $, $ sinh( x ) + C $),
    ($ tanh( x ) $, $ ln( cosh( x ) ) + C $),
    ($ coth( x ) $, $ ln( abs( sinh( x ) ) ) + C $),
    ($ sech( x ) $, $ arctan( sinh( x ) ) + C $),
    ($ csch( x ) $, $ ln( abs( tanh( x / 2 ) ) ) + C $),

    ($ sinh^(-1)( x ) $, $ x sinh^(-1)( x ) - sqrt( x^2 + 1 ) + C $),
    ($ cosh^(-1)( x ) $, $ x cosh^(-1)( x ) - sqrt( x - 1 ) sqrt( x + 1 ) + C $),
    ($ tanh^(-1)( x ) $, $ x tanh^(-1)( x ) + ln( 1 - x^2 ) / 2 + C $),

    ($ f'( x ) / f( x ) $, $ ln( abs( f( x ) ) ) + C $)
  )
)

=== Vector Calculus 

#table_with_sn(
  ([ $ "Quantity" $ ], [ $ "Formula" $ ]),
   (
    ($ "Gradient of f" $, $ nabla f = ( ( partial f ) / ( partial x ) , ( partial f ) / ( partial y ) , ( partial f ) / ( partial z ) ) $),
    ($ "Divergence of F" $, $ nabla . F = ( partial F_x ) / ( partial x ) + ( partial F_y ) / ( partial y ) + ( partial F_z ) / ( partial z ) $),
    ($ "Curl of F" $, $ nabla x F = ( ( partial F_z ) / ( partial y ) - ( partial F_y ) / ( partial z ) , ( partial F_x ) / ( partial z ) - ( partial F_z ) / ( partial x ) , ( partial F_y ) / ( partial x ) - ( partial F_x ) / ( partial y ) ) $),
    ($ "Laplacian of f" $, $ nabla^2 f = ( partial^2 f ) / ( partial x^2 ) + ( partial^2 f ) / ( partial y^2 ) + ( partial^2 f ) / ( partial z^2 ) $),
    ($ "Directional Derivative of f in direction u" $, $ D_u f = nabla f . u $),
    ($ "Line Integral of F along C" $, $ integral.cont_C F . d r $),
    ($ "Surface Integral of F over S" $, $ integral.surf_S F . d S $),
    ($ "Surface Integral of f over S" $, $ integral.surf_S f d S $),
    ($ "Green's Theorem" $, $ integral.cont_C F . d r = integral.double_D ( ( partial F_y ) / ( partial x ) - ( partial F_x ) / ( partial y ) ) d A $),
    ($ "Stokes' Theorem" $, $ integral.cont_C F . d r = integral.surf_S ( nabla x F ) . n d S $),
    ($ "Divergence Theorem" $, $ integral.surf_S F . n d S = integral.vol_V nabla . F d V $),
    ($ "Curl of Gradient" $, $ nabla x ( nabla f ) = 0 $),
    ($ "Divergence of Curl" $, $ nabla . ( nabla x F ) = 0 $),
    ($ "Laplacian of Vector Field" $, $ nabla^2 F = ( nabla^2 F_x , nabla^2 F_y , nabla^2 F_z ) $)
  )
  ))

  #table_with_sn(
  ([ "Formula" ], [ "Expression" ]),
  (
    ($ "Euler's Theorem for Homogeneous Functions" $, $ x_1 ( partial f ) / ( partial x_1 ) + x_2 ( partial f ) / ( partial x_2 ) + … + x_n ( partial f ) / ( partial x_n ) = n f $),
    ($ "Taylor Series of e^x around 0" $, $ e^x = 1 + x + x^2 / 2! + x^3 / 3! + … $),
    ($ "Taylor Series of sin(x) around 0" $, $ sin( x ) = x - x^3 / 3! + x^5 / 5! - x^7 / 7! + … $),
    ($ "Taylor Series of cos(x) around 0" $, $ cos( x ) = 1 - x^2 / 2! + x^4 / 4! - x^6 / 6! + … $),
    ($ "Taylor Series of ln(1+x) around 0" $, $ ln( 1 + x ) = x - x^2 / 2 + x^3 / 3 - x^4 / 4 + … , |x| < 1 $),
    ($ "Taylor Series of (1+x)^α around 0" $, $ ( 1 + x )^α = 1 + α x + α ( α - 1 ) x^2 / 2! + α ( α - 1 ) ( α - 2 ) x^3 / 3! + … $),
    ($ "Taylor Series of arctan(x) around 0" $, $ arctan( x ) = x - x^3 / 3 + x^5 / 5 - x^7 / 7 + … , |x| ≤ 1 $)
  )
)
