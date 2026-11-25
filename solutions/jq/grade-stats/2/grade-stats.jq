def letter_grade:
  . as $score | [60, 70, 80, 90] | map($score < .) | index(true) // -1 | ["F", "D", "C", "B", "A"][.]
;

def count_letter_grades:
  reduce .[] as $score ({A: 0, B: 0, C: 0, D: 0, F: 0}; .[$score | letter_grade] += 1)
;
