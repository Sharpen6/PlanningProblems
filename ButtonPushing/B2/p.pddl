(define 
(problem Button-2)
(:domain Button-2)
(:goal (and (Button-pushed b0) (Button-pushed b1) (Button-pushed b2)))
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
	
	(adj p2-1 p1-1)
	(adj p3-1 p2-1)
	
	(green b0)
	(yellow b1)
	(yellow b2)
	
	(oneof (Button-at b0 p1-1) (Button-pushed b0))
	(oneof (Button-at b1 p2-1) (Button-pushed b1))
	(oneof (Button-at b2 p3-1) (Button-pushed b2))
	
	(same-agent a1 a1)
	(same-agent a2 a2)
	(not (same-agent a1 a2))
	(not (same-agent a2 a1))
	)
)
)
