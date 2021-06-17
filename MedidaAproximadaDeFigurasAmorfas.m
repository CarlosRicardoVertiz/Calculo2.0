  
%Materia: Calculo Integral
%Nombre Del Alumno: Carlos Ricardo Vertiz
%correo electronico: carlosricardovertiz@gmail.com
%grupo: 3202
%fecha: 17/06/2021
%Descripcion: Script que funciona para encontrar el area bajo la curva
%por medio del tema "medidas aproximada de figuras amorfas"
clc
clear

syms x;
%pide valores 
disp("TE PEDIRA INICIALMENTE LOS VALORES EN DONDE TU SACARAS EL AREA APROX.")
disp("la funcion no se como hacerla de manera dinamica, tendra que cambiarla usted")
intervalo_a= input("valor de a: ");
intervalo_b= input("valor de b: ");
num_rectangulos=input("con cuantos rectangulos?: ");
%aqui se encuentra la funcion
funcion = input("dame la funcion");
%pricedimiento de base
base= (intervalo_b-intervalo_a)/num_rectangulos;
disp("BASE: ");
disp(base);
%procedimiento de altura
%a+ base 
disp("-----ALTURA Y AREA-----");
acumulador=0;
for area=1:num_rectangulos;
  disp("calculo de areas, cuando:")
  disp(["el area esta en el rectangulo: ", int2str(area)]);
areas= intervalo_a + area*(base)
%sirve para sacar areas
h=funcion(areas);
h_abs=h
%Sacamos el area total
at=base*h;
%sacamos valor absoluto
area_total=abs(at);
acumulador= acumulador + area_total;
end
disp ("el area aproximado es de: ");
acumulador

%OrgullosamenteTESJI<3
