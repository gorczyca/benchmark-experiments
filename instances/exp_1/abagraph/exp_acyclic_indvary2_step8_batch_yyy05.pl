generation_settings([40,15,40,15,20,[23,26],[0,6],[0,6]]).
% number of sentences (input):    40
% number of assumptions (input):  15
% number of sentences:            40
% number of assumptions:          15
% number of rule heads:           20
% number of rules per head:       [23,26]
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

contrary(a1, r2).
contrary(a2, v1).
contrary(a3, s2).
contrary(b1, s1).
contrary(b2, b1).
contrary(b3, u1).
contrary(c1, q1).
contrary(c2, e2).
contrary(c3, p2).
contrary(d1, a3).
contrary(d2, q3).
contrary(e1, z2).
contrary(e2, u2).
contrary(f1, p2).
contrary(f2, q2).

myRule(q1, [a2,r1,w2]).
myRule(q1, [e2]).
myRule(q1, [b1,c3,f1]).
myRule(q1, [r2,v1,v2,x2]).
myRule(q1, [p2,s1,u1,u2,v2]).
myRule(q1, [a1,a2,c3,f2]).
myRule(q1, [b2,d1]).
myRule(q1, [d1,e1,q3,t1]).
myRule(q1, [a1,a2,b3,c1,d1,f1]).
myRule(q1, [c1,u2]).
myRule(q1, [a1,c1,e2,f1,f2]).
myRule(q1, [b1,x1]).
myRule(q1, [c1,p1,p3,q2,z1]).
myRule(q1, [a2,c1,c3,e2,y2,z2]).
myRule(q1, [q3,r1,u2,x2]).
myRule(q1, [a1,b2,d1,v1,x2]).
myRule(q1, [b1,b3,c3,d1]).
myRule(q1, [w1]).
myRule(q1, [b3,p3,s2,w1,y1,y2]).
myRule(q1, []).
myRule(q1, [s2,y1,z2]).
myRule(q1, [a2]).
myRule(q1, [c2,f1,p2]).
myRule(p3, [q3,v2,w2,x1,x2,y2]).
myRule(p3, [p1,r1]).
myRule(p3, [c2,e2,x2,z1]).
myRule(p3, [b2]).
myRule(p3, [b2,p1,q3,t2,w1]).
myRule(p3, [a1,b2,b3]).
myRule(p3, [a2,z2]).
myRule(p3, [a3,f2,t1,y1]).
myRule(p3, [a2,c2,c3,e1,f1,v1]).
myRule(p3, [r2,u1,x2]).
myRule(p3, [t2,x2]).
myRule(p3, [a1,a2,a3,b3]).
myRule(p3, [c3,d1]).
myRule(p3, [p2,u2,x1]).
myRule(p3, [a2,a3,b1,d1,e2]).
myRule(p3, [b3]).
myRule(p3, [r1,r3,v2,x1,y1]).
myRule(p3, [v2]).
myRule(p3, [a1,b1,c1,c2,e1,f2]).
myRule(p3, [a1,a3,b3,d1,d2,f2]).
myRule(p3, []).
myRule(p3, [e1,q2,q3,v2,z2]).
myRule(p3, [a1,f1]).
myRule(r2, [b2,q3,u2,z1]).
myRule(r2, [w1,x2]).
myRule(r2, [c2,f2,p2,u2,y2]).
myRule(r2, [b3,e2,f1,x1]).
myRule(r2, [b1,p1,r3,t1,u2]).
myRule(r2, [b3,p1,q3,r3,x2,z1]).
myRule(r2, [r1,s2,u2]).
myRule(r2, [a2,b2,b3,d2,e2]).
myRule(r2, [a3,b1,r3,u1,x2]).
myRule(r2, [b2,d1,d2,e1,f2]).
myRule(r2, [q2,r3,t1,t2,x2]).
myRule(r2, [a1,c2,t2]).
myRule(r2, [p2,q2,u2,v2,z1,z2]).
myRule(r2, [e2,f2,t2]).
myRule(r2, [a2,c1,f1,f2]).
myRule(r2, [d2,e2]).
myRule(r2, [c2,d2,f2]).
myRule(r2, [c1,v1,w1,w2]).
myRule(r2, [c3]).
myRule(r2, [r1,w2]).
myRule(r2, [a2,a3,b3,e1,y1]).
myRule(r2, [d2]).
myRule(r2, [b3,r3,t2,w2]).
myRule(r2, []).
myRule(r2, [r1,v2]).
myRule(r2, [b1,d2,f1]).
myRule(q3, [q2,t2,w1,y1]).
myRule(q3, [q2,y1]).
myRule(q3, [b3,c2,v1,z1]).
myRule(q3, [w2,x1,x2,z1]).
myRule(q3, [b3,p2,t1,w1,x1,y2]).
myRule(q3, [r1,t2,v2,y1]).
myRule(q3, [e1,e2,f2]).
myRule(q3, [a2,c1,c3,e1,x1]).
myRule(q3, [c3,f1,r1,t2]).
myRule(q3, [c2,s2,y2]).
myRule(q3, [x1,z2]).
myRule(q3, [d2]).
myRule(q3, [a1,b2,c2,c3,w2]).
myRule(q3, [y2]).
myRule(q3, [t1,u2,w1,w2,x2]).
myRule(q3, [d2,e1,e2,f1,f2,p2]).
myRule(q3, []).
myRule(q3, [u2,v2]).
myRule(q3, [b3,c3,p1,r3]).
myRule(q3, [y1]).
myRule(q3, [a3,e1,e2,p2,u1]).
myRule(q3, [b1,s1,s2,x1,y1]).
myRule(q3, [d1,f2,r1,s1,x2,z2]).
myRule(q3, [b3,d2,f2]).
myRule(v1, [e2,y1,z1]).
myRule(v1, [d1,r3,w2]).
myRule(v1, [p1,p2,u1,u2]).
myRule(v1, [a2,c3,r1,t1,w2]).
myRule(v1, [d2,e1]).
myRule(v1, [a3,b1,c2,c3,f1,q2]).
myRule(v1, [d2,f2,p2,t1,u1]).
myRule(v1, [d2,y1]).
myRule(v1, [a2,b1,b3,d1,t1]).
myRule(v1, [a1,b1,b2,d1,d2,x2]).
myRule(v1, [b1,d1,f2,p1,t1,x2]).
myRule(v1, [w2]).
myRule(v1, [d2,w1,x1,z2]).
myRule(v1, [p1,u2]).
myRule(v1, [c2,d1,e1,e2,f1,f2]).
myRule(v1, [a1,e2,s1]).
myRule(v1, [f2,s1,u2]).
myRule(v1, [a2,c1,d2,r3,s2,v2]).
myRule(v1, [a1,y1,z2]).
myRule(v1, []).
myRule(v1, [b2,f1]).
myRule(v1, [d1,t2,y2]).
myRule(v1, [p2,v2]).
myRule(v1, [a2,c3,e1,f1,f2]).
myRule(v1, [p2]).
myRule(r1, [b1,t2]).
myRule(r1, [b3,c1,s2,y1]).
myRule(r1, [a3,f2,r3]).
myRule(r1, [b2,e1]).
myRule(r1, [r3,t1,w1]).
myRule(r1, [b1,b3,c2,d2,e1,e2]).
myRule(r1, [d1]).
myRule(r1, [a1,d2,t2,u2,y1,z1]).
myRule(r1, [d2,p1,s2,t1]).
myRule(r1, [e1,e2]).
myRule(r1, [t2]).
myRule(r1, [y1,z1]).
myRule(r1, [c2,p1,t2,w2,z1]).
myRule(r1, [c1,c3]).
myRule(r1, [a1,a3,b3,p2]).
myRule(r1, [b2,u2]).
myRule(r1, [b3]).
myRule(r1, [u2,w1]).
myRule(r1, [a1,a3,c2,p2,u2,w1]).
myRule(r1, [a1,b2,b3,c1,w2]).
myRule(r1, [a1,a3,c1,f2,s1]).
myRule(r1, [c2]).
myRule(r1, []).
myRule(r1, [t2,w2,y1]).
myRule(r1, [d2,q2,y2]).
myRule(r3, [b1,c1,c3,e1,e2,f2]).
myRule(r3, [a3,c2,f2,w1]).
myRule(r3, [s1,w1]).
myRule(r3, [b2,d1,p2,u2,w2]).
myRule(r3, [a2,q2,u1,x2]).
myRule(r3, [b1,f1,p2,t2,x1]).
myRule(r3, [z1]).
myRule(r3, [b1,c3,t2,z2]).
myRule(r3, [u2]).
myRule(r3, [a1,a3,b3,c2,d1]).
myRule(r3, [a2,c2,w1,z1]).
myRule(r3, [b1,z2]).
myRule(r3, [p1,s2,u2,w1,w2]).
myRule(r3, [p2,q2,s1,y1,z1]).
myRule(r3, [t1,t2,x1,y1]).
myRule(r3, [s2,w2]).
myRule(r3, [b1]).
myRule(r3, [b2,p2,s1,t2,w2,x1]).
myRule(r3, [s1,s2,t2,w2,x2,z2]).
myRule(r3, [a1,b2,f2,p1,s2,y2]).
myRule(r3, [b3,c1,d1,w2]).
myRule(r3, [a1,b2,c3,f2]).
myRule(r3, [a1,a3,b2]).
myRule(r3, [x2]).
myRule(r3, [a1,c3,d1,e2,f1,y1]).
myRule(r3, []).
myRule(u1, [a1,a2,a3,c1,z2]).
myRule(u1, [b1,d1]).
myRule(u1, [a2,q2,s2,v2,x1,z1]).
myRule(u1, [b3,w2,x2,y1]).
myRule(u1, [q2,t1,t2,z2]).
myRule(u1, [w1]).
myRule(u1, [b1,c1,c2,x1]).
myRule(u1, [w2,y2]).
myRule(u1, [b3]).
myRule(u1, [t2,z1,z2]).
myRule(u1, [c1,c3,f1,f2,z1,z2]).
myRule(u1, [c2,f2,x2]).
myRule(u1, [d1]).
myRule(u1, [c2,p2,s2]).
myRule(u1, [a2,t2]).
myRule(u1, [a1,a2,b3,c1,d1,f2]).
myRule(u1, [b2,c1,y1]).
myRule(u1, [e2]).
myRule(u1, [b1,d2,x2]).
myRule(u1, [a2,c2,c3,p2,z1,z2]).
myRule(u1, [p2,w1,w2,x1,y2,z1]).
myRule(u1, []).
myRule(u1, [d2]).
myRule(u1, [a1,a2,a3,b1,b2,e2]).
myRule(u1, [d2,s2,x1]).
myRule(u1, [y1]).
myRule(w1, [a2,c2,c3,d2,e1,e2]).
myRule(w1, [e1,s1,y1]).
myRule(w1, [p2]).
myRule(w1, [p1,x2]).
myRule(w1, [e1]).
myRule(w1, [b3]).
myRule(w1, [f2]).
myRule(w1, [a1,b1,p1]).
myRule(w1, [a2,a3,b3,c1,c2]).
myRule(w1, [a2,c1,f2,p2,q2,x2]).
myRule(w1, [a1,e2]).
myRule(w1, [a3,d2]).
myRule(w1, [a1,d2,e1,e2]).
myRule(w1, [a3,b3,c1,e2,p2,s1]).
myRule(w1, [u2]).
myRule(w1, [c1,u2,z1]).
myRule(w1, [d2,p2,x2,z1,z2]).
myRule(w1, [b1,b2,e1,w2]).
myRule(w1, [p1,v2,w2,y1]).
myRule(w1, [b1,b3,c1,d2,t2]).
myRule(w1, [b3,c2,d2,e1,w2,y1]).
myRule(w1, [b1,c3,e1,e2,v2]).
myRule(w1, [q2]).
myRule(w1, [p1,v2,z2]).
myRule(w1, [a2,u2]).
myRule(w1, [s2]).
myRule(z1, [a3,p1,t2,u2,x2]).
myRule(z1, [a2,b3,c1,c3,e1,f1]).
myRule(z1, [a1,a2,b1,b2,b3,f1]).
myRule(z1, [a1,c1,q2,t2,v2,x2]).
myRule(z1, [a2,a3,b1,c2,d2,f2]).
myRule(z1, [p2,v2,y1,y2,z2]).
myRule(z1, [a2,a3,b1]).
myRule(z1, [b1,b2,e1,p1,x1]).
myRule(z1, [q2]).
myRule(z1, [e1,p1,q2,s2,u2]).
myRule(z1, [p2]).
myRule(z1, [b2]).
myRule(z1, [d2,e1,e2,z2]).
myRule(z1, [a3,b1,b2,c1,c2,e1]).
myRule(z1, [s2]).
myRule(z1, [a3,s1,t2,u2,x1]).
myRule(z1, [b2,f1,p2,z2]).
myRule(z1, [v2]).
myRule(z1, [c2,u2,v2,x1]).
myRule(z1, [a3,c1,e2,f1,f2]).
myRule(z1, [d1,p1,s1,s2,w2]).
myRule(z1, []).
myRule(z1, [p2,s2,y1]).
myRule(z1, [c1,d2,f1,p1,y1,z2]).
myRule(v2, [a2,b1,b3,y1,z2]).
myRule(v2, [a1,b2,c2,c3,e1]).
myRule(v2, [a1,a3,b1,c1,e1,z2]).
myRule(v2, [a1,b3,d1,f1]).
myRule(v2, [e1,t1,u2,x1,y1]).
myRule(v2, [y2]).
myRule(v2, [b3,e1,f1]).
myRule(v2, [a1,a3,b2,f2,y1,y2]).
myRule(v2, [a1,c3,d1]).
myRule(v2, [f1,s2,x2]).
myRule(v2, [a3,b3,d1,s1,t1,t2]).
myRule(v2, [b2,p1,x1]).
myRule(v2, [s2,t1,u2]).
myRule(v2, [p2,q2,t2,u2,w2,x1]).
myRule(v2, [a1,a2,c1]).
myRule(v2, [e2,q2]).
myRule(v2, [a1,c2,e1,f2]).
myRule(v2, [b3,c1,e1,e2,f2]).
myRule(v2, [q2,s2,t2,y1,y2,z2]).
myRule(v2, [p2,s1,s2,t1,w2,y1]).
myRule(v2, []).
myRule(v2, [c1,t1,y1,z2]).
myRule(v2, [f2,s1]).
myRule(v2, [c1,t1]).
myRule(p2, [b2,q2,s1,u2,y2]).
myRule(p2, [q2,s1,t2,u2,x2,y1]).
myRule(p2, [a1]).
myRule(p2, [c3,d1,e2,f1,f2,s2]).
myRule(p2, [u2]).
myRule(p2, [s1,s2,t2]).
myRule(p2, [c1,w2,x1,z2]).
myRule(p2, [a1,a2,b2,s1,t1,x2]).
myRule(p2, [b2,c3]).
myRule(p2, [e2,f2,x1]).
myRule(p2, [d2,z2]).
myRule(p2, [b2,q2,s1,u2,y1,z2]).
myRule(p2, [b3,d2,e2,q2,t1]).
myRule(p2, [a2,c1,s1,t2,w2,x2]).
myRule(p2, [f2]).
myRule(p2, []).
myRule(p2, [a2,d1,e2,p1,s2,x2]).
myRule(p2, [a1,d2,f1]).
myRule(p2, [a1,q2]).
myRule(p2, [b2,b3,e2,x2,y2]).
myRule(p2, [a1,w2,x2,y1,z2]).
myRule(p2, [a2,a3,c1,f1]).
myRule(p2, [a2,a3,c1,d1,d2]).
myRule(p2, [a1,b3,c1,f1]).
myRule(p2, [a3,s1,s2]).
myRule(p2, [b2,c1,w2,x1]).
myRule(t1, [e2]).
myRule(t1, [d2,e1,f2]).
myRule(t1, [c1,s2,u2,w2]).
myRule(t1, [q2,w2,x2,y2]).
myRule(t1, [a1,a2,a3,d2,e1]).
myRule(t1, [w2]).
myRule(t1, [s1]).
myRule(t1, [a2,c1,d2,e1,f2,y1]).
myRule(t1, [a3,e2,w2,y1]).
myRule(t1, [b1,b2,c2,c3,e1]).
myRule(t1, [a3,b1,c3,d1,d2,e1]).
myRule(t1, [a3,b3,d2,p1]).
myRule(t1, [b1]).
myRule(t1, [b3,c3,d1,e1,z2]).
myRule(t1, [b1,f1,s1]).
myRule(t1, [b3,d1,q2,s1,x2,z2]).
myRule(t1, [b1,f2,x1,y1]).
myRule(t1, [u2,w2,z2]).
myRule(t1, [c2,s1,s2,t2,u2,x2]).
myRule(t1, []).
myRule(t1, [f1,w2,y1,z2]).
myRule(t1, [a1,b2,b3,d2,p1,x2]).
myRule(t1, [a3]).
myRule(t1, [f1,s1]).
myRule(t1, [q2,s1,s2,x1]).
myRule(t1, [f1,s2,t2]).
myRule(y1, [a1,a3,d2,t2]).
myRule(y1, [c1,f1,s1,z2]).
myRule(y1, [c2,d2,e2,q2,u2,y2]).
myRule(y1, [a3,q2,s2,w2,x2,y2]).
myRule(y1, [w2]).
myRule(y1, [a1,a2,b2,f1]).
myRule(y1, [a3,z2]).
myRule(y1, [a1,b3]).
myRule(y1, []).
myRule(y1, [a3,e2,u2,y2,z2]).
myRule(y1, [b1,q2,s1,z2]).
myRule(y1, [b3,e1]).
myRule(y1, [e1]).
myRule(y1, [b3,c1,f1,f2]).
myRule(y1, [s1,x2]).
myRule(y1, [a2,b3,c1,e2,f2,s1]).
myRule(y1, [a1,c3]).
myRule(y1, [c2,d1,d2,s2,u2,z2]).
myRule(y1, [d1,e2,s2,w2,x1,z2]).
myRule(y1, [a2,d2,w2]).
myRule(y1, [s1,s2]).
myRule(y1, [c2,c3]).
myRule(y1, [f2]).
myRule(y1, [c3]).
myRule(y1, [c1,c2,d2,f2,x2]).
myRule(p1, [q2]).
myRule(p1, [c3,s1,t2,x1,y2]).
myRule(p1, [b2]).
myRule(p1, [a1,a2,b1,e1,e2]).
myRule(p1, [b3,d1]).
myRule(p1, [t2,x1,y2,z2]).
myRule(p1, [s1]).
myRule(p1, [b1,u2,x2]).
myRule(p1, [a2,b1,b2,c1,e1,f2]).
myRule(p1, [q2,s2,t2,w2,x1,z2]).
myRule(p1, [a1,a2,a3,d1,f1]).
myRule(p1, [q2,s2,x1,x2,z2]).
myRule(p1, [c3,t2]).
myRule(p1, [s1,t2,w2,x1,y2]).
myRule(p1, [a3,b1,c1,s1,s2,t2]).
myRule(p1, [s2,u2]).
myRule(p1, [q2,s1,t2,u2,w2,x1]).
myRule(p1, [a2,c3,e1,f1,f2,w2]).
myRule(p1, [a2,b3,f1,f2]).
myRule(p1, []).
myRule(p1, [a1,b1,c1,e1]).
myRule(p1, [c3]).
myRule(p1, [x2]).
myRule(y2, [f2,w2]).
myRule(y2, [a1,q2]).
myRule(y2, [c2,e1,s1,u2,x1,x2]).
myRule(y2, [f1,s2]).
myRule(y2, [s1,x2]).
myRule(y2, [a2,b1,c3,e2,z2]).
myRule(y2, [d2,e2,f1,s1,s2,u2]).
myRule(y2, [b1,b2,d1,e1,f2,u2]).
myRule(y2, [b2,c2,d1,e2]).
myRule(y2, [c1,c2,c3,e1,f1]).
myRule(y2, [d2]).
myRule(y2, [b1,b3,c3,d2,q2,t2]).
myRule(y2, [u2]).
myRule(y2, [a2,b3,c1,d2,s1]).
myRule(y2, [a3,c2,d1,d2,e2]).
myRule(y2, [d1]).
myRule(y2, [q2]).
myRule(y2, [a1,d1,e1,s2]).
myRule(y2, [a2]).
myRule(y2, [e2,q2,s1,t2,u2,z2]).
myRule(y2, []).
myRule(y2, [t2]).
myRule(y2, [t2,x2]).
myRule(y2, [s1,u2,x2,z2]).
myRule(x2, [a1,a2,a3,d1,e2,f1]).
myRule(x2, [e2,s2]).
myRule(x2, [b1,c2,q2,u2,x1]).
myRule(x2, [a3,c1,c3,s2]).
myRule(x2, [c2,q2,t2,u2]).
myRule(x2, [e2]).
myRule(x2, [a3,e2,u2]).
myRule(x2, [u2,x1,z2]).
myRule(x2, [f1,s1]).
myRule(x2, [b3,e1,f2,s1,s2,z2]).
myRule(x2, [b3,e1,q2,s1,w2,x1]).
myRule(x2, [s1]).
myRule(x2, [a2,b1,b3,c3,f1]).
myRule(x2, [b1,c1,c2,s1,s2,u2]).
myRule(x2, [c2,f2,u2,x1]).
myRule(x2, [x1]).
myRule(x2, [d2,s1,z2]).
myRule(x2, [a2,b1,c2,d2,f1]).
myRule(x2, [a2,d2,q2,s1,t2,u2]).
myRule(x2, [c1]).
myRule(x2, []).
myRule(x2, [a1,a3,e1]).
myRule(x2, [a1,b1,b2,c2,d2,f1]).
myRule(x2, [d1]).
myRule(x1, [e2,f1]).
myRule(x1, [a2,d2,s1,t2,u2,w2]).
myRule(x1, [a2,c2,f2,w2]).
myRule(x1, [s1,w2]).
myRule(x1, [a1,b1,d1,e2]).
myRule(x1, [s2]).
myRule(x1, [s1,s2,t2,u2,w2]).
myRule(x1, [b1]).
myRule(x1, [a2,q2,t2,w2,z2]).
myRule(x1, [q2,s1,s2,u2]).
myRule(x1, [b2,d1,e2,q2,z2]).
myRule(x1, [q2,s1,s2,t2,w2,z2]).
myRule(x1, [b1,w2]).
myRule(x1, [c3,q2,u2,w2]).
myRule(x1, [a1,b3,f1,t2]).
myRule(x1, [f2]).
myRule(x1, [b2,c3,d1,s2,t2,z2]).
myRule(x1, [b1,s1]).
myRule(x1, [a2,d1,e1,s1,t2]).
myRule(x1, [a3,b3,e1,e2,w2,z2]).
myRule(x1, [a1,c1,c2,e1,f1,f2]).
myRule(x1, [d1]).
myRule(x1, [a1,f1,z2]).
myRule(x1, [b2,c3,u2]).
myRule(x1, [c3,d1,d2,e1,s2,z2]).
myRule(x1, []).
myRule(w2, [a2,q2,u2,z2]).
myRule(w2, [b3,d1]).
myRule(w2, [u2]).
myRule(w2, [q2,s1,s2,u2,z2]).
myRule(w2, [d1,s2]).
myRule(w2, [t2,u2]).
myRule(w2, [a1,b2,b3,c2]).
myRule(w2, []).
myRule(w2, [f1]).
myRule(w2, [a2,c1,d1,e2,s1]).
myRule(w2, [c3,f1,f2,t2]).
myRule(w2, [t2]).
myRule(w2, [c2,f1,s1,s2,t2,u2]).
myRule(w2, [z2]).
myRule(w2, [a3,b1,f2,z2]).
myRule(w2, [c2,e1,f1,s1]).
myRule(w2, [f2,q2,z2]).
myRule(w2, [a2,a3,b2,e1,t2]).
myRule(w2, [d1,s1]).
myRule(w2, [a1,b3,e2]).
myRule(w2, [a3,c1,q2,s1]).
myRule(w2, [d1,q2]).
myRule(w2, [q2,s1,s2,u2]).
myRule(t2, [s1]).
myRule(t2, [a1,b1,b2,e1,q2,z2]).
myRule(t2, [c1,q2,u2]).
myRule(t2, [f1,f2,z2]).
myRule(t2, [e2]).
myRule(t2, [a1,a3,d2,s1,u2]).
myRule(t2, [d2,s1]).
myRule(t2, [b3,z2]).
myRule(t2, [s2,z2]).
myRule(t2, [d1,u2]).
myRule(t2, [b1,u2]).
myRule(t2, [b3]).
myRule(t2, [a3,s2,u2,z2]).
myRule(t2, [a1,c3,e1]).
myRule(t2, [a2,a3,c2,c3,d2,f1]).
myRule(t2, [a1,c3,s2,u2,z2]).
myRule(t2, [s1,u2,z2]).
myRule(t2, [f1,q2]).
myRule(t2, [b3,q2,s1,u2]).
myRule(t2, [c1,d1,d2,f2]).
myRule(t2, [a3,f1,f2,q2,s1,z2]).
myRule(t2, [a1,a3,c2,e2,s1,z2]).
myRule(t2, []).
myRule(t2, [s1,s2,u2,z2]).
myRule(t2, [e2,f2,s1,z2]).
