#include <iostream>
#include <fstream>
using namespace std;

int main()
{
	
ifstream myfile1{"data/file1", ios::binary}; //open "data/file1.bin" for reading in binary mode
ofstream myfile2{"data/file3", ios::binary}; //open "data/file3.bin" for writing in binary mode 


if (!myfile1)
{
  cout << "Error opening data/file1.bin" << endl;
}
else if (!myfile2)
{
  cout << "Error opening data/file3.bin" << endl;
}
else
{
	int avg, sum, ran = 0;
	for (int i = 0; i < 3; i++)
	{
	  myfile1.read(reinterpret_cast<char*>(&ran), sizeof(char));
	  sum += ran;
	}
	avg = sum/3;
	
	int writeIF= avg < 75 ? 0 : avg > 150 ? 225 : 100;
	for (int i = 0; i < 3; i++)
	{
	  myfile2.write(reinterpret_cast<char*>(&writeIF), sizeof(writeIF));
	} 
	
}	
 myfile1.close();
 myfile2.close();
}	
