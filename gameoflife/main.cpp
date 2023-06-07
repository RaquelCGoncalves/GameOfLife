#include <iostream>
#include <string>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
using namespace std;

int **makeArray(int row, int col) 
{
    int** array = new int*[row];
        for (int i = 0; i < row; ++i)
        {
            array[i] = new int[col];
        }
    return (int**) array;
}

void copyArray(const int& row, const int& col, int** array1, int**array2 ) 
{
    for (int i = 0; i < row; i++) 
    {
        for (int j = 0; j < col; j++)
            array2[i][j] = array1[i][j];
    }
}

//This function will count the neighbours around a cell and determine whether it lives, dies, or is born.
void nextState(const int& row, const int& col, int** currentArray, char choice) 
{
    //Copies the current array to a temp array
    int** temp = makeArray(row, col);
    copyArray(row, col, currentArray, temp);
    for (int i = 1; i < row-1; i++) 
    {
        for (int j = 1; j < col-1; j++) 
        {
                int neighbours = 0;
                neighbours = currentArray[i - 1][j] +
                    currentArray[i - 1][j - 1] +
                    currentArray[i][j - 1] +
                    currentArray[i + 1][j - 1] +
                    currentArray[i + 1][j] +
                    currentArray[i + 1][j + 1] +
                    currentArray[i][j + 1] +
                    currentArray[i - 1][j + 1];
                //Cell dies.
                if (neighbours < 2 || neighbours > 3)
                {
                    temp[i][j] = 0;
                }
                //Cell stays alive.
                else if(currentArray[i][j] == 1 && (neighbours == 2 || neighbours == 3))
                {
                    temp[i][j] = currentArray[i][j];
                }
                //Cell is born.
                else if(currentArray[i][j] == 0 && neighbours == 3)
                {
                    temp[i][j] = 1;
                }
        }
    }
    //Copies the completed temp array back to the current array.
    copyArray(row, col, temp, currentArray);

    for (int k = 0; k < row; k++) 
    {
        delete[] temp[k];
    }
    delete[] temp;
}

void print(const int& row, const int& col, int** map) 
{
    for (int i = 1; i < row-1; i++) 
    {
        for (int j = 1; j < col-1; j++) 
        {
            if ( map[i][j]== 1)
                cout << " \033[1;32m*\033[0m" ;
            else
                cout << ' ';
        }
        cout << endl;
    }
}

int main() {
    int** firstGen;
    int** currentGen;
    char neighbours;
    int row, col;
    bool correctValue = false;

    do
    {
        cout << "Please enter the numbers you want to put into a 2D array." << endl;
        cout << "Press enter after each number you input: " << endl;    
        cout << "Please enter the rows size: " << endl;
        cin >> row;
        cout << "Please enter the column size: " << endl;
        cin >> col;
        if(row <= 4 || col <= 4)
        {
            cout << "Values of rows and columns must be higher than 4." << endl;
        }
        else
        {
            correctValue = true;
        }
    } while (!correctValue);

    firstGen = makeArray(row, col);
    currentGen = makeArray(row, col);

    int i = 0;
    do 
    {
        system("clear");
        //Leave the border empty in order to make it easier to calculate the neighbours
        for (int i = 1; i < row-1; i++) 
        {
            for (int j = 1; j < col-1; j++)
            {
                firstGen[i][j] = rand() % 2;
            }
        }

        if (i == 0)
        {
            copyArray(row, col, firstGen, currentGen);
        }
        print(row, col, currentGen);
        nextState(row, col, currentGen, neighbours);
        i++;
        //Time to refresh screen
        system("sleep .1");
    } 
    while (i <= 100);
    return 0;
}