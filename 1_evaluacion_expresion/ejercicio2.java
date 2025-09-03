//Ejercicio #2 Evaluación de expresiones en Java
//Instrucciones: Analice las siguientes expresiones, anote las reducciones y compruebe el resultado en el lenguaje. 
//Si una expresión esta mal redactada, favor de repararla. Es permitido crear variables extra.
//Puede utilizar esta herramienta Java Online Compiler
                    

//Nota: todas las expresiones comienzan con los siguientes valores:
int x=10;
int b=10;
//favor de reiniciar los valores de x y Y al verificar cada expresión

//Expresión #1
System.out.println(x++);
//Resultado 10

//Expresión #2
System.out.println(++x);
//Resultado 11

//Expresión #3

int x=10;
        int b=10;
        int j=b++ * -3 ;
        int g= -3 % x++;
        boolean res= j==g;
        System.out.println(res);
//b++ * -3 == -3 % x++
//Resultado False

//Expresión #4

double j= 30 -10;
j/= ++b + (30 % 14);
System.out.println(j);
//30 - 10 /= % ++b + 30 % 7 * 2
//Resultado 1.5384615384615385

//Expresión #5
        int x=10;
        int b=10;
        int j =  -50 * x++;
        int res =j * 80 % b;
        int res2= res / 4 ;
        int res3= res2 *= 8;
        System.out.println(res3);
//x =  -50 * x++ * 80 % b / 4 *=8
//Resultado 0

//Expresión #6
int x=10;
        int b=10;
        int j = x++ - 8 + 3 - 5 / 4 % - 3 + 8;
        b*=j;
        System.out.println(b);
//b*= x++ - 8 + 3 - 5 / 4 % - 3 + 8
//Resultado 120


//Expresión #7
        int x=10;
        int b=10;
       double j= x = b  ;
       double k= j *= 50 / 30 * ++x + 80;
       System.out.println(k);
//x = b * = 50 / 30 * ++x + 80
//Resultado 910

//Expresión #8
++x % 20.2 == -x /= b % = --x

//Expresión #9
1 *= b++ * b-- / 3 % ++b *= 10 + 1;

//Expresión #10
-10 * -0 *= -10 *=x++ + x+=x*x ;

//Expresión #11
a * b == b++ + b-- + --b + x++ + x--;