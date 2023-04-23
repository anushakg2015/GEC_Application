#include "newproject.h"
#include <iostream>
#include <list>
newproject::newproject()
{


std::list<int> listOfNumbers = {1, 2, 3, 4};

for (int item : listOfNumbers)
  std::cout << item << " ";

}
