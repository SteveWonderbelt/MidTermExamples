graph(G):-G=[[a,b],[b,c],[a,c]].
% This is a list of coordinates, which are lists too. A goes to B, b
% goes to C,and a also goes to C.
graph2(G):-G=[[a,b],[b,c],[a,c],[c,d],[d,a]].
graph3(G):-G=[[a,b],[b,c],[a,c],[c,d],[d,a],[a,e],[e,f]].
graph4(G):-G=[[a,b],[b,c],[a,c],[c,d],[d,a],[a,e],[e,f]].

dfs(Start,End,G,Path):- E=[Start,End],member(E,G),Path = [E].
dfs(Start,End,G,[E|Rest]):-member(E,G),[Start,Next]=E,dfs(Next,End,G,Rest).

% Base case is that we get a start and end node so we make a new
% connection between them and establish that that connection is
% somewhere in the graph, and if so tha'ts our path.
% The indcution case triggers when the beginning of the list of
% connecitons a member of the graph. Then we establish that there is
% some variable next that is attached to the start node, this is E. This
% same E must be a member of the overall graph. This is similar to the
% ancestor idea. There's no immediate conneciton from start to end but
% we may be able to find an indirect one. Then pass that intermediate
% node Next, the ending node, the graph, and the rest of the list minus
% that intermediate connection into the base case.

dfs2(Start,End,G,Path,0):-E=[Start,End],member(E,G),Path = [E].
dfs2(Start,End,G,[E|Rest],N):- N>0,Nm1 is N-1,member(E,G),[Start,Next]=E,dfs2(Next,End,G,Rest,Nm1).


% Base case: Given a start and end of the dfs, the start connects to end
% and therefore that connection is in the list of connections and is the
% connection path. Just one connection so N=0.
% In the next case we don't know if there are intermediate steps or not,
% so we make sure N is greater than 0, set Nm1 to one less than that,
% establish that the head of the path is in the list of connections, set
% the start-end connection, and call the base case.

plan(Start,End,G,Path,N):-dfs2(Start,End,G,Path,N).
plan(Start,End,G,Path,N):-Np1 is N+1, plan(Start,End,G,Path,Np1).


