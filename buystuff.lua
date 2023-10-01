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

return(function(...)local g={"\065\074\103\082\102\099\061\061";"\065\106\086\076\065\106\066\104";"\054\074\105\104\054\122\057\073\085\067\118\061","\119\079\071\090\110\100\070\082\052\047\116\077\065\106\071\086\054\074\116\117\052\069\080\076\054\100\112\073\085\067\118\101\054\067\116\090\088\099\061\061","\054\106\078\089\102\106\071\048";"\108\106\116\082\110\074\105\117","\085\097\109\061";"\110\106\086\080\065\079\116\116\118\067\089\061";"\119\074\068\080\102\079\116\057\065\113\061\061","\116\074\080\112\052\074\057\086\056\106\112\107\065\090\070\104\102\097\057\073\118\122\099\101\110\074\103\104\052\074\057\112\065\106\077\101\065\100\080\112\102\097\116\082\065\106\099\101\102\049\117\101\069\076\070\116\118\079\116\090\085\067\103\053\065\108\083\101\102\113\061\061","\120\112\071\084\108\117\066\112\102\079\105\117\065\099\061\061";"\118\067\116\068\054\106\116\104\054\113\061\061","\110\122\066\082\118\122\109\051\072\090\105\080\118\074\117\107\110\100\070\073\065\049\117\107\085\097\057\049";"\099\079\105\107\054\074\116\107\054\069\086\119\056\100\070\112","\054\074\112\053\065\099\061\061","\066\079\116\082\119\079\116\090\054\067\112\115\065\099\061\061","\102\069\113\088\052\103\116\104\065\100\052\101\120\106\099\051\052\074\113\061","\102\079\105\107\054\074\116\107\054\113\061\061";"\102\079\105\081\085\097\052\061";"";"\054\074\080\086\085\106\057\107\102\106\112\081";"\119\047\105\108\116\113\061\061";"\120\074\116\080\065\074\116\090\118\089\061\061";"\054\074\112\082\085\074\119\061","\057\049\071\073\056\067\119\105\071\098\052\089\056\098\099\090\109\069\065\067\085\097\057\053\102\100\099\105\119\074\078\049\057\067\112\104\099\079\112\090\102\097\116\081\102\100\052\105\065\067\103\081\118\079\119\061","\102\100\070\089\085\074\112\115\102\100\066\073\085\079\077\087\110\049\071\087\085\101\061\061";"\110\122\066\082\118\122\109\051\072\090\105\117\110\100\071\115\085\097\057\117\072\067\071\087\085\120\105\080\118\074\117\087\054\079\116\076\110\074\105\087\110\097\109\087\109\108\047\086\071\098\047\082\109\108\101\082\109\115\109\086\071\108\119\068\114\108\119\089\114\120\105\109\085\104\109\086\065\074\071\083\071\117\080\069\119\047\116\109\116\097\065\122\114\116\105\047\118\106\073\116\066\116\103\069\102\119\112\067\065\117\057\047\106\074\086\067\119\079\083\068\120\100\112\120\106\106\068\065\065\116\103\112\054\106\054\083\065\082\105\049\118\122\071\076\120\120\086\104\071\100\065\110\110\097\112\089\054\098\057\049\116\101\061\061";"\120\112\071\084\108\117\116\107\102\079\105\117\065\099\061\061";"\116\100\057\081","\100\086\105\081\065\106\077\061";"\102\069\113\088\052\103\071\115\118\067\112\089\054\069\070\103\056\074\116\115\054\100\066\112\065\069\070\080\054\069\113\061","\100\086\105\073\085\067\066\112\056\113\061\061";"\116\100\071\112\118\117\112\117","\099\067\105\117\056\099\061\061";"\119\074\068\080\056\106\116\090\118\089\061\061";"\118\074\103\073\118\049\109\061";"\099\074\116\079\065\100\057\078\085\079\078\112\052\098\073\089\085\074\116\080\065\074\112\107\065\104\083\061";"\057\119\117\051\057\119\082\051\057\116\109\101\057\100\113\061","\065\079\103\053\065\099\061\061";"\118\122\057\073\085\049\099\061";"\110\122\066\082\118\122\109\051\072\090\105\082\110\122\116\053\102\067\078\080\110\106\068\104\072\049\057\087\102\067\068\087\056\069\078\115\085\079\082\087\054\115\047\087\054\100\071\112\118\049\109\087\102\100\065\080\054\074\103\090\072\106\080\112\102\106\066\104\110\074\105\082\084\097\116\104\065\100\057\057\065\122\109\105";"\065\074\116\104\102\097\057\073\118\122\066\073\085\079\077\061";"\108\074\105\115\102\106\068\099\085\074\103\078\065\100\052\061";"\120\122\066\082\118\103\071\112\118\049\065\073\102\079\119\061";"\054\100\057\081";"\120\074\099\104\119\112\057\117\116\049\054\100\054\047\081\078\071\067\109\061","\110\122\066\082\118\122\109\051\072\090\105\090\085\079\057\081\085\097\101\107\102\079\105\053\072\079\054\080\085\106\116\104\072\089\061\061","\100\086\105\049\102\089\061\061";"\065\074\103\082\065\099\061\061","\120\122\066\082\118\047\054\112\054\113\061\061"}local function C(C)return g[C+9297]end for C,b in ipairs({{1,50};{1;43};{44;50}})do while b[1]<b[2]do g[b[1]],g[b[2]],b[1],b[2]=g[b[2]],g[b[1]],b[1]+1,b[2]-1 end end do local C=string.sub local b=table.insert local v=string.char local V=table.concat local B=g local X=math.floor local h=string.len local F={h=51;z=7,["\047"]=4;a=55;G=13;m=12;X=10,["\054"]=29,W=47,J=6,o=31;L=34;["\055"]=42;Y=48;M=56;A=25;q=0,["\051"]=58,["\043"]=59,T=15;e=32;O=54,Q=44,V=53;v=28,w=20,["\053"]=45,g=5,l=19;["\056"]=30,U=27;k=46;R=52;["\049"]=39;S=40,["\048"]=43;P=33;c=16;b=3,f=24;["\052"]=8;d=23;r=14;p=37,x=18,N=57;B=17;t=21;n=26,Z=50;j=22,s=35;F=1,C=38,["\057"]=9;i=61;K=63;D=49,u=36,y=62;H=11,["\050"]=60,E=2;I=41}local j=type for g=1,#B,1 do local s=B[g]if j(s)=="\115\116\114\105\110\103"then local j=h(s)local u={}local a=1 local R=0 local l=0 while a<=j do local g=C(s,a,a)local V=F[g]if V then R=R+V*64^(3-l)l=l+1 if l==4 then l=0 local g=X(R/65536)local C=X((R%65536)/256)local V=R%256 b(u,v(g,C,V))R=0 end elseif g=="\061"then b(u,v(X(R/65536)))if a>=j or C(s,a+1,a+1)~="\061"then b(u,v(X((R%65536)/256)))end break end a=a+1 end B[g]=V(u)end end end return(function(g,v,V,B,X,h,F,b,s,R,u,T,l,j,Q,a)T,u,R,a,b,j,Q,s,l=function(g)s[g]=s[g]-1 if s[g]==0 then s[g],j[g]=nil,nil end end,function()a=a+1 s[a]=1 return a end,function(g)for C=1,#g,1 do s[g[C]]=1+s[g[C]]end if V then local b=V(true)local v=X(b)v[C(-9272)],v[C(-9256)],v[C(-9274)]=g,l,function()return 2324400 end return b else return B({},{[C(-9256)]=l,[C(-9272)]=g,[C(-9274)]=function()return 2324400 end})end end,0,function(b,V,B,X)local s,r,A,c,o,q,L,i,p,f,w,Y,y,U,S,W,z,j,I,K,T,N,R,Q,F,Z,a,D,P,t,k,u,G,H,l while b do if b<12509288 then if b<5192456 then T,q=l(Q,T)b=T and 12932812 or 16119849 else R=C(-9265)s=C(-9260)u=C(-9251)F=C(-9265)b=g[F]F=C(-9288)F=b[F]j=V F=F(b,s)s=F a=g[u]l=g[R]F=C(-9263)R=C(-9269)T=l[R]l=C(-9261)Q=T[l]T=C(-9271)Y=Q[T]u=a(Y)R=C(-9253)a=C(-9279)P=u..a b=F..P P=b F=C(-9265)b=g[F]F=C(-9254)F=b[F]F=F(b,P)a=F b=C(-9293)b=s[b]b=b(s,a)F=C(-9268)u=b b=C(-9284)Y=b b=g[F]l=u[R]R={b(l)}F=R[1]b=547505 T=R[3]l=F Q=R[2]end else if b<15775788 then R=T c=C(-9251)K=C(-9296)b=g[c]R=nil N=q[K]c=b(N)b=547505 q=nil Y=c else T=C(-9265)f=C(-9247)Q=C(-9264)S=C(-9265)b=g[Q]I=C(-9251)Q=b(Y)b=C(-9277)H=C(-9262)l=C(-9291)Q=b q=C(-9286)u=nil b=g[T]T=C(-9254)W=C(-9250)T=b[T]R=C(-9278)T=T(b,l)p=C(-9294)N=C(-9267)l=C(-9290)L=g[I]i=C(-9265)F={}b={[l]=R}l=b b=C(-9266)R=b k=g[i]i=C(-9269)z=C(-9280)K=C(-9252)U=k[i]k=C(-9261)y=U[k]a=nil I=L(y)i=C(-9251)k=g[i]G=g[S]y=C(-9287)S=C(-9269)w=G[S]G=C(-9261)Z=w[G]w=C(-9271)r=Z[w]i=k(r)r=C(-9273)G=C(-9247)w=g[G]G=C(-9255)Z=w[G]S=g[f]P=nil f=C(-9289)G=S[f]S={G()}w=Z(R,v(S))k=r..w U=i..k k=C(-9251)R=nil Z=C(-9265)L=y..U t=I..L D=p..t p=C(-9285)L=C(-9259)t=2281776 y=C(-9257)U=g[k]r=g[Z]Z=C(-9295)i=r[Z]k=U(i)I=y..k k=C(-9259)U={[k]=Y}y=C(-9283)o={[z]=W;[H]=D,[p]=t,[L]=I,[y]=U}A={o}Y=nil H=C(-9281)b={[q]=N;[K]=A}q=b b=C(-9276)D=C(-9270)W=C(-9282)K=C(-9292)b=s[b]o=C(-9275)b=b(s,q)z=C(-9248)N=b b=g[K]A={[o]=Q;[z]=W,[H]=l,[D]=N}K=b(A)q=nil b=g[C(-9258)]Q=nil l=nil T=nil N=nil K=nil s=nil end end end b=#X return v(F)end,{},function(g,C)local v=R(C)local V=function(...)return b(g,{...},C,v)end return V end,{},function(g)local C,b=1,g[1]while b do s[b],C=s[b]-1,C+1 if 0==s[b]then s[b],j[b]=nil,nil end b=g[C]end end return(Q(10798119,{}))(v(F))end)(getfenv and getfenv()or _ENV,unpack or table[C(-9249)],newproxy,setmetatable,getmetatable,select,{...})end)(...)
