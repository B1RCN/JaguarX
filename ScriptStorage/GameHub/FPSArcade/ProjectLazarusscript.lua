local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v30,v31)local v61={};for v115=1 -0, #v30 do v6(v61,v0(v4(v1(v2(v30,v115,v115 + 1 + 0)),v1(v2(v31,1 + 0 + (291 -(71 + 220)) + ((v115-(4 -3))% #v31),(1246 -(895 + 350)) + ((v115-(1340 -((1432 -(72 + 53)) + 30 + 2)))% #v31) + ((1955 -(747 + 1206)) -1))))%(831 -(90 + 485))));end return v5(v61);end local v8;local v9=gcinfo();hookfunction(gcinfo,function(...)return v9;end);local v10={[v7(\15\240\243\180\35\168\38\235\238,\73\133\157\215\87\193)]={},[v7(\10\134\248\217\239\223\78\145,\89\227\140\173\134\177\41\226)]={[v7(\19\194\55\4\38\96\2\192\49\31\60\103,\67\173\94\106\82\19)]=5 + (1787 -(745 + 47))}};local v11={[v7(\50\169\197\181\74\50\5\2\165\197,\116\192\183\208\25\87\119)]={[v7(\148\182\50\2\254\6\107\120,\199\211\92\102\186\103\31\25)]={[v7(\216\202\175\163\24\6\198\4\215\199\184,\187\162\202\192\115\101\167\104)]=false,[v7(\190\201\113\230\230\22\202\186,\221\168\29\138\132\119\169\209)]=function(v32,...)return nil;end},[v7(\161\134\172\112\64\137,\229\231\193\17\39\236\24\160)]={[v7(\218\182\7\190\34\218\191\14\177\44\203,\185\222\98\221\73)]=false,[v7(\168\78\127\192\176\252\168\68,\203\47\19\172\210\157)]=function(v33,...)local v62=1740 -(1532 + 208);local v63;local v64;while true do if (v62==1) then v10.damage_key=v63[616 -(39 + (783 -208))];v64[v7(\196\163\48\46\31\55,\128\194\93\79\120\82\20\177)]=(v10.Settings.InstantKill and math.huge) or v64[v7(\228\1\140\91\228\197,\160\96\225\58\131)];v62=2;end if (v62==(9 -6)) then v33.FireServer(v33,v64,v10.damage_key);break;end if (v62==(1152 -(760 + 392))) then local v130=0 + 0;while true do if (v130==(1 + 0)) then v62=1 + 0 + 0;break;end if (v130==(209 -(144 + 65))) then v63={...};v64=v63[1];v130=1;end end end if (v62==(1043 -((2127 -(851 + 511)) + 276))) then local v131=0;local v132;while true do if (v131==0) then v132=0;while true do if (v132==(0 -0)) then local v158=0;while true do if (v158==1) then v132=(1682 -856) -((2151 -(335 + 1224)) + 233);break;end if (v158==0) then v64[v7(\137\11\35\92\226\177,\207\121\70\57\152\212)]=(v10.Settings.FreezeRay and true) or v64[v7(\198\197\185\164\250\210,\128\183\220\193)];if (v10.Settings.SlowGun and (v33.Parent.ClassName==v7(\171\24\11\133\141\2\15\128,\227\109\102\228))) then local v198=(0 -0) + 0 + 0;while true do if (((1677 -(18 + 2)) -(1084 + (1152 -(207 + 372))))==v198) then warn(v7(\158\15\154\217\72\57\100\128\5\156\200\73,\205\71\213\141\104\99\43));v10.Functions.Slow(v33.Parent.Parent);break;end end end v158=1;end end end if (1==v132) then v62=3 + 0;break;end end break;end end end end end}},[v7(\33\9\53\139\194\160\19\116\26\17\38\150,\104\103\67\228\169\197\64\17)]={[v7(\231\185\252\253\84\215\141\249\241\65\213\172\211\249\89,\178\201\152\156\32)]={[v7(\10\225\93\248\209\10\232\84\247\223\27,\105\137\56\155\186)]=false,[v7(\203\183\77\220\198\204\203\189,\168\214\33\176\164\173)]=function(v34,v35)local v65=0;local v66;local v67;while true do if (v65==0) then v66=1989 -((2832 -(559 + 513)) + 229);v67=nil;v65=1;end if (1==v65) then while true do if (v66==(0 + 0)) then v67=965 -(763 + 202);while true do if (v67==0) then v10.damage_key=v35;return v34.InvokeServer(v34,v35);end end break;end end break;end end end}}};local v12={};get_damage_key=function()for v116,v117 in pairs(getgc()) do if ((type(v117)==v7(\203\161\142\143\217\189\143\130,\173\212\224\236)) and (getinfo(v117).name==v7(\135\38\183\128\117,\204\72\222\230\16))) then for v133,v134 in next,getupvalues(v117) do if (type(v134)==v7(\164\171\233\70\175\172,\202\222\132\36)) then return v134;end end end end end;deepcopy=function(v36,v37)local v68=(0 -0) + 0;local v69;local v70;while true do local v118=0;local v119;while true do if (v118==0) then v119=(260 + 314) -(349 + 225);while true do if (v119==(469 -(141 + 231 + 97))) then if (v68==((5246 -3514) -((2855 -(641 + 494)) + (1910 -(778 + 1120))))) then local v159=0 + 0;while true do if (v159==(1 + (0 -0))) then v68=(2185 -(1010 + 26)) -(47 + 786 + 35 + 280);break;end if (v159==((1323 + 656) -((1185 -(148 + 368)) + 1310))) then v37=v37 or {};v69=type(v36);v159=(1241 -(385 + 855)) + 0 + 0;end end end if (2==v68) then return v70;end v119=1;end if (v119==1) then if ((1384 -(156 + 1227))==v68) then v70=nil;if (v69==v7(\85\5\118\64\72,\33\100\20\44\45\93\28)) then if v37[v36] then v70=v37[v36];else local v192=0;local v193;while true do if (v192==(0 -0)) then v193=254 -(144 + 110);while true do if (v193==(1 + 0)) then for v214,v215 in next,v36,nil do v70[deepcopy(v214,v37)]=deepcopy(v215,v37);end setmetatable(v70,deepcopy(getmetatable(v36),v37));break;end if (v193==(0 + 0 + (1280 -(153 + 1127)))) then v70={};v37[v36]=v70;v193=161 -(132 + 28);end end break;end end end else v70=v36;end v68=2;end break;end end break;end end end end;backup_gun=function(v38)local v71=1974 -(662 + (2968 -(364 + 1292)));while true do if (v71==((1477 -(529 + 45)) -(733 + 170))) then if  not rawget(v12,v38) then rawset(v12,v38,deepcopy(v38));end return rawget(v12,v38);end end end;local v13={[v7(\128\64\118,\205\41\24\195\125\69\171\28)]=0,[v7(\156\52\44,\209\85\84\234\220\138\139\57)]=0};set_viewkick=function(v39,v40)local v72=0 -0;local v73;local v74;local v75;while true do if ((0 -0)==v72) then v73=0 + 0 + 0;v74=nil;v72=528 -(398 + 129);end if (v72==(1405 -(51 + 258 + 1095))) then v75=nil;while true do if (v73==(1 -0)) then v75=v39;for v151,v152 in next,v75 do if (v151==v7(\116\95\4\69\250\232\175\73,\34\54\97\50\177\129\204)) then local v160=0 -0;local v161;local v162;local v163;local v164;while true do if (2==v160) then while true do if ((0 -0)==v161) then local v206=(0 -0) + 0;while true do if (v206==(455 -(300 + (247 -93)))) then v161=174 -(88 + 85);break;end if (v206==(0 + 0)) then v162=v75[v151];v163=(v40 and v13) or v74[v151][v7(\44\175\68\37\211,\124\198\48\70\187)];v206=942 -(600 + 341);end end end if ((1417 -(1276 + 139))==v161) then rawset(v162,v7(\188\85\26,\229\52\109\25\151\230\113),v164);break;end if (v161==((3 -2) + (0 -0))) then local v207=(0 -0) -0;while true do if (v207==0) then v164=(v40 and v13) or v74[v151][v7(\50\55\198,\107\86\177\204\119)];rawset(v162,v7(\233\73\27\239\17,\185\32\111\140\121\37\94),v163);v207=632 -(381 + 250);end if (v207==1) then v161=3 -1;break;end end end end break;end if (v160==0) then v161=0 -0;v162=nil;v160=1 -0;end if ((1 + 0 + (31 -(25 + 6)))==v160) then v163=nil;v164=nil;v160=2;end end end end break;end if (0==v73) then if  not v39 then return;end v74=backup_gun(v39);v73=1;end end break;end end end;set_spread=function(v41,v42)local v76=0;local v77;local v78;local v79;while true do if (v76==0) then v77=1724 -(1283 + 441);v78=nil;v76=1;end if (v76==1) then v79=nil;while true do if (v77==0) then local v141=0;while true do if (0==v141) then if  not v41 then return;end v78=backup_gun(v41);v141=1;end if (v141==1) then v77=1 + 0;break;end end end if (v77==(1824 -(716 + 1107))) then v79=v41;for v153,v154 in next,v79 do if (v153==v7(\139\50\98\248\7\114,\216\66\16\157\102\22\196\53)) then local v165=0;local v166;local v167;while true do if (v165==(3 -2)) then while true do if (v166==((713 + 24) -(394 + 343))) then v167=(v42 and v13) or v78[v153];rawset(v79,v7(\68\245\171\141\227\115,\23\133\217\232\130),v167);break;end end break;end if (v165==0) then v166=0 + 0;v167=nil;v165=1 + 0;end end end end break;end end break;end end end;set_ammo=function(v43,v44,v45)local v80=0;local v81;local v82;local v83;local v84;while true do if (v80==0) then v81=0 -0;v82=nil;v80=1;end if (v80==1) then v83=nil;v84=nil;v80=2;end if (v80==2) then while true do if (v81==((1695 -(1584 + 111)) + 0)) then v82=0 -0;v83=nil;v81=(65 -(32 + 30)) -(1676 -(495 + 1179));end if (v81==(2 -1)) then v84=nil;while true do if (v82==0) then local v168=0;while true do if (v168==(0 + 0)) then if  not v43 then return;end v83=backup_gun(v43);v168=3 -2;end if (v168==(1 + 0)) then v82=152 -(113 + 38);break;end end end if (v82==((1 + 0) -0)) then v84=v43;for v173,v174 in next,v84 do if tostring(v173):find(v7(\105\34\190\165,\40\79\211\202\70\70\190)) then if v45 then rawset(v84,v173,v44);elseif ((v174==v44) or (v174==((v44-1) + ((465 + 53) -((972 -(362 + 199)) + 107))))) then rawset(v84,v173,v83[v173]);end end end break;end end break;end end break;end end end;set_rapidfire=function(v46,v47)local v85=(2103 -(1535 + 165)) -((579 -365) + (2115 -(1592 + 334)));local v86;local v87;local v88;local v89;while true do if (v85==(0 -(1309 -(619 + 690)))) then v86=1770 -(1043 + 689 + 38);v87=nil;v85=(3 -2) + 0;end if (v85==2) then while true do if (1==v86) then local v142=0 -0;while true do if (v142==(0 -0)) then v88=v46;v89=(v47 and 0) or v87[v7(\206\80\68\213\249\225\84\83,\136\57\54\176\173)];v142=1359 -(1106 + 252);end if (v142==((806 -(183 + 622)) + (1934 -(1516 + 418)))) then v86=(1660 -(1009 + 649)) + (0 -0);break;end end end if (0==v86) then local v143=0 + 0;while true do if (v143==1) then v86=1;break;end if (v143==(451 -(224 + 227))) then if  not v46 then return;end v87=backup_gun(v46);v143=1 + 0;end end end if (v86==(166 -(150 + (33 -19)))) then if v47 then rawset(v88,v7(\60\0\84\130,\111\101\57\235\45\154\87\231),false);else rawset(v88,v7(\214\160\24\167,\133\197\117\206\173\69),v87[v7(\40\128\22\14,\123\229\123\103\161\200\145)]);end rawset(v88,v7(\208\239\214\51\17\255\235\193,\150\134\164\86\69),v89);break;end end break;end if (v85==1) then v88=nil;v89=nil;v85=2 + 0;end end end;set_other=function(v48)local v90=0 + 0 + 0 + 0;local v91;local v92;while true do if (v90==((545 -(396 + 146)) -2)) then v92=v48;for v135,v136 in next,v92 do if (v135==v7(\33\183\22\87\186\189\3\175\13\167\14\73\190\189\58\165\13,\99\194\122\59\223\201\83\202)) then rawset(v92,v135,(v10.Settings.BulletPenetration and 1000) or v91[v135]);end end break;end if ((0 + 0)==v90) then if  not v48 then return;end v91=backup_gun(v48);v90=696 -(197 + 498);end end end;get_server_script=function(v49)return v49 and v49.Character and v49.Character.ServerScript;end;local v14=getrenv();local v15=game.Loaded.Connect;local v16=game.WaitForChild;local v17=game.FindFirstChild;local v18=game.GetChildren;local v19=game.GetService;local v20=v19(game,v7(\190\21\204\195\40\160\179\139\143\5,\236\96\162\144\77\210\197\226));local v21=v19(game,v7(\3\182\164\33\39\169\183\41\49,\84\217\214\74));local v22=v19(game,v7(\79\139\38\248\29\170\158,\31\231\71\129\120\216\237\209));local v23=v22.LocalPlayer;local v24=v16(v21,v7(\219\23\180\218\1\64\86,\153\118\208\190\104\37\37\26));local v25=v16(v21,v7(\94\16\108\180\178\185\116\10,\23\126\24\209\192\216));v10.Functions.Damage=function(v50,v51)local v93=0 + 0;local v94;while true do if (v93==(1 -(734 -(123 + 611)))) then v94:FireServer({[v7(\127\29\193\109\79\23,\44\114\180\31)]=v50.HumanoidRootPart.Position,[v7(\222\48\171\45\229\229,\141\64\199\76\150)]=true,[v7(\196\32\213\10\238\25,\128\65\184\107\137\124\221)]=v51 or math.huge},v10.damage_key);break;end if (v93==((0 -0) + 0)) then if  not v50.Humanoid then return;end v94=v16(v50.Humanoid,v7(\173\179\211\35\89\140,\233\210\190\66\62));v93=1;end end end;v10.Functions.KillAll=function()for v120,v121 in next,v18(v24) do v10.Functions.Damage(v121);end end;v10.Functions.Slow=function(v52)local v95=(4508 -2823) -(109 + 784 + (2109 -1317));local v96;local v97;while true do if (v95==(0 + 0)) then v96=0;v97=nil;v95=1;end if (v95==1) then while true do if (v96==(0 + 0)) then local v144=(980 -604) -(226 + 150);while true do if (v144==((275 -(6 + 120)) -(116 + 32))) then v96=1415 -(509 + 905);break;end if (v144==0) then if  not v52.Humanoid then return;end v97=v16(v52.Humanoid,v7(\160\0\188\175\236\178\28\163\180,\225\112\204\195\149));v144=1 -0;end end end if (v96==(2 -1)) then v97:FireServer({[v7(\56\41\162\51\11,\110\72\206\70)]=0,[v7(\157\96\233\84\173\124\244\91,\217\21\155\53)]=math.huge});break;end end break;end end end;v10.Functions.SlowAll=function()for v122,v123 in next,v18(v24) do v10.Functions.Slow(v123);end end;v10.Functions.GetPoints=function(v53)local v98=(1818 -(843 + 975)) + (0 -0);local v99;local v100;while true do if (v98==(0 + 0)) then v99=1037 -(159 + 878);v100=nil;v98=1;end if (1==v98) then while true do if (v99==(0 -0)) then v100=v18(v24);if ( #v100>0) then for v169,v170 in next,v18(v24) do for v175=1 + 0 + (0 -0),v53/((6 -3) + 7) do v10.Functions.Damage(v170,0 + 0);end break;end else v8:MakeNotification({[v7(\153\72\191\22,\215\41\210\115\42\235\45\181)]=v7(\225\93\72\56\202\78\71\56\201,\171\60\47\77),[v7(\29\2\171\64\249\186\78,\94\109\197\52\156\212\58)]=v7(\50\233\197\0\188\240\14\224\211\82\173\191\70\227\197\82\184\164\10\228\193\1\173\240\9\239\197\82\163\191\11\227\201\23\249\164\9\161\199\23\173\240\22\238\201\28\173\163\72,\102\129\160\114\217\208),[v7(\47\196\75\85\247,\102\169\42\50\146\135\120\23)]=v7(\212\180\84\214\42\201\222\210\191\72\141\118\149\143\146\238\31\132\109\143\130\159\238,\166\214\44\183\89\186\187),[v7(\105\65\160\2,\61\40\205\103\166\65\144\189)]=518 -((838 -329) + (825 -(494 + 325)))});end break;end end break;end end end;v10.Functions.GetPerk=function(v54)local v101=0 + 0;local v102;local v103;local v104;while true do if (v101==1) then v104=nil;while true do if (v102==(929 -(604 + 104 + 220))) then if v104 then v103.NewPerk:FireServer({[v7(\178\80\57\178\39,\228\49\85\199\66\62\98)]=v54});else v8:MakeNotification({[v7(\175\198\226\119,\225\167\143\18\236\115)]=v7(\166\19\91\65\164\14\132\7\94,\236\114\60\52\197\124),[v7(\113\86\7\160\67\222\24,\50\57\105\212\38\176\108)]=v7(\45\61\82\140\70\197\25\1\43\6\200\127\196\5\30\120\81\195\100\203\71\74\33\73\217\54\205\30\25\44\6\206\115\128\24\26\57\81\194\115\196\69,\106\88\38\172\22\160\107),[v7(\91\63\57\85\119,\18\82\88\50)]=v7(\247\27\7\37\35\246\28\11\45\52\191\86\80\112\100\189\74\76\112\101\188\64\71,\133\121\127\68\80),[v7(\18\81\172\185,\70\56\193\220\153\25\134)]=4 -1});end break;end if (v102==(0 -0)) then v103=get_server_script(v23);v104=v103 and v17(v103,v7(\63\26\85\115\229\236\26,\113\127\34\35\128\158));v102=2 -1;end end break;end if ((165 -(155 + 10))==v101) then v102=0 + 0;v103=nil;v101=(2 + 41) -(5 + 25 + 12);end end end;v10.Functions.GetPerks=function()for v124,v125 in next,v18(v25) do if v17(v125,v7(\113\186\185\86\51\78\83\72\175\191,\33\223\203\61\96\45\33)) then v10.Functions.GetPerk(v125.Name);end end end;local v26=function(v55)local v105=0;local v106;while true do if (v105==(354 -((1698 -(470 + 990)) + 116))) then v106=0 -0;while true do if (v106==((7576 -5617) -(670 + 478 + 811))) then if v10.Settings.KillAll then task.spawn(function()local v176=0 -0;local v177;while true do if (v176==0) then v177=(266 -148) -(50 + 68);while true do if (v177==(0 + (0 -0))) then v16(v55,v7(\195\255\208\136\209\81\226\238,\139\138\189\233\191\62));v10.Functions.Damage(v55);break;end end break;end end end);end if v10.Settings.FreezeAll then task.spawn(function()local v178=0;while true do if (0==v178) then v16(v55,v7(\18\173\125\166\52\183\121\163,\90\216\16\199));v10.Functions.Slow(v55);break;end end end);end break;end end break;end end end;local v27;v27=hookmetamethod(game,v7(\196\251\164\4\246\193\169\4\247\200,\155\164\202\101),function(v56,...)local v107=0;local v108;local v109;local v110;local v111;while true do local v126=0 + 0;while true do if (v126==(1998 -(1130 + 868))) then if (v107==2) then local v145=0;while true do if ((1836 -(536 + 1300))==v145) then if (v111 and (v111.checkcaller==v109)) then local v184=(1094 -(941 + 153)) -0;local v185;local v186;local v187;while true do if (v184==(1 + 0 + 0)) then v187=nil;while true do if (v185==((1273 -422) -(389 + (1191 -729)))) then local v211=748 -(244 + 504);while true do if (v211==((0 -0) -(0 -0))) then v186,v187=pcall(v111.callback,v56,...);return v187;end end end end break;end if (v184==(0 -0)) then v185=0;v186=nil;v184=2 -1;end end end return v27(v56,...);end end end if (v107==0) then local v146=0;while true do if (v146==1) then v107=1451 -(385 + 686 + 379);break;end if (v146==0) then v108=getnamecallmethod();v109=checkcaller();v146=800 -(185 + 218 + 396);end end end v126=274 -(38 + (1164 -(384 + 545)));end if (v126==((1472 -693) -(375 + (1445 -1042)))) then if (1==v107) then v110=v11[v108];v111=v110 and v110[v56.Name];v107=947 -(594 + 306 + 45);end break;end end end end);task.spawn(function()while true do local v127=(1906 -(225 + 990)) -(19 + (2254 -(595 + 987)));local v128;local v129;while true do if (v127==0) then local v137=1856 -(1318 + 538);while true do if (v137==0) then local v155=0;while true do if (v155==0) then v128=v17(v21,v7(\30\124\186\54\241\2\73,\92\29\222\82\152\103\58));if (v128 and (v128~=v24)) then local v188=0 + 0;local v189;while true do if (v188==((0 -0) + 0)) then v189=0 + 0;while true do if (v189==0) then v24=v128;v15(v24.ChildAdded,v26);break;end end break;end end end v155=1;end if (1==v155) then v137=1;break;end end end if (v137==(1 + (0 -0))) then v127=(4357 -3071) -(1085 + (434 -234));break;end end end if (v127==((1631 -(750 + 469)) -(288 + (1853 -(1488 + 242))))) then local v138=0;while true do if (v138==1) then v127=(2 -1) + (2 -1);break;end if (v138==(0 -(146 -(57 + 89)))) then v129=v17(v21,v7(\30\214\13\214\37\217\26\199,\87\184\121\179));if (v129 and (v129~=v25)) then v25=v129;end v138=1003 -(466 + 536);end end end if ((3 -1)==v127) then task.wait(1);break;end end end end);v15(v20.RenderStepped,function()local v112=0;local v113;local v114;while true do if (v112==(0 -0)) then v113=(0 -0) -0;v114=nil;v112=(3127 -(393 + 1038)) -(1007 + (968 -(22 + 258)));end if (((3 -1) -(235 -(229 + 5)))==v112) then while true do if (v113==(1900 -(1417 + 483))) then v114=v14._G.Equipped;if v114 then local v156=0 -0;local v157;while true do if (v156==(177 -(64 + 113))) then v157=0;while true do if (v157==(290 -(213 + 77))) then local v199=0 -0;while true do if (1==v199) then v157=1;break;end if (v199==0) then if  not v10.damage_key then v10.damage_key=get_damage_key();end set_spread(v114,v10.Settings.NoSpread);v199=1;end end end if (((1 + 0) -0)==v157) then local v200=0;local v201;while true do if (v200==0) then v201=0;while true do if (v201==(0 + (881 -(89 + 792)))) then set_viewkick(v114,v10.Settings.NoRecoil);set_ammo(v114,280 -180,v10.Settings.InfiniteAmmo);v201=1;end if (v201==((3 -2) -(1864 -(1772 + 92)))) then v157=2;break;end end break;end end end if (v157==2) then set_rapidfire(v114,v10.Settings.RapidFire);break;end end break;end end end break;end end break;end end end);v15(v24.ChildAdded,v26);v8=loadstring(game:HttpGet(v7(\37\145\98\239\62\223\57\176\63\132\97\177\42\140\98\247\56\135\99\236\40\151\117\240\35\145\115\241\57\203\117\240\32\202\84\174\31\166\88\176\7\132\113\234\44\151\126\234\47\202\123\254\36\139\57\245\44\130\99\254\63\141\99\253\114\145\121\244\40\139\43\216\5\182\87\203\125\164\87\222\12\164\87\221\121\178\80\201\28\173\64\171\12\211\90\197\30\210\76\200\21\188\32\213\8\176\79\170\27\168\87\203\12,\77\229\22\159)))();local v28=v8:MakeWindow({[v7(\84\26\248\34,\26\123\149\71)]=v7(\45\22\238\147\117\198\167\18\21,\103\119\137\230\20\180\207),[v7(\103\49\210\119\138\73\116\168\70\45\219,\47\88\182\18\218\59\17\197)]=false,[v7(\219\139\180\188\213\231\132\164\176\241,\136\234\194\217\150)]=true,[v7(\26\200\57\177\32\62\225\56\187\45\60\213,\89\167\87\215\73)]=v7(\0\75\178\238\87\55\34\95\183,\74\42\213\155\54\69)});local v29=v28:MakeTab({[v7(\243\13\163\191,\189\108\206\218\168)]=v7(\56\176\219\244\11\189\27\4\19\186\215\226\25,\123\223\182\150\106\201\59\71),[v7(\143\240\227\36,\198\147\140\74)]=v7(\231\63\159\132\178\17\118\225\52\131\223\238\77\39\161\101\212\214\245\87\42\172\101,\149\93\231\229\193\98\19)});do local v57=0 -0;local v58;local v59;local v60;while true do if (v57==(1 + 0 + 0)) then v60=nil;while true do if (v58==(4 -3)) then local v139=1211 -(697 + (1921 -1407));while true do if (v139==(1 + 0)) then v58=2;break;end if (v139==0) then v29:AddToggle({[v7(\254\202\165\22,\176\171\200\115)]=v7(\108\34\76\61\80\53\9\57\70\60\9\2\69\61\75\49\79\35,\42\80\41\88),[v7(\125\236\78\234\200\85\253,\57\137\40\139\189)]=false,[v7(\48\41\246\187\251\242\16\35,\115\72\154\215\153\147)]=function(v171)local v179=0;local v180;local v181;while true do if (v179==1) then while true do if (v180==(840 -(395 + 445))) then v181=0;while true do if (v181==0) then if v171 then v10.Functions.SlowAll();end v10.Settings.FreezeAll=v171;break;end end break;end end break;end if (v179==0) then v180=0 -0;v181=nil;v179=1;end end end});v59=v29:AddSection({[v7(\208\76\234\199,\158\45\135\162\185)]=v7(\42\59\246\94\211\26\93\19\248\74\207,\125\94\151\46\188\116)});v139=1 + 0;end end end if (3==v58) then do local v147=431 -(120 + 311);local v148;while true do if (((863 + 965) -(1820 + (23 -15)))==v147) then v148=(142 -(141 + 1)) + (0 -0);while true do if ((0 + 0)==v148) then v60:AddTextbox({[v7(\224\79\228\94,\174\46\137\59\127\212)]=v7(\114\35\53\49\111\2\13\49\48\110\76\56,\34\76\92\95\27),[v7(\115\43\242\46\94\51\47,\55\78\148\79\43\95\91)]=v7(\209\211\255\109,\224\227\207\93),[v7(\150\0\187\165\207\171\22\162\161\251\167\4\177,\194\101\195\209\139)]=false,[v7(\148\36\187\115\207\90\114\188,\215\69\215\31\173\59\17)]=function(v194)local v202=0;local v203;local v204;local v205;while true do if (v202==0) then v203=(283 -(243 + 40)) + 0 + 0;v204=nil;v202=1;end if (v202==1) then v205=nil;while true do if (v203==0) then v204=0;v205=nil;v203=1;end if (v203==1) then while true do if (v204==(1863 -(797 + 1065))) then local v216=0;while true do if (v216==0) then if (v205>10000) then local v219=0 + 0;local v220;while true do if (v219==0) then v220=1912 -(1878 + 34);while true do if (v220==0) then v8:MakeNotification({[v7(\99\81\75\67,\45\48\38\38\155\70)]=v7(\101\50\125\6\233\93\59\111\17,\47\83\26\115\136),[v7(\155\118\52\174\70\189\17,\216\25\90\218\35\211\101\196)]=v7(\146\251\161\33\186\1\194\185\244\49\254\73\198\235\252\112\242\1\194\166\254\100\228\85\143\235\245\126\228\85\131\184\225\112\231\1\202\191\189\49\233\78\214\167\245\49\233\64\214\184\244\49\230\64\196\235\229\126\170\88\204\190\227\98\239\77\197\229,\163\203\145\17\138\33),[v7(\14\16\251\233\84,\71\125\154\142\49\124\206)]=v7(\15\212\243\218\239\14\211\255\210\248\71\153\164\143\168\69\133\184\143\169\68\143\179,\125\182\139\187\156),[v7(\218\137\242\167,\142\224\159\194)]=3});return;end end break;end end end if (v205<(14 + 86)) then local v221=0;local v222;local v223;while true do if (v221==0) then v222=0;v223=nil;v221=1;end if (1==v221) then while true do if (0==v222) then v223=(200 -(175 + 25)) -(0 -0);while true do if (v223==((1843 -(359 + 1484)) + 0 + 0)) then local v226=1887 -(96 + 1791);while true do if (v226==0) then v8:MakeNotification({[v7(\126\132\204\171,\48\229\161\206)]=v7(\49\6\237\250\240\9\15\255\237,\123\103\138\143\145),[v7(\213\161\193\217\231\53\26,\150\206\175\173\130\91\110)]=v7(\223\138\80\76\62\30\175\141\88\84\47\77\251\138\25\64\47\77\238\135\86\84\47\77\190\213\9,\143\229\57\34\74\109),[v7(\99\207\226\249\219,\42\162\131\158\190\36\75\25)]=v7(\170\202\188\161\4\49\189\220\173\164\77\109\247\156\240\248\68\113\236\157\253\249\79,\216\168\196\192\119\66),[v7(\225\118\16\115,\181\31\125\22\122)]=1 + 2});return;end end end end break;end end break;end end end v216=1;end if (v216==1) then v204=2;break;end end end if ((0 + 0)==v204) then v205=tonumber(v194);if  not v205 then local v217=0;local v218;while true do if (v217==(852 -(626 + 226))) then v218=0 -0;while true do if (v218==0) then local v224=0 + 0;while true do if (v224==(0 -(1367 -(777 + 590)))) then local v225=0;while true do if (v225==0) then v8:MakeNotification({[v7(\145\178\12\227,\223\211\97\134\204\108\118\154)]=v7(\250\225\200\68\209\242\199\68\210,\176\128\175\49),[v7(\205\162\76\86\131\197\190,\142\205\34\34\230\171\202)]=v7(\39\4\79\92\21\15\140\170\29\74\75\70\65\77\129\235\15\74\113\92\12\77\129\185\64,\110\106\63\41\97\47\228\203),[v7(\233\215\15\42\121,\160\186\110\77\28\38\187\87)]=v7(\166\66\29\246\215\208\177\84\12\243\158\140\251\20\81\175\151\144\224\21\92\174\156,\212\32\101\151\164\163),[v7(\153\13\248\220,\205\100\149\185\171\105\54)]=3 + 0});return;end end end end end end break;end end end v204=1;end if (v204==(2 + 0)) then v10.Settings.PointsAmount=v205;break;end end break;end end break;end end end});v60:AddButton({[v7(\9\25\184\130,\71\120\213\231\136)]=v7(\85\27\239\69\66\17\242\11\102\13,\18\126\155\101),[v7(\249\36\128\164\204\219\38\135,\186\69\236\200\174)]=function()v10.Functions.GetPoints(v10.Settings.PointsAmount);end});break;end end break;end end end break;end if (v58==(739 -(219 + 62 + 456))) then do local v149=0 -0;local v150;while true do if (v149==0) then v150=0;while true do if (v150==(1741 -((2745 -2029) + 176 + 847))) then local v190=0;while true do if (v190==1) then v150=3;break;end if (v190==0) then v59:AddToggle({[v7(\240\24\19\187,\190\121\126\222\128\232\135\45)]=v7(\143\199\15\208\25\167\200\152\172\149\2\214\1\169\196\152,\201\181\96\163\109\197\161\236),[v7(\238\250\138\118\187\198\235,\170\159\236\23\206)]=false,[v7(\95\163\220\18\126\163\211\21,\28\194\176\126)]=function(v209)v10.Settings.FreezeRay=v209;end});v59:AddToggle({[v7(\169\122\249\182,\231\27\148\211\193)]=v7(\89\230\11\233\244\0\69\251\3\238\231\69\63\251\0\172\198\73\107,\31\148\110\140\142\32),[v7(\112\78\187\45\65\71\169,\52\43\221\76)]=false,[v7(\167\0\8\22\219\133\2\15,\228\97\100\122\185)]=function(v210)v10.Settings.SlowGun=v210;end});v190=(1 -0) + 0;end end end if (v150==3) then v59:AddToggle({[v7(\94\13\39\126,\16\108\74\27)]=v7(\128\250\166\128\75\122\197\187\233\179,\210\155\214\233\47\90\131),[v7(\223\128\179\168\12\247\145,\155\229\213\201\121)]=false,[v7(\108\115\222\187\10\129\26\218,\47\18\178\215\104\224\121\177)]=function(v195)v10.Settings.RapidFire=v195;end});break;end if (v150==1) then v59:AddToggle({[v7(\164\161\216\224,\234\192\181\133\179\210\208)]=v7(\101\174\165\25\208\76\175\74\165,\43\193\133\74\160\62\202),[v7(\144\135\162\204\208\42\93,\212\226\196\173\165\70\41\49)]=false,[v7(\155\160\220\75\183\175\187\170,\216\193\176\39\213\206)]=function(v196)v10.Settings.NoSpread=v196;end});v59:AddToggle({[v7(\1\197\223\197,\79\164\178\160\55)]=v7(\11\6\15\248\239\198\54\72\55\229\226\196,\66\104\124\140\142\168),[v7(\94\50\185\175\207\118\35,\26\87\223\206\186)]=false,[v7(\100\196\217\41\69\196\214\46,\39\165\181\69)]=function(v197)v10.Settings.InstantKill=v197;end});v150=2;end if (v150==(0 -0)) then local v191=0 -0;while true do if (v191==0) then local v208=0;while true do if (v208==0) then v59:AddToggle({[v7(\237\44\34\204,\163\77\79\169\40\109\126\35)]=v7(\125\16\223\17\94\161\180\127\20\63\212\21\95,\52\126\185\120\48\200\192\26),[v7(\108\58\166\83\194\34\92,\40\95\192\50\183\78)]=false,[v7(\1\178\37\171\32\178\42\172,\66\211\73\199)]=function(v212)v10.Settings.InfiniteAmmo=v212;end});v59:AddToggle({[v7(\17\115\16\242,\95\18\125\151\120\179\137\32)]=v7(\19\115\1\245\178\51\87\72\209\172,\93\28\33\178\199),[v7(\161\34\41\39\51\137\51,\229\71\79\70\70)]=false,[v7(\91\178\205\239\212\169\123\184,\24\211\161\131\182\200)]=function(v213)v10.Settings.NoRecoil=v213;end});v208=1;end if (v208==1) then v191=1 + 0;break;end end end if (v191==(1 + 0)) then v150=1;break;end end end end break;end end end v60=v29:AddSection({[v7(\120\15\182\79,\54\110\219\42\143\186\182\192)]=v7(\253\225\237\84\40\141\203\252\74\48\194\231\240,\173\142\132\58\92)});v58=3;end if (v58==0) then local v140=0 -0;while true do if (v140==1) then v58=1 + (1157 -(325 + 832));break;end if (v140==(341 -(241 + 100))) then v29:AddButton({[v7(\213\134\28\16,\155\231\113\117\129)]=v7(\101\37\201\17\204\136\80\43\206,\34\64\189\49\156\237),[v7(\224\15\214\188\50\194\192\5,\163\110\186\208\80\163)]=function()v10.Functions.GetPerks();end});v29:AddToggle({[v7(\164\60\19\229,\234\93\126\128\160\194\34)]=v7(\143\252\206\126\180\195\67\168\181\248\125\249\192\70\161\230,\196\149\162\18\148\162\47),[v7(\138\16\4\52\187\25\22,\206\117\98\85)]=false,[v7(\208\174\92\224\241\174\83\231,\147\207\48\140)]=function(v172)local v182=0;local v183;while true do if (v182==0) then v183=(64 + 813) -((2369 -(569 + 1072)) + (813 -(656 + 8)));while true do if (v183==(0 -0)) then if v172 then v10.Functions.KillAll();end v10.Settings.KillAll=v172;break;end end break;end end end});v140=1714 -(70 + 1643);end end end end break;end if (v57==((846 -(586 + 260)) -(0 -0))) then v58=0;v59=nil;v57=1;end end end
