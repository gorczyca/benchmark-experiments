generation_settings([50,15,50,15,20,[2,5],[9,12],[0,6]]).
% number of sentences (input):    50
% number of assumptions (input):  15
% number of sentences:            50
% number of assumptions:          15
% number of rule heads:           20
% number of rules per head:       [2,5]
% number of sentences per body:   [9,12]
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

contrary(a1, r2).
contrary(a2, c2).
contrary(a3, s1).
contrary(b1, r2).
contrary(b2, t1).
contrary(b3, d2).
contrary(c1, y3).
contrary(c2, b1).
contrary(c3, y1).
contrary(d1, w3).
contrary(d2, w2).
contrary(e1, c3).
contrary(e2, a3).
contrary(f1, q3).
contrary(f2, v2).

myRule(v2, [b1,c1,d2,e2,f2,p4,q2,s1,t3]).
myRule(v2, [a1,c1,e2,f2,p3,q1,s2,t2,u1,v1,x2]).
myRule(v2, [a3,p2,t1,t2,u2,w3,x2,x3,y3]).
myRule(p4, [a3,b1,b2,c2,d2,f2,s2,u1,v3,x2]).
myRule(p4, [a3,b1,b3,c1,f1,q4,r1,t1,t2,w1,w2,x1]).
myRule(p4, [f1,p3,q1,q2,s1,t1,v1,v3,w2,x2,y2]).
myRule(p4, [a1,p1,p3,s1,u1,v1,v3,w2,x2,z1]).
myRule(p4, [a2,c2,f2,p2,p3,q2,r2,s2,s3,u3,z3]).
myRule(r1, [q4,r3,s1,s2,s3,t1,t3,u1,w2,w3,y3]).
myRule(r1, [a2,b2,b3,c3,f1,r3,u1,u2,x2,x3,z2]).
myRule(r1, [a3,c1,c3,q3,s1,u1,v1,w2,x2,y2,z3]).
myRule(y1, [c1,c2,d1,f2,p2,u3,x3,y3,z1]).
myRule(y1, [b3,c2,d2,e2,f1,f2,q4,s2,t3,w1,z3]).
myRule(y1, [b1,b3,c2,d1,q1,r2,s3,t1,t3,x3,z1,z3]).
myRule(q4, [a1,a2,a3,c1,d2,e2,p2,v3,z3]).
myRule(q4, [c1,p1,q2,s1,t1,v3,x1,z1,z2]).
myRule(q4, [q1,s1,s2,t1,v1,w3,x2,y3,z2,z3]).
myRule(q4, [a3,b2,c2,c3,e1,f2,v1,w1,w2]).
myRule(q4, [a1,a2,b1,c2,e1,p3,t2,t3,u3,w1,w2]).
myRule(s3, [b3,r2,r3,s2,t2,t3,w1,w3,x2,y2]).
myRule(s3, [a1,a2,d2,e1,f1,q2,r2,v1,w1,z3]).
myRule(p2, [a1,b2,b3,c3,d2,f2,p3,t3,w2,x2,y3,z2]).
myRule(p2, [a1,p3,q2,r2,r3,t1,t2,x3,y2,y3]).
myRule(p2, [a2,b3,e1,e2,f1,f2,p3,r3,t2,y3]).
myRule(p2, [c2,p1,q1,r3,t1,u1,v1,w3,x3,y3,z1,z2]).
myRule(p2, [p3,r2,r3,u1,u3,v3,x2,y3,z2,z3]).
myRule(z2, [a2,a3,c2,d2,f2,q1,q2,u1,x1,x2]).
myRule(z2, [a3,b2,b3,c3,d1,r2,t1,x3,y2,z3]).
myRule(t1, [b1,d1,d2,p3,q2,q3,t2,t3,u1,y2]).
myRule(t1, [p1,p3,q3,r2,r3,u3,v1,x2,x3]).
myRule(t1, [a1,a2,a3,c2,e1,f2,q2,r2,x3,z3]).
myRule(t1, [q1,r2,s2,t3,u1,u3,v1,w1,x1,x2]).
myRule(t1, [a2,b2,c1,e1,q1,r3,s2,v3,x1,x2]).
myRule(u1, [a3,b1,b3,c2,d2,f2,p1,q2,x1,x2]).
myRule(u1, [d1,r3,t2,u2,v1,w1,y2,y3,z1]).
myRule(u1, [q3,t2,t3,u2,u3,w2,x2,x3,z1]).
myRule(q2, [b3,c1,c2,d1,f1,f2,r3,t2,v3]).
myRule(q2, [c1,d1,p1,r2,r3,s2,t2,w1,x1,x2,y3]).
myRule(q2, [a1,a2,b3,c1,c2,d1,v1,w1,x1,y2,y3,z3]).
myRule(q1, [b2,c1,c2,d1,e1,f1,p3,s1,s2,w1,w2,y2]).
myRule(q1, [a1,b2,d1,e1,e2,f1,p1,p3,q3,s2,t3,x2]).
myRule(q1, [c2,p1,p3,r3,s2,t3,u2,u3,v3,w1,y2]).
myRule(q1, [a3,b1,b2,e1,p3,r3,t2,t3,v3,x3,z3]).
myRule(t3, [a1,a2,c1,d2,e1,p3,u3,v1,z1]).
myRule(t3, [b2,b3,c2,p1,q3,s2,u3,v1,w1,x2,x3,y2]).
myRule(t3, [a2,b2,q3,r2,s1,s2,u2,w2,x3,y3,z1,z3]).
myRule(t3, [b2,e1,f1,f2,p3,v3,w3,x1,y2,z1]).
myRule(t3, [p3,r2,r3,s2,u2,u3,w2,w3,x2,z1]).
myRule(y2, [e2,p3,q3,s2,t2,v1,v3,z1,z3]).
myRule(y2, [b2,c1,c3,d1,d2,f1,p1,q3,v3,x3,y3,z3]).
myRule(y2, [a3,c3,f1,p3,q3,s1,s2,u2,v1,w2,x2,x3]).
myRule(y2, [b1,f1,p1,r3,u3,v1,v3,w2,x2,y3]).
myRule(q3, [a3,b1,d2,e1,e2,p1,r3,v3,z1]).
myRule(q3, [b1,b2,c1,c3,f2,p1,s2,u2,v3,w1,w2,x1]).
myRule(q3, [c3,d1,r2,r3,s2,u3,v3,w1,x1]).
myRule(q3, [p1,p3,r2,s2,u2,u3,v3,w2,x3,y3,z1,z3]).
myRule(t2, [d1,p1,p3,r2,u2,u3,v1,w2,w3,x1,x3,z3]).
myRule(t2, [a1,e2,p1,r2,v1,w1,w2,w3,x2,z3]).
myRule(u2, [c1,e1,f1,p3,s1,s2,v1,w3,x2,x3,z1,z3]).
myRule(u2, [a2,d1,e2,p1,u3,w2,w3,x2,x3,y3,z1]).
myRule(p1, [a1,c3,e2,f1,r3,s2,u3,v3,w1,w2,w3,x3]).
myRule(p1, [a2,e2,r2,u3,v1,v3,w1,w2,z1,z3]).
myRule(p1, [a3,b3,d1,f1,r2,r3,u3,w3,x1]).
myRule(p1, [a2,b1,c1,c2,d1,r3,s2,v3,w2,w3,x3]).
myRule(p1, [a2,b1,b3,c2,p3,s2,u3,w2,w3,x3,y3,z3]).
myRule(v3, [a1,b3,c2,c3,e2,f2,p3,w1,y3]).
myRule(v3, [b1,b3,c2,u3,v1,w1,w2,y3,z1]).
myRule(v3, [p3,r2,r3,u3,w1,w3,x1,z1,z3]).
myRule(v3, [p3,r2,r3,s1,v1,w2,w3,x2,x3,z1]).
myRule(r3, [c2,c3,p3,r2,s1,s2,u3,w2,x1,x2,y3,z1]).
myRule(r3, [c1,p3,s2,v1,w2,w3,x2,y3,z1,z3]).
