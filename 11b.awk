BEGIN{
	FS="|"
	print"-----------------------EMPLOYEE DETAILS------------------\n"
	print"\nSINO\tEId\tEname\t\tDesign\t\tBsal\t\tDA\t\tHRA\t\tGsal"
}
{
	SN++
	if($5<10000){
		da=0.45*$5
		hra=0.15*$5
	}
	else{
		da=0.50*$5
		hra=0.20*$5
}
gs=$5+da+hra
printf("\n%3d\t%4d\t%-20s\t%-10s\t\t%5d\t%5d\t%5d\t%5d",SN,$1,$2,$3,$5,da,hra,gs)
tbs+=$5
thra+=hra
tda+=da
tgs+=gs
}
END{  
	printf("\nTotalBsal:%d\nTotalDA:%d\nTotalHRA:%d\nTotalGsal:%d\n",tbs,tda,thra,tgs);	
}


