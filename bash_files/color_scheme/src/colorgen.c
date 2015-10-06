/* hash program for bash
 * Ted Meyer
 * GPLv3
 */

#include <stdio.h>

int hash (char* name) {
    int index = 0;
    int hash = 0;
    while(name[index] != 0) {
        hash ^= name[index++];
    }
    return hash;
}

int main(int argc, char** argv) {
    if (argc <= 1) {
        perror("no rice no life");
        return 1;
    }
    int hsh = hash(argv[1]) % 256;
    printf("%i\n", hsh<0?-hsh:hsh);
    return 0;
}
