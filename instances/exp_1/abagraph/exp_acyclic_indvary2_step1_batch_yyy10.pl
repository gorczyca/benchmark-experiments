generation_settings([40,15,40,15,20,[2,5],[0,6],[0,6]]).
% number of sentences (input):    40
% number of assumptions (input):  15
% number of sentences:            40
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

contrary(a1, q1).
contrary(a2, v2).
contrary(a3, c3).
contrary(b1, f1).
contrary(b2, r3).
contrary(b3, d1).
contrary(c1, c2).
contrary(c2, q3).
contrary(c3, s1).
contrary(d1, r1).
contrary(d2, e1).
contrary(e1, e2).
contrary(e2, a2).
contrary(f1, e2).
contrary(f2, w2).

myRule(s2, [a1,b1,d1,p2,t2]).
myRule(s2, [a3,f2,r1]).
myRule(s2, [r3]).
myRule(v1, [v2]).
myRule(v1, [a3,c2,c3,d1,f1,x2]).
myRule(v1, [c1,p2,z2]).
myRule(v1, [q1,u2,y1]).
myRule(z1, [a2,b1]).
myRule(z1, [a2,t1,x2]).
myRule(z1, [f2,p1,t2]).
myRule(z1, [a1]).
myRule(z1, [a1,d1,t2]).
myRule(t1, [c1,p2,x2]).
myRule(t1, [q3,z2]).
myRule(t1, [r1]).
myRule(t1, [c3,q2,q3,t2]).
myRule(p1, [b2,d1,d2,e1,q1,w2]).
myRule(p1, []).
myRule(q3, [b1,q1,x1]).
myRule(q3, []).
myRule(q3, [b1,d2,t2,v2,y1]).
myRule(x2, [a1,c1,p2,q1]).
myRule(x2, []).
myRule(x2, [b3,q2,u2,v2]).
myRule(x2, [d1,f1,q2,t2]).
myRule(v2, [r3,s1,t2,w1]).
myRule(v2, [e2]).
myRule(v2, [d1,d2,e1,e2]).
myRule(v2, [b1]).
myRule(y1, []).
myRule(y1, [b1,f1,r2,u2,x1]).
myRule(z2, [a1,b3,c3,e2,y2]).
myRule(z2, [a1,b2,f1,r2]).
myRule(z2, [q1,x1]).
myRule(z2, []).
myRule(z2, [p2,q1,r2,t2,w1,x1]).
myRule(s1, [b1,b2,e1,q1,r3,w2]).
myRule(s1, [a2,d2,e1,f2,r3]).
myRule(s1, [r3,t2,u2,x1]).
myRule(s1, [r2,y2]).
myRule(s1, [p2,q1,r2,u1,x1]).
myRule(w1, [c2,p2,p3,u1,y2]).
myRule(w1, [r3,t2,x1,y2]).
myRule(w1, [a2,c3,e1,u2,y2]).
myRule(w1, [a3,b2,c1,e1]).
myRule(w1, [a1,a2,a3,b1,u2]).
myRule(r3, [a1,y2]).
myRule(r3, [q2,r2,u1,y2]).
myRule(r3, [a2,b1,b2,d1,f1,t2]).
myRule(r3, [t2]).
myRule(r3, []).
myRule(w2, [a1,c3,d1,r2]).
myRule(w2, [r1,y2]).
myRule(w2, [c1,f1,q2,t2,u1,u2]).
myRule(y2, [a3,c2,u1]).
myRule(y2, [a1,c1,c2,f2,q2,r1]).
myRule(y2, [b1,b3,d2,u1]).
myRule(y2, [a3,q1]).
myRule(y2, [a2,d1]).
myRule(q2, [a2,t2]).
myRule(q2, [x1]).
myRule(q2, [a2,b1,b3,c1,q1,r2]).
myRule(q2, [a1,a2,b3,c2,d2,e2]).
myRule(q2, [b3,c1,t2,u1,u2]).
myRule(u1, [c1,c3,d1,d2,q1,x1]).
myRule(u1, [b3,c3,r2]).
myRule(u1, [f1,r1,x1]).
myRule(u1, [a2,b3,c3,d2]).
myRule(p3, [a3,e1,q1,r1,t2,u2]).
myRule(p3, [p2,q1,r2]).
myRule(p3, [r1,r2,u2]).
myRule(p3, [a3]).
myRule(p3, [p2,t2,x1]).
myRule(r1, [a1,e1,t2]).
myRule(r1, [a2,b1,p2,t2,u2,x1]).
myRule(r1, [t2,u2]).
myRule(r1, [q1,t2,x1]).
myRule(r2, [c3,e1,e2]).
myRule(r2, [d1,f2]).
myRule(r2, []).
