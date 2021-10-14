#include<stdio.h>
#include<string.h>
#include <stdlib.h>
int employeeNumber;
int pptGenerationTime[1000];
int pptDeadline[1000];
int pptPeriod[1000];
int PeriodsLCM;
char help[255];
int i,j,h;
float f;
void getJob()
{
FILE *InputFile;
InputFile = fopen("input.txt", "r");
fgets(help, 255, InputFile);
employeeNumber = atoi(help);
// getting processes from the file input.txt;
for(i = 0; i<employeeNumber; i++)
{
fgets(help, 255, InputFile);
pptGenerationTime[i]= atoi(help);
fgets(help, 255, InputFile);
pptDeadline[i]= atoi(help);
fgets(help, 255, InputFile);
pptPeriod[i]= atoi(help);
}
fclose(InputFile);
// showing the processes;
printf("Ei| Wi, Dli, pi\n");
printf("----------------\n");
for(i=0; i<employeeNumber ; i++)
{
printf("E%d | %d, %d, %d\n",i,pptGenerationTime[i], pptDeadline[i], 
pptPeriod[i]);
} }
void getPeriodsLCM()
  {
int help[1000];
for(i=0 ; i<employeeNumber; i++)
{
help[i] = pptPeriod[i];
}
int h = 0;
int theLowestValueInHelp;
int theLowestValueIndex;
while(h == 0)
{
h = 1;
theLowestValueInHelp = help[0];
theLowestValueIndex = 0;
for(i=0 ; i < employeeNumber; i++)
{
if(theLowestValueInHelp != help[i])
{
h = 0;
if(theLowestValueInHelp>help[i])
{
theLowestValueInHelp = help[i];
theLowestValueIndex = i;
} } }
if(h == 0)
{
help[theLowestValueIndex] = theLowestValueInHelp + 
pptPeriod[theLowestValueIndex];
} }
PeriodsLCM = help[0];
printf("Employee Can Complete the Given Job In %d Hours(%d is the Lcm of our Job 
periods)",PeriodsLCM,PeriodsLCM);
}
float schedulability()
{
float Condition = 0;
float x,y;
printf("\n The Sum Of Work/Period of Each Employee:");
for(i=0 ; i<employeeNumber ; i++)
{
x = pptGenerationTime[i];
y = pptPeriod[i];
  Condition = Condition + (x/y);
printf(" (%d/%d) ",pptGenerationTime[i],pptPeriod[i]);
}
printf("is equal : %f", Condition);
return Condition;
}
void schedule()
{
int earliestDeadline;
int earliestDeadlineIndex;
int schedulingTable[PeriodsLCM];
int remainsCapacity[1000];
int nextDeadline[1000];
int processOnlineNewPeriod[1000];
for(i=0 ; i<employeeNumber ; i++)
{
nextDeadline[i] = pptDeadline[i];
remainsCapacity[i] = pptGenerationTime[i];
processOnlineNewPeriod[i] = 0;
}
// scheduling time milestone...
FILE *OutputtFile;
OutputtFile = fopen("output.txt", "w");
fprintf(OutputtFile, "Periods LCM = %d\n",PeriodsLCM);
for(i=0; i<PeriodsLCM; i++)
{
printf("\n(%d,%d) : ",i,i+1);
//getting the earliest deadline
earliestDeadline = PeriodsLCM;
earliestDeadlineIndex = -1;
for(j=0 ; j<employeeNumber ; j++)
{
if(remainsCapacity[j] > 0)
{
if(earliestDeadline > nextDeadline[j])
{
earliestDeadline = nextDeadline[j];
earliestDeadlineIndex = j;
} } }
printf(" [exc = %d] ",earliestDeadlineIndex);
fprintf(OutputtFile, "(%d,%d) : [exc = %d]\n",i,i+1,earliestDeadlineIndex);
remainsCapacity[earliestDeadlineIndex]--;
        //get the next deadline distance
for(j=0 ; j<employeeNumber ; j++)
{
if(processOnlineNewPeriod[j] == (pptPeriod[j] - 1 ) )
{
nextDeadline[j] = pptDeadline[j];
remainsCapacity[j] = pptGenerationTime[j];
processOnlineNewPeriod[j] = 0;
}
else
{
if(nextDeadline[j] >0)
{
nextDeadline[j]--; }
else
{
if(remainsCapacity[j] > 0)
{
printf("\nthe Employee %d has no chance to 
complete its Job",j);
fprintf(OutputtFile, "\nthe Employee %d 
has no chance to complete its Job",j);
} }
processOnlineNewPeriod[j]++;
} } }
fclose(OutputtFile);
}
int main()
{
printf("Employee Job Capability Check \n");
for(i=0; i<1024000; i++);
printf("done \n");
printf("\n\nOur System :\n");
getJob();
  printf("\n\nPeriods LCM :\n");
getPeriodsLCM();
printf("\n\nJob Schedulability Test :\n");
f = schedulability();
if(f <= 1)
{
printf("\n The Given Job of employee are Schedulable because %f <= 1", f);
schedule();
}
else
{
printf("\nThe Given Job of employee are Schedulable because %f > 1",f);
FILE *OutputtFile;
OutputtFile = fopen("output.txt", "w");
fprintf(OutputtFile, "The Given Job of employee are Schedulable because %f > 
1",f);
fclose(OutputtFile);
exit(0);
} }
