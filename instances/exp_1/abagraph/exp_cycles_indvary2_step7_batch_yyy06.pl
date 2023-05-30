generation_settings([40,15,40,15,20,[20,23],[0,6],[0,6]]).
% number of sentences (input):    40
% number of assumptions (input):  15
% number of sentences:            40
% number of assumptions:          15
% number of rule heads:           20
% number of rules per head:       [20,23]
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

contrary(a1, w1).
contrary(a2, r1).
contrary(a3, b1).
contrary(b1, x1).
contrary(b2, f2).
contrary(b3, a2).
contrary(c1, v2).
contrary(c2, x2).
contrary(c3, w1).
contrary(d1, y1).
contrary(d2, z1).
contrary(e1, z2).
contrary(e2, p1).
contrary(f1, b3).
contrary(f2, p3).

myRule(q3, [p1,p3,r2,v2]).
myRule(q3, [w1]).
myRule(q3, [a2,d2,f1,p3,q1,v2]).
myRule(q3, [a1,f2]).
myRule(q3, [a2,c2,e2]).
myRule(q3, [t1,u1,y1,z2]).
myRule(q3, [a2,b1,c2,e1,e2]).
myRule(q3, [p1]).
myRule(q3, [b3,c2,d1,r3]).
myRule(q3, [b2,e2]).
myRule(q3, [b1,e1,f1,q2,z2]).
myRule(q3, [a1,a3,b2,b3,c3,d2]).
myRule(q3, [e1,e2,p1,p3,r1,y1]).
myRule(q3, [r1,y2]).
myRule(q3, [a1,a2,b2,d2,e1,f2]).
myRule(q3, [q1,u1,v2,x2]).
myRule(q3, [y1]).
myRule(q3, [b3,c2,e2,f1]).
myRule(q3, []).
myRule(q3, [a1,c1,v2,y2]).
myRule(q3, [c3]).
myRule(p3, [a1,a2,b3,c1]).
myRule(p3, [a2,b2,b3,d2]).
myRule(p3, [r2,w1]).
myRule(p3, [s1,t2]).
myRule(p3, [e2,f2,t2]).
myRule(p3, [b1,b2,b3,e1,f2]).
myRule(p3, [e1,e2,p2,r1,t2]).
myRule(p3, [a1,c2,d1,e1,v2,y1]).
myRule(p3, [d1,f2,r3,y1,z1]).
myRule(p3, []).
myRule(p3, [b1,d1]).
myRule(p3, [p2,q2,q3,r1,w1,y1]).
myRule(p3, [b3]).
myRule(p3, [a1,a3,b3,c3,z1]).
myRule(p3, [a1,q3,y2]).
myRule(p3, [e2]).
myRule(p3, [r2,u2,z1]).
myRule(p3, [b2,c1,q3,t1,v2,x1]).
myRule(p3, [f2]).
myRule(p3, [a3,c1,e1,u1,z2]).
myRule(r3, [a3,b1,p1,s2,v2]).
myRule(r3, [y1]).
myRule(r3, [b3,p2,t1,x1]).
myRule(r3, [b2,t1,y2,z1]).
myRule(r3, [b2,q3,w2]).
myRule(r3, [a3,b2,d1]).
myRule(r3, [b3,d2,e1]).
myRule(r3, [p1,q1,q2,r2,w2]).
myRule(r3, [b3,f2,q2,w2,x1,y1]).
myRule(r3, [f2]).
myRule(r3, [a3,p1,q3,r2,z1]).
myRule(r3, []).
myRule(r3, [a2,p3,s2,u2,z2]).
myRule(r3, [a1,c1]).
myRule(r3, [a1,d2,f2,w2]).
myRule(r3, [z2]).
myRule(r3, [a1]).
myRule(r3, [a2,v1]).
myRule(r3, [a2,b3,c3,f2]).
myRule(r3, [p3,v2,x1]).
myRule(r3, [a1,v1,w1,w2]).
myRule(p2, [s1,u2,w1]).
myRule(p2, [a1,a3,e1,f1]).
myRule(p2, [q3,r1,s2,t1,u2,w1]).
myRule(p2, [v2]).
myRule(p2, [c2,q3,s1,v2,w1]).
myRule(p2, [s1,y1]).
myRule(p2, [e1,r3]).
myRule(p2, [a1,a2,v1,v2]).
myRule(p2, [p1,v1,x1]).
myRule(p2, [c1,f1]).
myRule(p2, [q3]).
myRule(p2, [b1,e2,f2,w2,x2,y2]).
myRule(p2, [b2,c1,e2,s1,x2]).
myRule(p2, [r1,w1,x1]).
myRule(p2, [e2,v1,w2]).
myRule(p2, [u1,z2]).
myRule(p2, [c1]).
myRule(p2, [b2,c2,f1,f2,w2,y2]).
myRule(p2, [e1,s2]).
myRule(p2, []).
myRule(t1, [q3]).
myRule(t1, [a2,b1,f1,f2,w1]).
myRule(t1, [b2,b3,d1,u2,v1]).
myRule(t1, [p3,r1,s1,z2]).
myRule(t1, [p3,r2,w1]).
myRule(t1, [v2]).
myRule(t1, [b2,d2,v2]).
myRule(t1, [d2,e1,e2,t2,x1,y1]).
myRule(t1, [a2,d1]).
myRule(t1, [a1,b1,c2,r3]).
myRule(t1, [a2,b1,c1,c2,d2]).
myRule(t1, []).
myRule(t1, [p2,s2,v1,w1,y1,y2]).
myRule(t1, [e1]).
myRule(t1, [d1,d2,p1,r1]).
myRule(t1, [e2,p1]).
myRule(t1, [b1,d2,e1,e2,v2]).
myRule(t1, [b1,c2,d2,e1,t2,z2]).
myRule(t1, [b2,c2,d1,z2]).
myRule(t1, [a2,b3,d2,e2,f1]).
myRule(t1, [c1,c2,p3,u2,w2]).
myRule(r1, [c3,s1]).
myRule(r1, [c3,r2,s2,w1]).
myRule(r1, [e1,q2,q3]).
myRule(r1, [d1]).
myRule(r1, [b2,b3,e1,r3,s2,t1]).
myRule(r1, [a2,f1]).
myRule(r1, [d2,f2]).
myRule(r1, [p1]).
myRule(r1, [f1,f2,x2,z2]).
myRule(r1, [a2,d2,x1]).
myRule(r1, [a2,b3,c2,f1,f2,w2]).
myRule(r1, [a3,e2,f1,f2]).
myRule(r1, [a2]).
myRule(r1, [q2]).
myRule(r1, [u1]).
myRule(r1, [t2]).
myRule(r1, [p1,p3,t2,u2,z2]).
myRule(r1, [f2,v2]).
myRule(r1, []).
myRule(r1, [p1,p2,t1,v1,w1]).
myRule(r1, [a3,b2,c1,d2,q2]).
myRule(r1, [b3,c1,c3]).
myRule(z1, [a2,c2,f1,t2,w2,y2]).
myRule(z1, [a2,b3,c1,d1,d2,u1]).
myRule(z1, [b1,q1,u2,y2,z2]).
myRule(z1, [p3,q1,s2,y2]).
myRule(z1, [b1,c1,d1,e2,t1]).
myRule(z1, [b2,q1,r3]).
myRule(z1, [x1]).
myRule(z1, []).
myRule(z1, [c1,e2,r1,y2]).
myRule(z1, [b2,q3,y2]).
myRule(z1, [c3,q1,t1,u1]).
myRule(z1, [f2]).
myRule(z1, [a1,a2,a3]).
myRule(z1, [c3,p2,r3,t2]).
myRule(z1, [p2,v1]).
myRule(z1, [b3,c2,d1,e1,e2]).
myRule(z1, [a1,b3,p1,v2,y1]).
myRule(z1, [a3,b1,f1,r1,t1,z2]).
myRule(z1, [b1,b3,q2]).
myRule(z1, [p3,r2,v2]).
myRule(z1, [p2]).
myRule(z1, [a2,c2,c3,f2]).
myRule(q2, [q1,w1,x1,y2]).
myRule(q2, [x2]).
myRule(q2, [p3,v2]).
myRule(q2, [d1,f2,r1,s2,y1,y2]).
myRule(q2, [a2,d1,t2]).
myRule(q2, [w1]).
myRule(q2, [a1,d2,e1,x2,z2]).
myRule(q2, [a1,c1,r2,t1]).
myRule(q2, [f1]).
myRule(q2, [q3,r1,t2,u1,u2]).
myRule(q2, [b1,e2,f2]).
myRule(q2, [b2,c3]).
myRule(q2, [a3,d1]).
myRule(q2, []).
myRule(q2, [b2,c2,r1,v2,z1,z2]).
myRule(q2, [a3,c2,v1,v2,x2]).
myRule(q2, [b2,u2]).
myRule(q2, [b3]).
myRule(q2, [p1]).
myRule(q2, [z1]).
myRule(q2, [t2]).
myRule(q2, [c1,d2,f2]).
myRule(u1, [e2]).
myRule(u1, [b3,c1,c2,c3,t2]).
myRule(u1, [p1]).
myRule(u1, [b2,b3,c1,d2,e2,f1]).
myRule(u1, [d2,q2,s2,x2]).
myRule(u1, [c3]).
myRule(u1, [r2]).
myRule(u1, [a1,a3,c2,e1,e2,f2]).
myRule(u1, [x1,z2]).
myRule(u1, [d1,f1,u2,v2,w2]).
myRule(u1, [c1,d2]).
myRule(u1, [p1,s2,v2,w1]).
myRule(u1, [r3]).
myRule(u1, [p3,r2,x1,y2]).
myRule(u1, [q2,u2,w1,x2,z1,z2]).
myRule(u1, [q3,u2,z1]).
myRule(u1, [b3,c3,d2,e1,e2,w1]).
myRule(u1, []).
myRule(u1, [c3,e2,t2]).
myRule(u1, [t1,t2]).
myRule(u1, [c2]).
myRule(z2, [a2]).
myRule(z2, [c3]).
myRule(z2, [a1,a2,a3,b2,c2,f2]).
myRule(z2, [d1,d2,x2]).
myRule(z2, [t2]).
myRule(z2, [a2,c1,c3,d2,e2]).
myRule(z2, [c1,c2,c3]).
myRule(z2, [c3,r2,w2,x1]).
myRule(z2, [c2,c3,q3,v1]).
myRule(z2, [b3,q1,q2,s1,x1,z1]).
myRule(z2, [q2,r1,r3,t1,x2,y1]).
myRule(z2, [a1,p3,x2,y2]).
myRule(z2, [c1,p3,r1,w1,x1,x2]).
myRule(z2, [a3,c2,d1,f1]).
myRule(z2, [w1]).
myRule(z2, [p2,w2]).
myRule(z2, [b1,b3,c2,e2,f2]).
myRule(z2, [a2,b1]).
myRule(z2, [b2,e1,f1,r2,r3,y1]).
myRule(z2, [b1,c2,y1]).
myRule(z2, [u1,w1]).
myRule(z2, []).
myRule(w2, [p3,s2,t2,u1,v2]).
myRule(w2, [a1,a2,d1,d2,e2]).
myRule(w2, [z1]).
myRule(w2, [a1,a3,d1,e2]).
myRule(w2, [a3]).
myRule(w2, [b3,r3,s2,v2]).
myRule(w2, [a1,b2,d1,d2,e1,q3]).
myRule(w2, [p3]).
myRule(w2, []).
myRule(w2, [c1,r2]).
myRule(w2, [c1,d2,e1,t2,u1,y2]).
myRule(w2, [b1,y1]).
myRule(w2, [q1]).
myRule(w2, [a1,b2,e2,q2,x1]).
myRule(w2, [c1,d2]).
myRule(w2, [b2,f2,q2,s1,v1,z2]).
myRule(w2, [r3]).
myRule(w2, [q1,u1,v1]).
myRule(w2, [d1]).
myRule(w2, [q1,s1,v1,w1,z2]).
myRule(y2, [b2,e1]).
myRule(y2, [q3,r3,u1,x2]).
myRule(y2, [d1,e2]).
myRule(y2, [a3,b1,c2,c3,f1]).
myRule(y2, [s1,s2,w1,z1]).
myRule(y2, [a1,d1,s1]).
myRule(y2, [b1,b2,e1,w2]).
myRule(y2, [f1,t2]).
myRule(y2, [b2,d1,q3,u2,v1,y1]).
myRule(y2, [c3]).
myRule(y2, [e2,f1,f2,t1]).
myRule(y2, [d1,e1,w2]).
myRule(y2, [a1,b2,f2,w2,z2]).
myRule(y2, [a3,c2,c3,e2]).
myRule(y2, [b2,d1,r2,r3,x2,y1]).
myRule(y2, []).
myRule(y2, [a3,c3,e1,f2,v2]).
myRule(y2, [a1,a2,b3,r1,w1]).
myRule(y2, [q2,u2]).
myRule(y2, [b1,e2,f1,s1,t1,x1]).
myRule(y2, [d1,f1,t2]).
myRule(y2, [t2]).
myRule(y2, [p1,q1,x2]).
myRule(s1, [p1,p2,w1]).
myRule(s1, [c1,p1,s2,t2,v2,y2]).
myRule(s1, [b2,c3,f1,f2]).
myRule(s1, [q1,q2,r2,t2,u1]).
myRule(s1, [b1,b3,c2,d2]).
myRule(s1, [p1,s2,t1,u1]).
myRule(s1, [a1,e2,p3,r3,t1,y1]).
myRule(s1, []).
myRule(s1, [f1,q3,r1,x2]).
myRule(s1, [a2,c3,d2]).
myRule(s1, [e1]).
myRule(s1, [q2,r3,z1,z2]).
myRule(s1, [q3,s2]).
myRule(s1, [e2]).
myRule(s1, [d1,d2,t1]).
myRule(s1, [b2,e2,f1,w1,x2,y2]).
myRule(s1, [c3,p1,p3,r2,s2,w2]).
myRule(s1, [a2,f2,w1,w2,z2]).
myRule(s1, [a2,c2,e2,t1,v1,z1]).
myRule(s1, [r3,t1]).
myRule(s1, [b1,c1,e2,q2,t2,v2]).
myRule(u2, [a3,b1,d1,d2,f2,v1]).
myRule(u2, [a1,b2,c1,c2,e1,e2]).
myRule(u2, [a3,q1,r3]).
myRule(u2, [a1,b1,d1,f1,f2]).
myRule(u2, [b2,d2,e2,f1,v2]).
myRule(u2, [a3]).
myRule(u2, [a1,a2,e1,f2]).
myRule(u2, [e2,r1,s2,z1]).
myRule(u2, [f2,q2]).
myRule(u2, [f2,p1,r2,r3,u1,x2]).
myRule(u2, [p2]).
myRule(u2, [c3]).
myRule(u2, [a2,c2,e2,t2,u1]).
myRule(u2, [b2,e2,p1]).
myRule(u2, [b3,e1,f1,v2]).
myRule(u2, [p3,w1]).
myRule(u2, [a3,c1,e1,f1,q2,r1]).
myRule(u2, [v1,x1]).
myRule(u2, [c3,s1,z1]).
myRule(u2, [r3,s2,u1,y1]).
myRule(y1, [c1,c2,d1,f2]).
myRule(y1, [b2,e2,f2,w1,x1,z1]).
myRule(y1, [e1,p1,p2,p3,x2,z2]).
myRule(y1, [c1,d2,e1,f1,t2]).
myRule(y1, [p3,r3,w1,x1,y2]).
myRule(y1, [r1,r3,z2]).
myRule(y1, [v2]).
myRule(y1, [f2,u2]).
myRule(y1, [a2,c2,c3]).
myRule(y1, [f2,p1,v1]).
myRule(y1, [a1,a2,r3]).
myRule(y1, [a1,c3,d2,f1,f2]).
myRule(y1, [d1]).
myRule(y1, [b3,c1,c2,e1]).
myRule(y1, [f2,q3,r1,w1]).
myRule(y1, [a1,p1,t1,u1,w1,x1]).
myRule(y1, [r3,w2,y2,z2]).
myRule(y1, [b1,c2,d1,r2]).
myRule(y1, [c2,e1,r2,x2,z1]).
myRule(y1, [a2,a3,d1,u1]).
myRule(y1, [p2]).
myRule(y1, [a1,c2,d2,e1,p2,s2]).
myRule(y1, []).
myRule(q1, [a2,b3,c3,w2,x2]).
myRule(q1, [p1,p3,w2]).
myRule(q1, [r3,w1]).
myRule(q1, [p1,q2,r1,r3,s1,u2]).
myRule(q1, [q2,q3,r2,s2]).
myRule(q1, [a1,b2,c2,c3,f2]).
myRule(q1, [a3,b1,b2,c1]).
myRule(q1, [a1,d2,f2]).
myRule(q1, [b2,p1,r1,y1,y2]).
myRule(q1, []).
myRule(q1, [b1]).
myRule(q1, [e2,p3,s1,u1]).
myRule(q1, [b3]).
myRule(q1, [e1]).
myRule(q1, [a1,b2,t2]).
myRule(q1, [a3,c1,f2]).
myRule(q1, [f1]).
myRule(q1, [v2,x1,z1]).
myRule(q1, [c1,e1]).
myRule(q1, [r1,y2,z1]).
myRule(q1, [p1,w1]).
myRule(v1, [a1,c3,f1,f2,q2]).
myRule(v1, [c3,q2]).
myRule(v1, [a1,a2,b1,c1,c3,f2]).
myRule(v1, [a2]).
myRule(v1, [q1,q2,r1,s2,u1,w1]).
myRule(v1, [a1,b2,f2,p1,r3,x1]).
myRule(v1, [a3,d2]).
myRule(v1, [e2,f2]).
myRule(v1, [a2,d2,r3,w2,z1]).
myRule(v1, [a2,b1,b3,d1,d2,f2]).
myRule(v1, [q3]).
myRule(v1, []).
myRule(v1, [e2,f1]).
myRule(v1, [b3]).
myRule(v1, [a2,b2,b3,d2]).
myRule(v1, [a2,a3,b2]).
myRule(v1, [a3,r2,w2,x1]).
myRule(v1, [q1,z2]).
myRule(v1, [a2,b2,b3,e1,f1]).
myRule(v1, [a2,b2,q1,r3]).
myRule(x2, [a2,b2,b3,f1]).
myRule(x2, [a3,c3,q1,q2,s2]).
myRule(x2, [b2]).
myRule(x2, [q3,y2]).
myRule(x2, [d1,q3,y1,z2]).
myRule(x2, [s2,v2,w1,z1]).
myRule(x2, [c1,p1,q2,v1,y1]).
myRule(x2, [b1,r1]).
myRule(x2, [c1,e2,u2,w2,x1]).
myRule(x2, [d2,e1]).
myRule(x2, []).
myRule(x2, [s2]).
myRule(x2, [w1]).
myRule(x2, [p3,r1,u1,v1,z1]).
myRule(x2, [c2]).
myRule(x2, [q1,q2,r1,s2,u1]).
myRule(x2, [b1]).
myRule(x2, [q3]).
myRule(x2, [b3]).
myRule(x2, [a2,c1,c2,c3,s2]).
myRule(v2, [p2,r1,s2]).
myRule(v2, [f1]).
myRule(v2, [r1,y2]).
myRule(v2, [q2,y2]).
myRule(v2, [b1,z1]).
myRule(v2, [a2,a3,e1]).
myRule(v2, [c3,t2]).
myRule(v2, [b2,r1]).
myRule(v2, [p3,x2,y2]).
myRule(v2, [a2,c2,d1,d2]).
myRule(v2, [b3,f1]).
myRule(v2, [b3,f2,q1,v1]).
myRule(v2, [b1,c1,c3,d2,e1]).
myRule(v2, [a2,q3]).
myRule(v2, [a3,d2,e1,s1]).
myRule(v2, []).
myRule(v2, [a2,b3,e2]).
myRule(v2, [c1,d1,e1,s2,w1]).
myRule(v2, [r1,s2,w1,w2]).
myRule(v2, [v1]).
myRule(v2, [b3,c2,c3]).
myRule(v2, [b3,c2]).
myRule(w1, [p3,s1,t2,y2,z2]).
myRule(w1, [y2]).
myRule(w1, [a3,c1,c2,d2,s1]).
myRule(w1, [p1,r1,r3,s2,w2,z1]).
myRule(w1, [c2,e2]).
myRule(w1, [q1,v1,y1]).
myRule(w1, [p2,r3,s2,t2]).
myRule(w1, [b2,b3,f2]).
myRule(w1, [p1,v1]).
myRule(w1, [a2]).
myRule(w1, [b2]).
myRule(w1, [a2,a3,t1,u1]).
myRule(w1, [c3]).
myRule(w1, [b3]).
myRule(w1, [p3,z2]).
myRule(w1, [p3,q1,r3,t1,v2]).
myRule(w1, []).
myRule(w1, [b2,c1,c2,t1,y2]).
myRule(w1, [b3,d1,d2,p3]).
myRule(w1, [a3,d1,q1,z1]).
myRule(w1, [b3,p2,s2,x2]).
myRule(w1, [b1,p1,t2,x1]).
