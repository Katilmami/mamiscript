-- Lua simple XOR encrypt by Ganlv
-- https://github.com/ganlvtech/lua-simple-encrypt
key=gg.prompt({"Password:"},{""},{"text"})[1]local a=load((function(b,c)function bxor(d,e)local f={{0,1},{1,0}}local g=1;local h=0;while d>0 or e>0 do h=h+f[d%2+1][e%2+1]*g;d=math.floor(d/2)e=math.floor(e/2)g=g*2 end;return h end;local i=function(b)local j={}local k=1;local l=b[k]while l>=0 do j[k]=b[l+1]k=k+1;l=b[k]end;return j end;local m=function(b,c)if#c<=0 then return{}end;local k=1;local n=1;for k=1,#b do b[k]=bxor(b[k],string.byte(c,n))n=n+1;if n>#c then n=1 end end;return b end;local o=function(b)local j=""for k=1,#b do j=j..string.char(b[k])end;return j end;return o(m(i(b),c))end)({175,174,118,284,250,140,241,202,228,240,271,124,247,161,147,218,122,260,274,151,194,183,125,97,179,258,272,276,248,227,292,144,245,259,117,106,211,268,299,291,204,127,112,182,223,107,195,123,239,236,249,222,270,269,153,192,193,160,166,230,290,159,252,209,148,293,205,133,130,90,297,214,206,149,116,169,254,190,265,277,94,111,286,186,134,177,-1,120,170,115,0,13,229,248,57,203,111,6,146,213,187,228,62,101,240,74,8,0,149,42,103,21,4,32,70,145,31,38,25,149,17,27,56,0,71,14,127,12,21,224,32,216,251,70,56,243,40,125,199,187,91,114,252,102,6,13,249,25,44,2,165,26,168,25,155,204,169,52,163,88,80,8,35,183,128,194,84,133,146,0,20,167,47,182,21,37,42,0,52,35,227,53,70,19,111,140,5,151,190,216,21,205,88,125,40,0,178,118,132,250,6,69,70,206,44,3,62,211,95,4,12,57,142,147,0,123,224,26,1,169,6,120,0,0,17,244,95,79,63,114,88,150,96,191,55,83,2,183,99,62,0,66,50,27,145,32,207,42,57,31,62,153,66,3,61,108,91,199,21,78,3,92,41,59,213,25,60,71,8,21,61,26,8,246,24,212,7,29,122,211,216,175,121,227,25,207,67,54,130,226,116,4,14,8,203,218,187,0,70,1,70},key))if a then a()else gg.alert("WRONG PASSWORD!")end