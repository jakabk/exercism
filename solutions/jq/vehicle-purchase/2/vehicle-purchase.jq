def needs_license:
  [.] | inside(["car", "truck"])
;

def choose_vehicle:
  "\(sort | first) is clearly the better choice."
;

def resell_price:
  .original_price * 
     if .age < 3 then .8
     elif .age <= 10 then .7
     else .5
     end
;
