#import "../utils/table.typ": table_with_sn

= Set

+ $A union A = A$
+ $A inter A = A$
+ $A union Phi = A $
+ $A inter U = A$
+ $A union B = B union A$
+ $ A inter B = B inter A$
+ $ A Delta B = B Delta A$
+ $A - B != B -A$
+ $A times B != B times A $
+ $(A union B) union C = A union (B union C )$
+ $A inter (B inter C) = (A inter B) inter C$
+ $(A union B)prime = A prime inter B prime$
+ $(A inter B)prime = A prime union B prime$
+ $ A - (B inter C) = (A-B)union (A-C)$
+ $A-(B union C)=(A-B)inter (A-C)$
+ $A - B = A union B prime$
+ $B -A = B inter A prime$
+ $A inter(B-C) = (A inter B) - (A inter C)$
+ $A inter (B Delta C) = (A inter B) Delta (A inter C)$
+ $A union (B inter C) = (A union B) inter (A inter C)$
+ $ A inter (B union C) = (A inter B) union (A inter C)$
+ $ A times (B union C) = (A times B) union (A times C)$
+ $ A times (B inter C) = (A times B) inter (A times C)$
+ $ A times (B-C)=(A times B)-(A times C)$

=== Table (Domain and Range)

#table_with_sn(
  ([Function $f(x)$], [Range], [Domain]),
  (
    ([$y=sin x $],$[-1,1]$,$RR$),
    ($y=cos x $,$[-1,1]$,$RR$),
    ($y=tan x $,$RR$,$RR-(2n+1)pi/2$),
    ($y=cot x $,$RR$,$RR-n pi$),
    ($y=sec x $,$(-infinity,-1]union[1,infinity)$,$RR-(2n+1)pi/2$),
    ($y=csc x $,$(-infinity,-1]union[1,infinity)$,$RR-n pi$),
    ($y=a^x$,$[0,infinity)$,$RR$),
    ($y=log x $,$RR$,$[0,infinity)$),
    ($y=abs x $,$[0,infinity)$,$RR$),
    

    
  ),
)
