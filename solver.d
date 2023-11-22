//module quiz_3.solver;

//import io;
import std.stdio;
import std.array;
import main;

void solve_sort_indexes(int[] data){

    //TODO: Solve the solution
    Array var = new Array(data);
   
    
    var.sort();
    writeln("Sorted values:");
    foreach (value; var.values) {
        write(value," ");
    }
    writeln();
    writeln("Sorted indices:");
    foreach (index; var.indices) {
        write(index," ");
    }
    writeln();
}

class Array {
    int[] values;
    int[] indices;
    ulong n; 
    int x;
    int y;

    this(int[] var){
        values=var.dup;
        indices = new int[var.length];
        n=values.length;
        for (int i=0; i<var.length; i++)
        {
            indices[i]=i+1;
        }

    }
    
    void sort()
    {
        for (int i=0; i<n; i++)
        {
            for (int j=0; j<n-1; j++)
            {
                if (values[j]>values[j+1])
                {
                    swap(values[j], values[j+1]);
                    swap(indices[j], indices[j+1]);
                }
        
            }
        }

    }

void swap(ref int a, ref int b){
    int temp = 0;
    temp = b;
    b = a;
    a = temp;
    }

}