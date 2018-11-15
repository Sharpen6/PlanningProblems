;;;;The tablemover domain
(define 
	(domain Tablemover-2)	
	(:types agent table room)

(:predicates
	(lifting ?a - agent ?t - table)
	(inroom ?t - table ?r - room)
	(in ?a - agent ?r - room)
	(connected ?r1 - room ?r2 - room)
	(available ?a - agent)	
	(same-agent ?a1 - agent ?a2 - agent)
)

(:constants 
	table1 table2 table3 - table
	a1 a2 a3 - agent	
	room1 room2 room3 room4 - room
)

(:action observe-table
	:parameters (?a - agent ?t - table ?i - room)
	:precondition (and (in ?a ?i))
	:observe (inroom ?t ?i) )

(:action move-agent
	:parameters (?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
	:effect (and (not (in ?a ?r1)) (in ?a ?r2)) )

(:action joint-move-table
	:parameters (?a1 - agent ?a2 - agent ?t - table ?r1 - room ?r2 - room)
	:precondition (and 	
			(lifting ?a1 ?t) (lifting ?a2 ?t)
			(in ?a1 ?r1) (in ?a2 ?r1)
			(not (same-agent ?a1 ?a2))
			(connected ?r1 ?r2))
	:effect (and 
		(not (in ?a1 ?r1))(in ?a1 ?r2)
		(not (in ?a2 ?r1))(in ?a2 ?r2)) )

(:action joint-lift-table	
	:parameters (?a1 - agent ?a2 - agent ?t - table ?r1 - room)
	:precondition (and 
			(available ?a1) (in ?a1 ?r1) 
			(available ?a2) (in ?a2 ?r1)
			(not (same-agent ?a1 ?a2))
			(inroom ?t ?r1))
	:effect	(and 	(lifting ?a1 ?t)(not (available ?a1))
			(lifting ?a2 ?t)(not (available ?a2))
			(not (inroom ?t ?r1))) )

(:action joint-drop-table
	:parameters (?a1 - agent ?a2 - agent ?t - table ?r1 - room)
	:precondition (and
			(in ?a1 ?r1)(in ?a2 ?r1)
			(lifting ?a1 ?t) (lifting ?a2 ?t)
			(not (same-agent ?a1 ?a2)))
	:effect (and (not(lifting ?a1 ?t))(not(lifting ?a2 ?t))
			(inroom ?t ?r1)(available ?a1)
			(available ?a2)) )
)
