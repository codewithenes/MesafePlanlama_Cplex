// --------------------------------------------------------------------------
// Licensed Materials - Property of IBM
//
// 5725-A06 5725-A29 5724-Y48 5724-Y49 5724-Y54 5724-Y55
// Copyright IBM Corporation 1998, 2013. All Rights Reserved.
//
// Note to U.S. Government Users Restricted Rights:
// Use, duplication or disclosure restricted by GSA ADP Schedule
// Contract with IBM Corp.
// --------------------------------------------------------------------------

// Problem 3 from Model Building in Mathematical Programming, 3rd ed.
//   by HP Williams
// Factory Planning 
// This model is described in the documentation. 
// See IDE and OPL > Language and Interfaces Examples.

//parametreler
range mahalle=1..23;

int p=...; //ka� sa�l�k oca�� yerle�tirece�im
int mesafe[mahalle][mahalle]=...;
int talep[mahalle]=...;

//de�i�kenler
dvar boolean x[mahalle][mahalle];//i. mahalle j. mahalleye atanm��sa
dvar boolean y[mahalle];//i. mahallede sa�l�k oca�� varsa

//ama� fonksiyonu
minimize sum(i in mahalle, j in mahalle)talep[i]*mesafe[i][j]*x[i][j];

//k�s�tlar

subject to
{
//her mahalle tek bir sa�l�k oca��na atanacak
forall(i in mahalle)
  sum(j in mahalle)x[i][j]==1;
  
//sa�l�k oca�� olan yerlere atama yap
forall(i in mahalle, j in mahalle)
  x[i][j]<=y[j];
  
//p adet sa�l�k oca�� kur
sum(j in mahalle)y[j]==p;




}






