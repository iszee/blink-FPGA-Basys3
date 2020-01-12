library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity basic is 
port (pb:in boolean;
		clk:in std_logic;
		buz:out std_logic;
		led1:out std_logic;
		led2:out std_logic;
		led3:out std_logic);
end basic;


architecture behv of basic is 
begin

process(clk)
variable k : integer := 1;
variable l : integer := 0;
begin


if (clk'event and clk = '1') then
	
	if (k=1) then
	
		if l <= 50000000 then
			l := l + 1;
			led1 <= '1';
			led2 <= '0';
			led3 <= '0';
			
		elsif (l > 50000000 and l < 100000000) then
			l := l + 1;
			led1 <= '0';
			led2 <= '0';
			led3 <= '0';
			
		elsif l = 100000000 then
			l := 0; 
			k := k + 1;
		end if;
	
	elsif (k=2) then
	
		if l <= 50000000 then
			l := l + 1;
			led1 <= '0';
			led2 <= '1';
			led3 <= '0';
			
		elsif (l > 50000000 and l < 100000000) then
			l := l + 1;
			led1 <= '0';
			led2 <= '0';
			led3 <= '0';

		elsif l = 100000000 then
			l := 0; 
			k := k + 1;
		end if;
		
	elsif (k=3) then
	
		if l <= 50000000 then
			l := l + 1;
			led1 <= '1';
			led2 <= '1';
			led3 <= '0';
			
		elsif (l > 50000000 and l < 100000000) then
			l := l + 1;
			led1 <= '0';
			led2 <= '0';
			led3 <= '0';

		elsif l = 100000000 then
			l := 0; 
			k := k + 1;
		end if;
		
	elsif (k=4) then
            
        if l <= 50000000 then
            l := l + 1;
            led1 <= '0';
            led2 <= '0';
            led3 <= '1';
            
        elsif (l > 50000000 and l < 100000000) then
            l := l + 1;
            led1 <= '0';
            led2 <= '0';
            led3 <= '0';

        elsif l = 100000000 then
            l := 0; 
            k := k + 1;
        end if;
		
	else
	
		k:=1;
		
	end if;
	
end if;

end process;



process(clk)
variable i : integer := 0;

begin

if (clk'event and clk = '1' and not pb) then
	
	if i <= 40000000 then
		i := i + 1;
		buz <= '1';
		
	elsif (i > 40000000 and i < 50000000) then
		i := i + 1;
		buz <= '0';

	elsif i = 50000000 then
		i := 0; 
	

	end if;
	
end if;

end process;


end behv;
