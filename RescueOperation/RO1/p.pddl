(define 
(problem hsd-2)
(:domain hsd)
(:goal (and 
(rescue p1) 
(rescue p2)
))
(:init
	(and
	(in a1 loc3)
	(in a2 loc3)
	(in a3 loc3)
	(underneath p1 pillar1)	
	(underneath p2 pillar2)
	
	(oneof 
		(lying pillar1 loc3) 
		(lying pillar1 loc2))
	(oneof 
		(lying pillar2 loc3) 
		(lying pillar2 loc1))
    	(enable-patient p1 pillar1)
	(same-agent a1 a1)
	(same-agent a2 a2)
	(same-agent a3 a3)
	(not (same-agent a1 a2))
	(not (same-agent a2 a1))
	(not (same-agent a1 a3))
	(not (same-agent a3 a1))
	(not (same-agent a3 a2))
	(not (same-agent a2 a3))
	)
) )
