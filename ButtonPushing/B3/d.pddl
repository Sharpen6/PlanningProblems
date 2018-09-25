(define 
(domain Button-3)
(:types POS AGENT Button PUSH)
(:constants
	 p1-1 p1-2 p2-1 p2-2 - pos
	 b0 b1 - Button
	 a1 a2 - agent
	)

(:predicates
	(adj ?i ?j - pos)
	(agent-at ?a - agent ?i - pos)
	(Button-at ?b - Button ?i - pos)
	(Button-pushed ?b - Button)
	(green ?b - Button)
	(yellow ?b - Button)
	(same-agent ?a1 - agent ?a2 - agent)
)
(:action move
	:parameters (?start - pos ?end - pos ?a - agent)
	:precondition (and (adj ?start ?end) (agent-at ?a ?start))
	:effect (and (not (agent-at ?a ?start)) (agent-at ?a ?end))
)

(:action push
	:parameters (?start - pos ?b - Button ?a - agent)
	:precondition (and (agent-at ?a ?start) (Button-at ?b ?start) (green ?b))
	:effect (and (not (Button-at ?b ?start)) (Button-pushed ?b))
)

(:action joint-push
	:parameters (?start - pos ?b - Button ?a1 - agent ?a2 - agent)
	:precondition (and (agent-at ?a1 ?start) (agent-at ?a2 ?start) (Button-at ?b ?start) (yellow ?b) (not (same-agent ?a1 ?a2)))
	:effect (and (not (Button-at ?b ?start)) (Button-pushed ?b))
)


(:action observe-Button
	:parameters (?i - pos ?a - agent ?b - Button)
	:precondition (and (agent-at ?a ?i))
	:observe (Button-at ?b ?i)
)

)