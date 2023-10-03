local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Buying Script by DevinLittle", "DarkTheme")

-- sorry for the ugly code but u get it right its simple!!
--! Character Tab
local CharTab = Window:NewTab("Characters")
local CharSection = CharTab:NewSection("Buy Characters")

local charTable = {}


for i,v in pairs(game:GetService("ReplicatedStorage").Products.Shop.ItemsAvailable.Skins:GetChildren()) do

    table.insert(charTable, v.Name)
end

local selected = ""

CharSection:NewDropdown("Select character to buy", "DropdownInf", charTable, function(value)
   selected = value
end)


CharSection:NewButton("Confirm Buy", "ButtonInfo", function()
    local args = {
        [1] = "DailyItem",
        [2] = selected
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Buy"):FireServer(unpack(args))    
end)

--! Marshmallow tab

local MarshTab = Window:NewTab("Marshmallow Tab")
local MarshSection = MarshTab:NewSection("Buy marshmallwowwwwww")

local marshTable = {}

for i2,v2 in pairs(game:GetService("ReplicatedStorage").Products.Shop.ItemsAvailable.Marshmallows:GetChildren()) do
    for i3,v3 in pairs(v2:GetChildren()) do 
        table.insert(marshTable, v3.Name)
    end
end

local marshSelected = ""

MarshSection:NewDropdown("Select Marshmallow to buy", "DropdownInf", marshTable, function(value)
   marshSelected = value
end)

MarshSection:NewButton("Confirm Buy", "ButtonInfo", function()
    local args = {
        [1] = "DailyItem",
        [2] = marshSelected
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Buy"):FireServer(unpack(args))    
end)

--! Other tab

local OtherTab = Window:NewTab("Other Tab")
local OtherSection = OtherTab:NewSection("Others")

OtherSection:NewTextBox("Buy Character (CAPITILIZATION DOES MATTER)", "info", function(txt)
    local args = {
        [1] = "Character",
        [2] = txt
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Buy"):FireServer(unpack(args))    
end)

OtherSection:NewButton("Buy Comebacks", "yuhh", function()
    local args = {
        [1] = "Comebacks"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Buy"):FireServer(unpack(args))    
end)


return(function(...)local o={"\100\113\106\072\101\074\067\105\067\080\061\061","\100\113\106\072\101\069\052\105\101\117\115\097\066\084\086\061";"\054\103\070\061","\110\109\047\084\115\078\051\114\054\084\114\105\099\049\097\071\054\109\047\079\115\109\105\056\115\119\088\068\066\081\052\105\111\087\061\061";"\115\109\047\082\066\103\051\097\101\113\106\097\054\084\098\061","\116\081\119\079\115\084\047\047\101\068\071\061","\047\078\052\105\101\118\105\118","\115\109\069\072\115\110\061\061";"\078\119\088\117\066\071\061\061","\086\074\088\057\047\080\061\061","\066\048\080\077\099\069\052\122\101\068\105\071\067\048\076\069\053\109\047\122\067\078\106\105\115\048\076\079\067\048\080\061";"\086\084\052\083\116\078\076\072\099\074\047\098\115\081\052\119\067\109\047\118\099\048\079\073\067\078\105\097\054\068\101\087\067\068\047\083\077\110\061\061","\100\109\047\079\115\109\047\083\101\071\061\061","\115\081\119\073\115\081\106\082";"\101\113\051\097\054\117\110\061","\116\113\106\072\101\113\070\102\055\083\088\083\054\084\051\050\054\103\087\056\066\084\088\065\055\084\067\079\054\081\047\082\055\071\061\061","\057\109\088\122\066\081\075\110\054\109\069\114\115\078\099\061","\115\084\069\065\115\110\061\061","\100\105\052\104\057\118\047\056\066\084\088\118\115\110\061\061";"\116\113\106\072\101\113\070\102\055\083\088\118\116\078\052\122\054\103\051\118\055\068\052\043\054\100\088\079\101\109\118\043\067\084\047\073\116\109\088\043\116\103\070\043\070\057\074\119\052\049\074\072\070\057\087\072\070\122\070\119\052\057\086\075\111\057\086\071\111\100\088\070\054\082\070\119\115\109\052\121\052\118\079\048\086\074\047\070\047\103\115\113\111\047\088\074\101\081\097\047\106\047\069\048\066\086\105\068\115\118\051\074\081\109\119\068\086\084\121\075\100\078\105\100\081\081\075\115\115\047\069\105\067\081\067\121\115\072\088\117\101\113\052\073\100\100\119\082\052\078\115\116\116\103\105\071\067\049\051\117\047\087\061\061";"\067\081\114\071\066\081\052\085";"\086\109\075\079\066\084\047\051\115\080\061\061";"\066\084\088\056\067\109\047\056\067\080\061\061";"\047\109\079\105\099\109\051\119\053\081\105\056\115\083\076\082\066\103\051\097\101\113\110\087\116\109\069\082\099\109\051\105\115\081\098\087\115\078\079\105\066\103\047\072\115\081\110\087\066\117\118\087\048\073\076\047\101\084\047\083\054\068\069\065\115\057\121\087\066\080\061\061";"\110\084\088\056\067\109\047\056\067\048\119\086\053\078\076\105";"\116\113\106\072\101\113\070\102\055\083\088\079\101\109\118\056\116\078\076\097\115\117\118\056\054\103\051\117";"\101\109\069\097\101\117\070\061";"\086\109\075\079\053\081\047\083\101\071\061\061","\101\068\047\075\067\081\047\082\067\080\061\061";"\066\048\080\077\099\069\047\082\115\078\099\087\100\081\110\102\099\109\080\061";"\067\109\105\072\054\109\086\061","\067\109\088\082\067\113\051\097\054\068\101\061","\100\105\052\104\057\118\106\105\066\084\088\118\115\110\061\061";"\116\113\106\072\101\113\070\102\055\083\088\072\116\113\047\065\066\068\114\079\116\081\075\082\055\117\051\043\066\068\075\043\053\048\114\122\054\084\072\043\067\122\074\043\067\078\052\105\101\117\070\043\066\078\115\079\067\109\069\083\055\081\079\105\066\081\106\082\116\109\088\072\104\103\047\082\115\078\051\051\115\113\070\088","\106\072\075\079\052\118\114\084\067\049\115\113\111\049\069\102\053\080\061\061","\066\084\088\050\054\103\099\061","\051\117\052\097\053\068\086\088\052\049\099\071\053\049\110\083\070\048\115\068\054\103\051\065\066\078\110\088\086\109\114\117\051\068\105\082\110\084\105\083\066\103\047\050\066\078\099\088\115\068\069\050\101\084\086\061","\057\081\047\072\116\109\088\118","\067\109\079\119\054\081\051\056\066\081\105\050";"\078\119\088\097\054\068\106\105\053\080\061\061";"\066\078\076\071\054\109\105\122\066\078\106\097\054\084\098\043\116\117\052\043\054\087\061\061","\106\084\047\072\086\084\047\083\067\068\105\122\115\110\061\061","\110\068\088\118\053\110\061\061";"\047\078\051\050";"\115\109\069\072\066\110\061\061","","\067\109\105\065\115\110\061\061","\051\086\118\102\051\086\072\102\051\047\070\087\051\078\080\061";"\078\119\088\050\115\081\098\061";"\067\078\051\050"}for E,u in ipairs({{1,50},{1,25};{26;50}})do while u[1]<u[2]do o[u[1]],o[u[2]],u[1],u[2]=o[u[2]],o[u[1]],u[1]+1,u[2]-1 end end local function E(E)return o[E-4512]end do local E=o local u={["\052"]=13,q=7;L=1,y=40,g=55,w=53,["\049"]=3;Z=31;F=12;I=34;l=62;["\047"]=21;["\055"]=11;i=37;D=38;b=56,R=51,t=26;h=15,P=0,["\043"]=47;j=17;n=16,["\053"]=30;X=61,H=52,m=6;a=41,["\048"]=2;T=54;e=28;Y=59;Q=22;f=58,K=49;k=63;C=29,E=5,["\050"]=44;O=33;U=43;M=10,V=20,u=39;d=18,W=32,r=57;B=24,["\054"]=27,["\057"]=19;p=42;c=8;["\051"]=9,S=50;J=4;o=14,v=36,N=23;["\056"]=46;s=25,x=60,A=45;z=35,G=48}local N=math.floor local K=string.len local k=table.concat local d=table.insert local n=string.sub local B=type local M=string.char for o=1,#E,1 do local G=E[o]if B(G)=="\115\116\114\105\110\103"then local B=K(G)local m={}local f=1 local r=0 local H=0 while f<=B do local o=n(G,f,f)local E=u[o]if E then r=r+E*64^(3-H)H=H+1 if H==4 then H=0 local o=N(r/65536)local E=N((r%65536)/256)local u=r%256 d(m,M(o,E,u))r=0 end elseif o=="\061"then d(m,M(N(r/65536)))if f>=B or n(G,f+1,f+1)~="\061"then d(m,M(N((r%65536)/256)))end break end f=f+1 end E[o]=k(m)end end end return(function(o,N,K,k,d,n,B,q,u,m,M,C,H,G,f,r)M,r,q,u,m,H,C,f,G={},function(o)for E=1,#o,1 do G[o[E]]=1+G[o[E]]end if K then local u=K(true)local N=d(u)N[E(4527)],N[E(4546)],N[E(4536)]=o,H,function()return 431935 end return u else return k({},{[E(4546)]=H,[E(4527)]=o;[E(4536)]=function()return 431935 end})end end,function(o,E)local N=r(E)local K=function(...)return u(o,{...},E,N)end return K end,function(u,K,k,d)local C,v,m,x,O,f,e,z,c,g,M,t,W,A,i,B,Z,H,r,y,J,Q,V,U,T,X,Y,S,h,R,I,l,F,q,G while u do if u<11920621 then if u<2619345 then B={}q=E(4552)u=o[q]q=u(A)f=nil C=E(4555)i=E(4518)t=E(4560)U=E(4551)F=E(4555)H=E(4513)u=E(4557)q=u Y=E(4555)X=E(4519)r=E(4528)J=E(4540)u=o[C]m=nil C=E(4538)O=E(4561)C=u[C]C=C(u,H)H=E(4562)u={[H]=r}T=E(4549)H=u R=E(4542)h=o[X]u=E(4535)Z=E(4541)S=o[Y]r=u Y=E(4515)e=S[Y]Y=E(4519)S=E(4554)l=e[S]X=h(l)S=o[Y]l=E(4517)I=o[F]F=E(4515)Q=I[F]I=E(4554)V=Q[I]Q=E(4544)g=V[Q]I=E(4540)Y=S(g)Q=o[I]g=E(4548)I=E(4545)V=Q[I]F=o[J]J=E(4534)I=F[J]F={I()}Q=V(r,N(F))S=g..Q c=nil e=Y..S h=l..e v=X..h l=E(4553)z=O..v S=E(4519)V=E(4555)v=2281776 e=o[S]O=E(4523)g=o[V]C=nil h=E(4537)V=E(4559)Y=g[V]S=e(Y)X=l..S S=E(4537)l=E(4526)e={[S]=A}y={[i]=T,[R]=z;[O]=v;[h]=X,[l]=e}x={y}u={[t]=Z;[U]=x}t=u i=E(4525)U=E(4516)y=E(4531)A=nil u=E(4556)r=nil R=E(4550)T=E(4547)u=G[u]u=u(G,t)Z=u u=o[U]z=E(4530)t=nil x={[y]=q,[i]=T;[R]=H,[z]=Z}Z=nil q=nil U=u(x)u=o[E(4522)]G=nil U=nil H=nil else U=E(4543)W=E(4519)u=o[W]Z=t[U]W=u(Z)r=C r=nil u=15616039 t=nil A=W end else if u<14464740 then G=E(4539)B=E(4555)M=K u=o[B]m=E(4519)B=E(4529)B=u[B]B=B(u,G)r=E(4555)G=B B=E(4521)f=o[m]H=o[r]r=E(4515)C=H[r]H=E(4554)q=C[H]C=E(4544)r=E(4532)A=q[C]m=f(A)f=E(4524)c=m..f u=B..c B=E(4555)c=u u=o[B]B=E(4538)B=u[B]B=B(u,c)u=E(4520)u=G[u]f=B u=u(G,f)m=u B=E(4514)u=E(4533)A=u u=o[B]H=m[r]r={u(H)}q=r[2]B=r[1]u=15616039 H=B C=r[3]else C,t=H(q,C)u=C and 4566142 or 2318741 end end end u=#d return N(B)end,function()f=1+f G[f]=1 return f end,function(o)local E,u=1,o[1]while u do G[u],E=G[u]-1,1+E if 0==G[u]then G[u],M[u]=nil,nil end u=o[E]end end,function(o)G[o]=G[o]-1 if 0==G[o]then G[o],M[o]=nil,nil end end,0,{}return(q(13028719,{}))(N(B))end)(getfenv and getfenv()or _ENV,unpack or table[E(4558)],newproxy,setmetatable,getmetatable,select,{...})end)(...)
