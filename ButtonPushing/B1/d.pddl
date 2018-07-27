(define 
(domain Button-1)
(:types POS AGENT BUTTON)
(:constants
	 p1-1 p1-2 p1-3 - pos
	 b0 b1 b2 - button
	 a1 a2 - agent
	)

(:predicates
	(adj ?i ?j - pos)
	(agent-at ?a - agent ?i - pos)
	(button-at ?b - button ?i - pos)
	(button-pressed ?b)
	(red ?b - button)
	(same-agent ?a1 - agent ?a2 - agent)
)
(:action move
	:parameters (?start - pos ?end - pos ?a - agent)
	:precondition (and (adj ?start ?end) (agent-at ?a ?start))
	:effect (and (not (agent-at ?a ?start)) (agent-at ?a ?end))
)

(:action press-alone
	:parameters (?i - pos ?b - button ?a - agent)
	:precondition (and (agent-at ?a ?i) (button-at ?b ?i) (green ?b))
	:effect (button-pressed ?b)
)

(:action press-together
	:parameters (?i - pos ?b - button ?a1 - agent ?a2 - agent)
	:precondition (and (agent-at ?a1 ?i) (agent-at ?a2 ?i) (button-at ?b ?i) (yellow ?b) (not (same-agent ?a1 ?a2)))
	:effect (button-pressed ?b)
)

(:action observe-button
	:parameters (?i - pos ?a - agent ?b - box)
	:precondition (and (agent-at ?a ?i))
	:observe (button-at ?b ?i)
)
)