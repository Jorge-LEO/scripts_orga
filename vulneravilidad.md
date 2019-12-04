CWE-835 - Bucle con condición de salida inalcanzable 
El programa contiene una iteración o ciclo con una condición de salida que no se puede alcanzar, es decir, 
un ciclo infinito. Si un atacante puede influir en el bucle, esta debilidad podría permitir a los atacantes consumir recursos 
excesivos, como CPU o memoria. Un bucle infinito causará un consumo inesperado de recursos, 
como ciclos de CPU o memoria. El funcionamiento del software puede ralentizarse o provocar un tiempo de respuesta prolongado.

*ejemplo de vulnerabilidad*

// Ejemplo de código vulnerable de bucle infinito [CWE-835]
// (c) Investigación HTB
#include "StdAfx.h"
#include <stdio.h>
int main ( int argc, char ** argv [ ] ) {
  int i = 0 ;
  mientras que ( i < 10 ) {
    si ( i == 5 ) {
      printf ( "i es igual a 5 \ n " ) ;
    }
    más {
      i ++ ;
    }
  }
  devuelve 0 ;
}

El ejemplo anterior contiene un error lógico. Si la condición " i==5" es verdadera, 
entonces el programa genera una cadena "i es igual a 5", de lo contrario, incrementará "i" en 1. 
Sin embargo, cuando "i" es igual a 5, es cierto para cualquier iteración futura y aquí es donde el infinito 
Se produce un bucle.

Software afectado
Cualquier software que use bucles o iteraciones puede contener errores lógicos que están sujetos a esta debilidad. 
No hay limitaciones basadas en el lenguaje de programación o la plataforma.

Mitigaciones
No hay mitigaciones particulares para la debilidad. 
Para reducir el posible impacto, la aplicación debe ejecutarse con recursos limitados del sistema, si es posible. 
Evite crear bucles donde el número de iteraciones se base en la entrada del usuario, o 
introduzca contadores adicionales para salir de dichos bucles.
