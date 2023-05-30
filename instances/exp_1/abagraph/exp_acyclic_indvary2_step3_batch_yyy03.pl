generation_settings([40,15,40,15,20,[8,11],[0,6],[0,6]]).
% number of sentences (input):    40
% number of assumptions (input):  15
% number of sentences:            40
% number of assumptions:          15
% number of rule heads:           20
% number of rules per head:       [8,11]
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

contrary(a1, q3).
contrary(a2, p2).
contrary(a3, p3).
contrary(b1, v2).
contrary(b2, x2).
contrary(b3, x1).
contrary(c1, p1).
contrary(c2, p1).
contrary(c3, w1).
contrary(d1, y2).
contrary(d2, y1).
contrary(e1, q1).
contrary(e2, t1).
contrary(f1, p1).
contrary(f2, q3).

myRule(x2, [a2,c2,c3,q1,r3,w1]).
myRule(x2, [a2,b2,b3,e2,f1,u2]).
myRule(x2, [d1,p1]).
myRule(x2, [c2,c3,e1,r2,v2,y1]).
myRule(x2, [s1,u1]).
myRule(x2, [a3,d1,e2,t2,y1]).
myRule(x2, []).
myRule(x2, [a3,u2]).
myRule(x2, [a2,c3,f1,z2]).
myRule(x2, [p1,q1,v2,w2,z2]).
myRule(p1, [a2]).
myRule(p1, [b2,d1,f2,w2,y1,z1]).
myRule(p1, [a1,a2]).
myRule(p1, [s2]).
myRule(p1, []).
myRule(p1, [a3]).
myRule(p1, [t2,v1,v2,w2,y2,z2]).
myRule(p1, [t1,t2]).
myRule(p1, [d1,t1,u2,w2,y2]).
myRule(p1, [q1,s2,u2,w1,x1,z1]).
myRule(z2, [a1,r2,w1,y2]).
myRule(z2, [a2,d2,r1]).
myRule(z2, [c2]).
myRule(z2, [b1,d2]).
myRule(z2, []).
myRule(z2, [f1,s2,t1,y2]).
myRule(z2, [d2,r1,v1,w2]).
myRule(z2, [e2]).
myRule(y2, [a1,p3,r1,s1]).
myRule(y2, [a1,c1,c2,d2]).
myRule(y2, [b3,s2,t2]).
myRule(y2, []).
myRule(y2, [c1,p2,r3,t2]).
myRule(y2, [a3,b2,c1,c2]).
myRule(y2, [a2,t1,w1]).
myRule(y2, [a1,b2,c2,c3,d1,r2]).
myRule(y2, [a2,b1,q2,s2,t2,y1]).
myRule(y2, [c3]).
myRule(y2, [c1,f1]).
myRule(s1, [p3,q3]).
myRule(s1, [a1,w1]).
myRule(s1, [b3,c1,d2,e2,f2,v1]).
myRule(s1, [p3,r2]).
myRule(s1, [c2,c3,d1,f2,q3,r1]).
myRule(s1, [a1,a2,b2,d2]).
myRule(s1, [r1,s2,v1,v2,x1]).
myRule(s1, [a1,d2,p3]).
myRule(s1, [c1,c3,d1,f2]).
myRule(s1, [a1,b1,w2]).
myRule(s1, []).
myRule(u1, [b1]).
myRule(u1, [a1,a2,c3,d1,q3]).
myRule(u1, [b1,c1,f1]).
myRule(u1, [p3,q3,r2,w1,x1]).
myRule(u1, [a2]).
myRule(u1, [a1]).
myRule(u1, [f1]).
myRule(u1, [c2,e1,f1,p3,q2,u2]).
myRule(u1, [q2,r3,t2,y1]).
myRule(v2, [a2,p2,q1,r1,r2,s2]).
myRule(v2, [c1,d1,f1,u2]).
myRule(v2, [b3,d1,d2]).
myRule(v2, [a3,b1,b2,d2,e1,f1]).
myRule(v2, [p3,v1,w2,x1,y1]).
myRule(v2, [q2,q3,y1]).
myRule(v2, []).
myRule(v2, [b1,c2,d2,e1,q2]).
myRule(z1, [b3,e1,f1,f2,r2]).
myRule(z1, [r1,r2,t2,w2,y1]).
myRule(z1, [a1,a3,d2]).
myRule(z1, [e2]).
myRule(z1, [t1]).
myRule(z1, [a3,c2,d1,q1,s2]).
myRule(z1, []).
myRule(z1, [f2,t1,t2]).
myRule(w1, [p2]).
myRule(w1, [c2,f1,s2,x1]).
myRule(w1, [d2,f1,x1]).
myRule(w1, [d2,e1,e2,p3,r3,x1]).
myRule(w1, [b1,b2,c3,d2,f1]).
myRule(w1, []).
myRule(w1, [a2,b1,b3,p3,q1]).
myRule(w1, [a2,c2,c3,d1,e2]).
myRule(q3, [c2,p2,q1,r1,r2]).
myRule(q3, [d1,e1,p3]).
myRule(q3, [r2,u2,y1]).
myRule(q3, [c3]).
myRule(q3, [a1,a3,c3,q1]).
myRule(q3, [a1,c1,c3,e2,f2,s2]).
myRule(q3, [c1,c2,c3,t1]).
myRule(q3, [b1,c3,e1,x1]).
myRule(q3, [a1,b1,b2,b3,c2,e2]).
myRule(x1, [a2,c2,r1,r3,u2]).
myRule(x1, [a3,b1,b3]).
myRule(x1, []).
myRule(x1, [p2,r2,u2,v1]).
myRule(x1, [e2,r1,r2]).
myRule(x1, [a1,c2,d2,e1]).
myRule(x1, [a1,p3,w2]).
myRule(x1, [e1,p2]).
myRule(x1, [a3,b2,r2,r3,v1]).
myRule(r3, [a2]).
myRule(r3, [q1,r1]).
myRule(r3, [c1,c2,e2,p3]).
myRule(r3, [a3,e2,p2,q1,q2,y1]).
myRule(r3, [a2,d2]).
myRule(r3, [b2,c1]).
myRule(r3, [a1,f1,u2]).
myRule(r3, [c1,e1,p3,t2,u2,v1]).
myRule(p2, [a1,a3,e2]).
myRule(p2, [r1,t2,y1]).
myRule(p2, [a1,b2,c2,f1]).
myRule(p2, [s2]).
myRule(p2, [a1,a2,e1,v1]).
myRule(p2, [b2,q1,q2,r2,s2,v1]).
myRule(p2, []).
myRule(p2, [c1,d2,q1]).
myRule(p2, [a1,b3,p3]).
myRule(p2, [d1]).
myRule(p2, [p3,q1,q2,t1,u2,w2]).
myRule(r1, [q2,r2,t1,t2,w2,y1]).
myRule(r1, [b1,c1,d1]).
myRule(r1, [q2,s2,t2,v1,y1]).
myRule(r1, [a1,q1,r2,y1]).
myRule(r1, [a2,d1,r2]).
myRule(r1, [b1,b2]).
myRule(r1, [a3,b1,b2,c3,e1]).
myRule(r1, [p3,u2,v1]).
myRule(r1, [b2]).
myRule(r1, [p3,u2,v1,w2]).
myRule(t2, [p3,q2,r2,t1,v1]).
myRule(t2, [a3,p3]).
myRule(t2, [e1,e2,f1]).
myRule(t2, []).
myRule(t2, [e1,q1,q2,r2,t1,w2]).
myRule(t2, [d1,p3,u2,y1]).
myRule(t2, [a1,b1,e2,f2,s2]).
myRule(t2, [a1,c3,q1]).
myRule(t2, [y1]).
myRule(s2, [f2]).
myRule(s2, [b3]).
myRule(s2, []).
myRule(s2, [b2,c3,v1]).
myRule(s2, [c3,d2,q1,r2,v1,w2]).
myRule(s2, [a2,c2,w2]).
myRule(s2, [c3,f2,t1]).
myRule(s2, [c1,q2,t1,w2]).
myRule(s2, [e2,q1]).
myRule(s2, [e1,r2]).
myRule(u2, [c2,c3,d1,e2,f2]).
myRule(u2, [v1]).
myRule(u2, [b2,f1,p3,q2,r2]).
myRule(u2, [b2,t1,y1]).
myRule(u2, []).
myRule(u2, [b2,b3,q2,t1,v1]).
myRule(u2, [a1,a2,b2,c3,d2,f2]).
myRule(u2, [a3,b2,b3]).
myRule(u2, [c2]).
myRule(q2, [a1,b1,c1,d1,p3,t1]).
myRule(q2, [p3,r2,t1,v1,w2]).
myRule(q2, [d2,e1]).
myRule(q2, [p3,q1,r2,v1,w2,y1]).
myRule(q2, [a1,b1,d2,f1,q1,t1]).
myRule(q2, [a2,b1,c2,t1,v1,w2]).
myRule(q2, []).
myRule(q2, [a2,b1,b2,b3,c2]).
myRule(q2, [e2]).
myRule(v1, [a2,b3,c1,e2,w2]).
myRule(v1, [q1,w2,y1]).
myRule(v1, [p3]).
myRule(v1, [a1,a2,a3,b1,f1,t1]).
myRule(v1, [a3,b3,c3,d2,e1,f2]).
myRule(v1, [q1,w2]).
myRule(v1, [a2,c1,d2,e1]).
myRule(v1, [c3,p3,q1,y1]).
myRule(t1, [b1,q1]).
myRule(t1, [p3,q1,r2,w2,y1]).
myRule(t1, [a1,c2,c3,p3,w2]).
myRule(t1, [p3,q1,r2]).
myRule(t1, [c1,p3,q1,y1]).
myRule(t1, [a1,b3,r2]).
myRule(t1, [f2]).
myRule(t1, []).
