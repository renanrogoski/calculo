function [fx]=func(x)
    fx = %e^(-x^2);
endfunction
a = 0.0;
b = 2.00;

n = 1000;
inter = (b - a)/n;

soma = 0;
somaB =0;
somaC = 0;

for i=0:n-1      //i indo de 0 até 9
    
     
     xi=a+(inter*i);
     printf("xi %f\n",xi);
     ximais1= xi+inter;
     printf("xi+1 %f\n",ximais1);
     deltax = ximais1 - xi;
     printf("deltax %f\n",deltax);
     ptomedio=xi+(deltax/2);
     printf("ptomedio %f\n",ptomedio);
     f = func(ptomedio);
     printf("f %f\n",f);
     soma = soma + (f*deltax);
     printf("area ponto medio: %f\n\n", soma);
     
     pontoB=ximais1;
     fB = func(pontoB);
     somaB = somaB + (fB*deltax)
     printf("area ponto Baixo: %f\n\n", somaB);
     
     pontoC=xi;
     fC = func(pontoC);
     somaC = somaC + (fC*deltax)
     printf("area ponto Cima: %f\n\n", somaC);
     
end
    
    
    
    
   

