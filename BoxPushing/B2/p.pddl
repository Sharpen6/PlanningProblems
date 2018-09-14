(define 
(problem Box-2)
(:domain Box-2)
(:goal (and (box-at b0 p1-2)))
(:init
	(and
    (agent-at a1 p1-1)
	(agent-at a2 p1-1)
	
	(adj p1-1 p1-2)
	(adj p1-2 p1-1)
	
	(heavy b0)
	(oneof (box-at b0 p1-1) (box-at b0 p1-2))

	(same-agent a1 a1)
	(same-agent a2 a2)
	(not (same-agent a1 a2))
	(not (same-agent a2 a1))
	)
)
)
