generation_settings([40,15,40,15,20,[17,20],[0,6],[0,6]]).
% number of sentences (input):    40
% number of assumptions (input):  15
% number of sentences:            40
% number of assumptions:          15
% number of rule heads:           20
% number of rules per head:       [17,20]
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

contrary(a1, c2).
contrary(a2, e1).
contrary(a3, v1).
contrary(b1, a1).
contrary(b2, p3).
contrary(b3, t2).
contrary(c1, w1).
contrary(c2, t1).
contrary(c3, a3).
contrary(d1, s2).
contrary(d2, a2).
contrary(e1, w2).
contrary(e2, s1).
contrary(f1, z1).
contrary(f2, r2).

myRule(p1, [e1,u2]).
myRule(p1, [b1,b2,c2,c3,d2]).
myRule(p1, []).
myRule(p1, [b3,p3,x1,y2]).
myRule(p1, [r2]).
myRule(p1, [r2,u1,v1,v2,x1]).
myRule(p1, [c3,e1,s2]).
myRule(p1, [r3]).
myRule(p1, [z2]).
myRule(p1, [q1,s1,x2]).
myRule(p1, [c1,d2,s2,t2,v1]).
myRule(p1, [p2]).
myRule(p1, [b2,c2,c3,e1]).
myRule(p1, [f2,t1]).
myRule(p1, [r1,s2,t2,v1,w2,y1]).
myRule(p1, [b2]).
myRule(p1, [s1,w2]).
myRule(u2, [p3,q1,r2,y1,y2]).
myRule(u2, [a2,a3,b3,c3,d2,f1]).
myRule(u2, [p2,w1,y2]).
myRule(u2, [a1]).
myRule(u2, [b3,c2,d2,e2]).
myRule(u2, [b2,c1,d2]).
myRule(u2, [a2,c2,e2]).
myRule(u2, [t1,v1,z1]).
myRule(u2, [a1,c3,e1,e2,f2,w2]).
myRule(u2, [a2,c3,t1,u1,x1,x2]).
myRule(u2, [a1,d1,r1]).
myRule(u2, [b1,p3,r2]).
myRule(u2, [a3,c3,q1,r2,v2,y1]).
myRule(u2, [a3,e2,p3,v1,x1]).
myRule(u2, [c1,c2,c3,d1,p2]).
myRule(u2, [b3,c1,c2,f1,w1]).
myRule(u2, []).
myRule(u2, [c2,r1,r3,u1,y1]).
myRule(s1, [a1,a2,e1,e2,q1]).
myRule(s1, [p3,q3,r3]).
myRule(s1, [a2,b1,d2,p2,x2]).
myRule(s1, [a1,q1]).
myRule(s1, [v2,y1]).
myRule(s1, [x2]).
myRule(s1, [b1,b2,d2,e1]).
myRule(s1, [f1,q1,r2,u1,z2]).
myRule(s1, [c2,q2,q3,r2,v1,v2]).
myRule(s1, [c1,d1,y1]).
myRule(s1, [b3,c1,c2,c3,d1]).
myRule(s1, [c2]).
myRule(s1, []).
myRule(s1, [w1,x1,x2]).
myRule(s1, [e1,f2,s2,x2,z1]).
myRule(s1, [w2]).
myRule(s1, [r2]).
myRule(w2, [c3,s2,u1,x2]).
myRule(w2, [b3,c2,d1,v2]).
myRule(w2, [d2,e1,q1,q2,t1,t2]).
myRule(w2, [p2,r2,r3,t1,t2]).
myRule(w2, [d1,e2,f2,v1,x2,z1]).
myRule(w2, [d2]).
myRule(w2, [b1,f1,y2,z2]).
myRule(w2, [c1,t1,x2,y1]).
myRule(w2, [c1,r3]).
myRule(w2, [b1,d1]).
myRule(w2, [b2,r2,t1,x1]).
myRule(w2, [a2,q1,u1,x1,x2]).
myRule(w2, [z1]).
myRule(w2, [q1,x1,x2]).
myRule(w2, [c3]).
myRule(w2, [d1]).
myRule(w2, [a1,a2,b3,d1]).
myRule(w2, [a2]).
myRule(w2, []).
myRule(w2, [b1,c2,t1,u1,y1]).
myRule(t1, [c2,r2]).
myRule(t1, [a2,b2,e1,f1]).
myRule(t1, [b3,c1]).
myRule(t1, [q1]).
myRule(t1, [b1,b3,d2,e1,e2]).
myRule(t1, [f2,u1]).
myRule(t1, [e2,f1,z1]).
myRule(t1, [b3,d1,t2,v1]).
myRule(t1, [q3,r1,r3,t2,x1]).
myRule(t1, []).
myRule(t1, [a1,a3,c1,c2,e1]).
myRule(t1, [c1,c3,s2]).
myRule(t1, [b1,c2,e2]).
myRule(t1, [a3,c3,e1,e2,f2,z1]).
myRule(t1, [a2,r3,t2,v2,z2]).
myRule(t1, [a2,b1,b2,c2,d2]).
myRule(t1, [a1,b2,c3,s2,w1,z1]).
myRule(t1, [a1,c3,f2,x1]).
myRule(t1, [a3,d2,q3,x2]).
myRule(p2, [f1,f2]).
myRule(p2, [v1]).
myRule(p2, [f1,p3,r3]).
myRule(p2, [a1,c3,f1,r3,w1]).
myRule(p2, [a3,b1,t2,u1,w1,z2]).
myRule(p2, [d1,p3,q3,r1,t2,w1]).
myRule(p2, [b2,t2]).
myRule(p2, [f2,t2,u1]).
myRule(p2, [a2,b1,c1,c2,d2,r3]).
myRule(p2, [e2]).
myRule(p2, [x2,z2]).
myRule(p2, [x2]).
myRule(p2, [q1,w1]).
myRule(p2, [d1,f1,p3,v2]).
myRule(p2, [p3,q1,q2,u1,y1,z2]).
myRule(p2, []).
myRule(p2, [a1,r3,w1]).
myRule(p2, [a2,v2,y2]).
myRule(p2, [a3,c2]).
myRule(z2, [e1]).
myRule(z2, [u1]).
myRule(z2, [q1,q3,r2,r3,s2,v2]).
myRule(z2, [c2]).
myRule(z2, [f1,q1,r1,v1,w1,y2]).
myRule(z2, [e2,u1,v1,z1]).
myRule(z2, [p3,v2,y2]).
myRule(z2, [d2,q1,r2,t2,u1,v2]).
myRule(z2, [a2,a3,b1,f2,y2]).
myRule(z2, [a1,b3,e1,e2,q3,x1]).
myRule(z2, [a1,c1,d1,r3,t2]).
myRule(z2, []).
myRule(z2, [a1,a3,b2,c1,f1,f2]).
myRule(z2, [b2,b3,d2,e2,f1]).
myRule(z2, [b1,c3,p3,x1]).
myRule(z2, [q2,v1,v2,w1,y1,z1]).
myRule(z2, [a2,a3,b1,b2,c1,s2]).
myRule(z2, [b2,c1,v1]).
myRule(z2, [q2,v2]).
myRule(z2, [y1,z1]).
myRule(y2, [c3,f2,t2,u1,x2]).
myRule(y2, [q3,r1,s2,t2,x1]).
myRule(y2, [a1,b2,c1,w1,x1,x2]).
myRule(y2, [f2,x2]).
myRule(y2, [q1,t2]).
myRule(y2, [v1]).
myRule(y2, [b3,r1,r3,v1]).
myRule(y2, [c1,f1,v1]).
myRule(y2, [a1,a3,d1,q3,r3,x1]).
myRule(y2, []).
myRule(y2, [a1,a2]).
myRule(y2, [b1,b3,c1,e1,f1,y1]).
myRule(y2, [z1]).
myRule(y2, [f1,f2,s2,v2,z1]).
myRule(y2, [e1,f1,q1,x1]).
myRule(y2, [b1,b2,d1,t2]).
myRule(y2, [e2,q3,s2,x1]).
myRule(q2, [a2,u1]).
myRule(q2, [b3,d1,v1,w1,y1]).
myRule(q2, [a1,d2,t2,z1]).
myRule(q2, [r1]).
myRule(q2, [a2,a3]).
myRule(q2, [b1,b3,d1,f1]).
myRule(q2, [e1,e2,p3,q3,r2,t2]).
myRule(q2, [d1]).
myRule(q2, [v1,z1]).
myRule(q2, [d2,e1,s2,t2,u1,y1]).
myRule(q2, [c1,d1]).
myRule(q2, [a2,d2,f1]).
myRule(q2, [a1,e2,s2]).
myRule(q2, [b1,d1]).
myRule(q2, [a3,c1,e2]).
myRule(q2, []).
myRule(q2, [v1,v2,y1]).
myRule(p3, [u1]).
myRule(p3, [b2,d1,q1,r2,v1]).
myRule(p3, [a3,c1,d2,e2,f1,x2]).
myRule(p3, [b3,r2]).
myRule(p3, [a2,e2,u1,w1,y1]).
myRule(p3, [b3,c1,r2,s2,t2]).
myRule(p3, [b3,c2]).
myRule(p3, [a2,a3,f2,r2,r3]).
myRule(p3, [r3]).
myRule(p3, [d1,e1,e2]).
myRule(p3, [e2]).
myRule(p3, []).
myRule(p3, [b3,f2]).
myRule(p3, [d2,e2,t2,x2,y1]).
myRule(p3, [a3]).
myRule(p3, [a3,e1,e2,q1,v2,x1]).
myRule(p3, [v2]).
myRule(q3, [a2,q1,v2,x2]).
myRule(q3, [d1,d2,q1]).
myRule(q3, [r2,u1,v1]).
myRule(q3, [d1]).
myRule(q3, [q1,r3,s2,v2,x1,y1]).
myRule(q3, [e2,v2]).
myRule(q3, [d1,e2,r3,t2,u1,v2]).
myRule(q3, [a3]).
myRule(q3, [f2,t2,v2,w1,x1,x2]).
myRule(q3, [w1]).
myRule(q3, [a3,c1,c2,e1,f1,f2]).
myRule(q3, [r1,t2,u1]).
myRule(q3, [b1,e1,r2,s2]).
myRule(q3, [a1,d2,f2]).
myRule(q3, []).
myRule(q3, [c2,r3,z1]).
myRule(q3, [x2]).
myRule(q3, [f1,r1,v2]).
myRule(q3, [c1,c3,d1]).
myRule(v1, [b1,b3,d2,e1,f1]).
myRule(v1, [f2]).
myRule(v1, [b1,r1,t2,v2,x1,y1]).
myRule(v1, [b2]).
myRule(v1, [d1,r1,u1]).
myRule(v1, [b1]).
myRule(v1, []).
myRule(v1, [a1,s2]).
myRule(v1, [b3,c2,d1,r1,v2,y1]).
myRule(v1, [a3,c2,c3,d2,r1,r3]).
myRule(v1, [s2]).
myRule(v1, [b1,c2,c3,e2,f1]).
myRule(v1, [x1]).
myRule(v1, [b1,c2,d1,d2,e2,f2]).
myRule(v1, [a3,e2,f2]).
myRule(v1, [a3,f1,f2,s2]).
myRule(v1, [a2,a3,b1,e2,w1,x2]).
myRule(v1, [b3,c2,d1,d2,f1]).
myRule(r1, [r3,z1]).
myRule(r1, [x2]).
myRule(r1, [d2,e2,t2]).
myRule(r1, [c3,d2,f2,r2,x1,y1]).
myRule(r1, [w1]).
myRule(r1, [a2,b2,e1,f1]).
myRule(r1, [q1,t2,x1,z1]).
myRule(r1, [u1,v2]).
myRule(r1, [c2,e1,e2,q1]).
myRule(r1, [t2,u1,v2,w1,y1]).
myRule(r1, [a2,e2]).
myRule(r1, [u1,v2,y1]).
myRule(r1, []).
myRule(r1, [a3]).
myRule(r1, [a3,b2,s2,w1,x2]).
myRule(r1, [u1,x2]).
myRule(r1, [b2,e2,r3,t2,w1,x2]).
myRule(w1, [s2,u1]).
myRule(w1, [a1,a2,b3,c1,d2]).
myRule(w1, [q1,r2,t2,y1]).
myRule(w1, [c3,e2,x2,y1]).
myRule(w1, [r2,y1]).
myRule(w1, [r2,x1,x2,y1]).
myRule(w1, [a1,b1,f1,t2,v2]).
myRule(w1, [a2,b2,d1,e2,u1]).
myRule(w1, [s2,v2]).
myRule(w1, [b1]).
myRule(w1, [q1,v2,y1]).
myRule(w1, [a1,a2,b2,t2,x1]).
myRule(w1, [a1,b2,f1]).
myRule(w1, [a3,d1,r3,v2]).
myRule(w1, [c2,c3,e2,r2,y1]).
myRule(w1, []).
myRule(w1, [q1,y1]).
myRule(w1, [a1,b3,d1,e1]).
myRule(u1, [b2,v2,x1]).
myRule(u1, [q1,r3,s2,v2,x2]).
myRule(u1, [b1,d2]).
myRule(u1, [r2,t2,x2,y1]).
myRule(u1, [b1,z1]).
myRule(u1, [b1,b2,d2,e1,e2,f1]).
myRule(u1, [c3,r3,s2,x2]).
myRule(u1, [c3,d2,f2]).
myRule(u1, [r2]).
myRule(u1, [b1,b2,c1,x2,y1]).
myRule(u1, [d1,f1,y1]).
myRule(u1, [a3,b3]).
myRule(u1, []).
myRule(u1, [r2,r3,y1]).
myRule(u1, [t2]).
myRule(u1, [r3,x1,x2]).
myRule(u1, [q1,x2]).
myRule(u1, [c2,d2]).
myRule(u1, [q1,r2,r3,t2,v2]).
myRule(u1, [b3]).
myRule(z1, [b2,v2]).
myRule(z1, [a3,f1,x1]).
myRule(z1, [c1,d2]).
myRule(z1, [e1,x2]).
myRule(z1, [c2,f2,y1]).
myRule(z1, [s2,x1,y1]).
myRule(z1, []).
myRule(z1, [r2,s2]).
myRule(z1, [c3]).
myRule(z1, [v2]).
myRule(z1, [r2,r3,s2,y1]).
myRule(z1, [a1,b1,d1,r3]).
myRule(z1, [a1,c3,d1,e2]).
myRule(z1, [b2,c3,q1,s2]).
myRule(z1, [e1,e2]).
myRule(z1, [a2,c2,r3,t2,x2]).
myRule(z1, [d2]).
myRule(q1, [b1,f2,s2]).
myRule(q1, [s2,t2,x1,y1]).
myRule(q1, [d2,r2,v2,x1,y1]).
myRule(q1, [e2,r3,s2,v2,x1,y1]).
myRule(q1, [c3,x2,y1]).
myRule(q1, [a2,r3,s2,v2,x1,x2]).
myRule(q1, [a1,b2,b3,t2]).
myRule(q1, [x1]).
myRule(q1, [b3,d1,s2]).
myRule(q1, [a1,a2,s2]).
myRule(q1, [a3,b1]).
myRule(q1, [a1,a3,b3,c1,e1]).
myRule(q1, [b2,c2,d1,d2]).
myRule(q1, [a2,c2,c3,v2]).
myRule(q1, [a1,a3,b1,c1,c2]).
myRule(q1, [c2,c3,f1]).
myRule(q1, [a2,b2,e2,f2,r3]).
myRule(q1, [a2,r3,s2,x2,y1]).
myRule(q1, [b1,c1,e1,f1]).
myRule(q1, []).
myRule(r3, [c1,x2]).
myRule(r3, [e2,t2,v2,x1]).
myRule(r3, [d1,e2]).
myRule(r3, [r2,x2]).
myRule(r3, [s2,t2,v2,x1,y1]).
myRule(r3, [d1,d2,t2]).
myRule(r3, [b1]).
myRule(r3, [r2,s2,v2]).
myRule(r3, [b1,b3,f2,t2,x2]).
myRule(r3, [s2,t2,v2,x1,x2]).
myRule(r3, []).
myRule(r3, [d2]).
myRule(r3, [c3,e1,e2,y1]).
myRule(r3, [a3,b2,b3,c1,e2]).
myRule(r3, [a1,a2,c2,f1]).
myRule(r3, [a2,d1,f1,s2,t2]).
myRule(r3, [a1,a2,a3,c2,f1]).
myRule(s2, [t2,x1,y1]).
myRule(s2, [t2,v2,x1,x2,y1]).
myRule(s2, [r2,v2,x1,y1]).
myRule(s2, [a3,b3,d1,r2,x1]).
myRule(s2, [a2,r2,t2]).
myRule(s2, [t2,x2]).
myRule(s2, [r2,t2,x1,y1]).
myRule(s2, [a1,c1,c2,f1,r2,x2]).
myRule(s2, [b2,d1,f1,r2]).
myRule(s2, [c2,y1]).
myRule(s2, [r2,t2,v2,x1,x2,y1]).
myRule(s2, [a1,t2,v2,y1]).
myRule(s2, [a1,a3,b1,c3,f1]).
myRule(s2, [d1,r2]).
myRule(s2, [c2,c3]).
myRule(s2, [a3,d2,r2,v2,x1,y1]).
myRule(s2, [e2,t2,x2]).
myRule(s2, []).
myRule(y1, [b1,c2,t2]).
myRule(y1, [a1,b1,e2,f1,r2,v2]).
myRule(y1, [b3,c1,r2,v2,x1,x2]).
myRule(y1, [a2,b2,c1,c3,d2,f2]).
myRule(y1, [a1,c3,r2,t2,x1,x2]).
myRule(y1, [x1]).
myRule(y1, [r2,t2,v2,x2]).
myRule(y1, [a1,b1,e2,t2,v2,x1]).
myRule(y1, [b2,b3,d1,t2,x2]).
myRule(y1, [a3,b2,f2,x2]).
myRule(y1, [r2,t2,x1,x2]).
myRule(y1, [a2]).
myRule(y1, [a1,c3,d2]).
myRule(y1, [b1,v2]).
myRule(y1, [t2,v2]).
myRule(y1, [r2,x1,x2]).
myRule(y1, [d1]).
myRule(y1, [r2,v2,x1,x2]).
