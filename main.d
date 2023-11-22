import std.stdio;
import solver;
import std.format;
// import io;

int main()
{
    string filepath = "../input";
    int[] data = parse_input(filepath);
    solve_sort_indexes(data);
    return 0;
}

int[] parse_input(string path){
    File file = File(path, "r");
    int ncase;
    file.readf!"%d\n"(ncase);
    //writefln("%d", ncase);
    int[] data = new int[ncase];
    for(int i=0; i< ncase;i++){
        file.readf!"%d "(data[i]);
    }
    //print!(int).printArray(data);
    return data;
}