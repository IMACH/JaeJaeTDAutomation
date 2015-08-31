SCREEN_RESOLUTION="850x1511"; 

--JaeJae Gameplay Script 

-- autoplay algorithm: 
-- 
-- tap cat powerup 
-- tap monster1 > row 1> row2 > row3 
-- select next monster up to 6
-- press ricecake
-- loop 

-- if chance 1 then set (513.4,1142.0)
-- if chance 2 then set (379.6,1146.6)
-- if chance 3 then set (242.4,721.1)

--math.randomseed(os.time());
--local chance = math.random(1,3); 
--log(chance); 
--local x = 0; 
--local y = 0; 
--log(x);
--log(y); 


--	if chance == 1 then 
--		x = 513.4
--		y = 1142.0
	 
--	elseif chance == 2 then 
--		x = 379.6
--		y = 1146.6
--	
--	elseif chance == 3 then 
--		x = 242.4 
--		y = 721.1
--end
--------------------------------------------------------------------------------------------------------------
--math.randomseed(os.time());
local chance = math.random(1,3); 


--------------------------------------------------------------------------------------------------------------
lane1 = false;
lane2 = false;
lane3 = false;
a = 0; 
b = 0; 
c = 0; 
d = 0; 
e = 0; 
f = 0; 
laneChecker = function () 
	--checker where to spawn troops 
	--rgb = 8943970 
	

	
	local rgb1= getColor(476,300); 
	local rgb2 = getColor(367,259);
	local rgb3 = getColor(307,220);
	
	if (rgb1 == 8943970) then 
		lane1 = true 
	else 
		lane1 = false
	end
	
	if (rgb2 == 8943970) then 
		lane2 = true 
	else 
		lane2 = false 
	end
	
	if (rbg3 == 8943970) then 
		lane3 = true
	else 
		lane3 = true 
	end 
end

deployTroops = function () 
	if (lane1 == true) then 
		a = 513.4 
		b = 1142.0 
	end 
	
	if (lane2 == true) then 
		c = 379.6 
		d = 1146.6 
	end 
	
	if (lane3 == true) then 
		e = 242.4 
		f = 721.1 
	end 
end 


--cat 
tap(98.4,156.9)
usleep(200000); 

laneChecker(); 
deployTroops(); 
--mon1
tap(79.1,324.4); 
usleep(200000);
tap(a,b);
usleep(100000); 
tap(c,d); 
usleep(100000); 
tap(e,f);
usleep(200000);

laneChecker(); 
deployTroops(); 
--mon2
tap(81.4,478.2); 
usleep(200000);
tap(a,b);
usleep(100000); 
tap(c,d); 
usleep(100000); 
tap(e,f);
usleep(200000);

laneChecker(); 
deployTroops(); 
--mon3
tap(85.9,654.7); 
usleep(200000);
tap(a,b);
usleep(100000); 
tap(c,d); 
usleep(100000); 
tap(e,f);
usleep(200000);

laneChecker(); 
deployTroops(); 
--mon4
tap(81.4,810.1);  
usleep(200000);
tap(a,b);
usleep(100000); 
tap(c,d); 
usleep(100000); 
tap(e,f);
usleep(200000); 

laneChecker(); 
deployTroops(); 
--mon5
tap(81.4,939.9);   
usleep(200000);
tap(a,b);
usleep(100000); 
tap(c,d); 
usleep(100000); 
tap(e,f);
usleep(200000); 

--ricecake
tap(75.7,1330.8); 
usleep(100000);  
