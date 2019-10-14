%model(model_name, num_seats).
%This is a KB that stores the info for various cars and their seasts.
%Prolog doesn't know what these things mean, just that the predicate "The __ model has __ seats, whatever model and seat is"
model(elantra,5).
model(acadia,7).
model(civic,4).
%Now when you ask prolog if Elanta has 5 seats, it'll say yes.
% Can also give empty params and get all elements in the KB for the
% model predicate

%vehicle(ID,model,location)
vehicle(1253,acadia,lugoff).
vehicle(4164,wrangler,charleston).
vehicle(5312,civic,columbia).
vehicle(5839,acadia,columbia).
vehicle(2198,acadia,columbia).

% Here you're telling prolog that vehicle 1353 is a model X and is in Y.
% Also that the car in lugoff is an acadia and has model 1253.

%State(ID,rented).
state(4164,y).
state(5312,n).
state(5839,n).
state(2198,y).

% The model 4164 is rented while model 2198 is too. Also, the models
% that are rented are the 4164 and 2198

%location(loc_name).
location(columbia).
location(lugoff).
location(charleston).

%Columbia, lugoff, and charleston are all locations.
doll(d1). doll(d2). doll(d3). doll(d4).
doll(d5). doll(d6). doll(d7). doll(d8).

%d1-d6 are are all dolls, whatever that is.

smaller(d1,d2). smaller(d5,d6).
smaller(d2,d3). smaller(d6,d7).
smaller(d3,d4). smaller(d7,d8).
smaller(d4,d5).