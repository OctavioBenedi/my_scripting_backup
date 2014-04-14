#!/bin/bash

du -Lsbc * 2>/dev/null | sort -rn -k1,1 | awk '
  function hr(bytes) 
  {
    hum[1024^4]="TiB";
    hum[1024^3]="GiB";
    hum[1024^2]="MiB";
    hum[1024]="kiB";
    hum[1]="B"; 
    for (x=1024^3;x>=1;x/=1024) 
    {
      if (bytes>=x)
      {
        return sprintf("%8.3f %s", bytes/x, hum[x]);
      }
    }    
      return sprintf("%4d     B", bytes);
  } 
  {
    print hr($1) "\t" $2
  }
  '

