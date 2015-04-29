// Test File read.cpp : Defines the entry point for the console application.
//

#include <stdio.h>
#include <iostream>
#include <fstream>

#include <math.h>
#include <ctime>

using namespace std;

int main (int argc, char *argv[])
{
	ifstream in_stream;
	in_stream.open(argv[1]);
	int a;
	int b;
	in_stream >> a;
	in_stream >> b;
	in_stream.close();
    int c;
	c = a * b;

	ofstream fs(argv[2]);

    if(!fs)
    {
        cerr<<"Cannot open the output file."<<endl;
        return 1;
    }
    fs<<c;
    fs.close();
	return 0;
}



