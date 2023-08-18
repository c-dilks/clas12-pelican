#include "Proto.h"
#include <iostream>

JNIEXPORT void JNICALL Java_Proto_cppMethod(JNIEnv *, jobject) {
  std::cout << "this is a prototype" << std::endl;
}
