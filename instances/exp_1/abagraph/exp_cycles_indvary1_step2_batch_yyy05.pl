generation_settings([30,15,30,15,20,[2,5],[0,6],[0,6]]).
% number of sentences (input):    30
% number of assumptions (input):  15
% number of sentences:            30
% number of assumptions:          15
% number of rule heads:           20
% number of rules per head:       [2,5]
% number of sentences per body:   [0,6]
% number of assumptions per body: [0,6]

myAsm(a1).
myAsm(b1).
myAsm(c1).
myAsm(d1).
myAsm(e1).
myAsm(f1).
myAsm(a2).
myAsm(b2).
myAsm(c2).
myAsm(d2).
myAsm(e2).
myAsm(f2).
myAsm(a3).
myAsm(b3).
myAsm(c3).

contrary(a1, c1).
contrary(a2, z1).
contrary(a3, x1).
contrary(b1, w1).
contrary(b2, f2).
contrary(b3, w1).
contrary(c1, p2).
contrary(c2, y1).
contrary(c3, q1).
contrary(d1, s1).
contrary(d2, p1).
contrary(e1, u1).
contrary(e2, f1).
contrary(f1, e1).
contrary(f2, e2).

myRule(w1, [a1,c1,d1,d2,e2,q2]).
myRule(w1, [a2,e1]).
myRule(w1, [b1,b3,c1,c3,e1]).
myRule(w1, [s1,s2,u1,z1]).
myRule(w1, [r1]).
myRule(q1, [c1,e1,r2,z1]).
myRule(q1, [a1,a3,b3,c1,e2]).
myRule(q1, [b1,c1,c2,d1]).
myRule(q1, [c2,c3,e2,f2]).
myRule(q1, []).
myRule(z1, []).
myRule(z1, [p1,r2,u1,x1]).
myRule(p1, [a2,b2,c1,d1,d2,r2]).
myRule(p1, []).
myRule(p1, [a3,c1,c2,d2,e1,s2]).
myRule(p1, [b2,d2,e1,q1,s1,x1]).
myRule(s2, [a2,a3,b2,c1,c3]).
myRule(s2, [b3,c2,d1,p2,q1,x1]).
myRule(s2, [c2]).
myRule(q2, [b1,p2,q1,r1,z1]).
myRule(q2, [c2,e1]).
myRule(q2, [c3,r2]).
myRule(q2, [a1,b1,e2,f2,q1]).
myRule(q2, [b3]).
myRule(y1, [e2,q2]).
myRule(y1, [b1,b3,e1]).
myRule(y1, [u1]).
myRule(v1, [x1]).
myRule(v1, []).
myRule(s1, [e2,q2,t1,w1,x1]).
myRule(s1, []).
myRule(s1, [a1,p1]).
myRule(s1, [a3,b3,c1,c3,e2,u1]).
myRule(u1, [a2,b1,c2,e2,q1,q2]).
myRule(u1, [a2,a3,b2,e1,f1,q1]).
myRule(u1, [p2,v1]).
myRule(u1, [b3,c1,f1,t1]).
myRule(u1, [r2,s1,z1]).
myRule(t1, [a3,d1,w1,z1]).
myRule(t1, [b1]).
myRule(t1, [b3,f2,p2]).
myRule(r2, [b1,d2]).
myRule(r2, [b1]).
myRule(r2, [q1,y1]).
myRule(x1, []).
myRule(x1, [a1,e2]).
myRule(x1, [a2,b1,b3,d2,e2,f1]).
myRule(x1, [c3,s1,t1,v1,y1]).
myRule(p2, [a3,r1]).
myRule(p2, []).
myRule(p2, [b1,b3,d1,q1,w1]).
myRule(p2, [b3,c1,f1,q1,w1]).
myRule(p2, [b3,f1,r1,w1,y1]).
myRule(r1, []).
myRule(r1, [c1,d1,e1,q2,s2]).
myRule(r1, [b1,b2,c3,d2,f1,t1]).
myRule(r1, [b1,d1,d2]).
myRule(r1, [a3,b3,d2,f1]).
