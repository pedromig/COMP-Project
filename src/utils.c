#include "utils.h"

const char *decapitalize(const char *string) {
    if (!strcmp(string, "Int"))
        return "int";
    else if (!strcmp(string, "Double"))
        return "double";
    else if (!strcmp(string, "Char"))
        return "char";
    else if (!strcmp(string, "Void"))
        return "void";
    else if (!strcmp(string, "Short"))
        return "short";
    return "unkown";
}