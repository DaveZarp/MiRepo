
Entity sumador is 
Port( A,B,Cin : in bit;
S,Cout: out bit 
);
end entity;

architecture behavior of sumador is 

signal aux: bit; --EDITE ESTA LINEA --
begin

S<= aux xor cin;
cout<= (A and B) or (Cin and aux);
aux<= A xor B;

end behavior;
