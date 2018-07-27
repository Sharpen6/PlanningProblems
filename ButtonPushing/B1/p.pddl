(define 
(problem Button-1)
(:domain Button-1)
(:goal (and (button-pressed b0 p1-1) (button-pressed b1 p1-2) (button-pressed b2 p1-3)))
(:init
	(and
    (agent-at a1 p1-1)
	(agent-at a2 p3-1)
	
	(adj p1-1 p1-2)
	(adj p1-2 p1-1)
	
	(adj p1-2 p1-3)
	(adj p1-3 p1-2)
	
	(green b0)
	(yellow b1)
	(green b2)

	(oneof (button-at b0 p1-1) (not(button-at b0 p1-1)))
	(oneof (button-at b1 p1-2) (not(button-at b1 p1-2)))
	(oneof (button-at b2 p1-3) (not(button-at b2 p1-3)))
	
	(same-agent a1 a1)
	(same-agent a2 a2)
	)
)
)
