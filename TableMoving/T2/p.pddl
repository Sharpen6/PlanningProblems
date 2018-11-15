(define 
(problem Table-2)
(:domain Tablemover-2)
(:goal (and 
(inroom table1 room4) 
(inroom table2 room1)
(inroom table3 room2)
))
(:init 
	(and
        (connected room1 room2)	
	(connected room2 room1)
	(connected room3 room2)
	(connected room2 room3)
	(connected room3 room4)
	(connected room4 room3)
	(in a1 room1)
	(in a2 room3)	
	(in a3 room1)
	(available a1)
	(available a2)
	(available a3)
	(oneof 
		(inroom table1 room3) 
		(inroom table1 room4)
	)
	(oneof 
		(inroom table2 room2) 
		(inroom table2 room1)
	)
	(oneof 
		(inroom table3 room1) 
		(inroom table3 room2)
	)
	(same-agent a1 a1)
	(same-agent a2 a2)
	(same-agent a3 a3)
	(not (same-agent a1 a2))
	(not (same-agent a2 a1))
	(not (same-agent a1 a3))
	(not (same-agent a3 a1))
	(not (same-agent a3 a2))
	(not (same-agent a2 a3))
	)) 
)