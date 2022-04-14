void main()
{
    int count = 1;
    while (count <= 10) {
        print("This is a test message $count");
        count++;
        if (count == 4) {
            break;
        }
    }
    print("Out of Loop");
}