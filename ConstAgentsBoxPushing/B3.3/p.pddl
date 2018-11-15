(define 
(problem Box-3)
(:domain Box-3)
(:goal (and (box-at b0 p1-2) (box-at b1 p3-2)))
(:init
	(and
    (agent-at a1 p1-1)
	(agent-at a2 p3-1)
	
	(adj p1-1 p1-2)
	(adj p2-1 p2-2)
	(adj p3-1 p3-2)
	(adj p1-2 p1-1)
	(adj p2-2 p2-1)
	(adj p3-2 p3-1)
	
	(adj p1-1 p2-1)
	(adj p2-1 p3-1)
	
	(adj p1-2 p2-2)
	(adj p2-2 p3-2)
	
	(adj p2-1 p1-1)
	(adj p3-1 p2-1)
	
	(adj p2-2 p1-2)
	(adj p3-2 p2-2)
	
	(not (heavy b0))
	(not (heavy b1))
	(oneof (box-at b0 p1-1) (box-at b0 p1-2))
	(oneof (box-at b1 p3-1) (box-at b1 p3-2))
	)
)
)
