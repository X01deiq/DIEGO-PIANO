signal any_pressed : std_logic;
...
any_pressed <= '0';
for i in 0 to 7 loop
    if pulsadores(i) = '0' then
        index := i;
        any_pressed <= '1';
        exit;
    end if;
end loop;
...
-- luego en el proceso del multiplexor:
if any_pressed = '1' then
    case sel is
        ...
    end case;
else
    nota_out <= '0';
end if;
