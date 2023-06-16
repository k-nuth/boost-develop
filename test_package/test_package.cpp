#include <cstdlib>
#include <iostream>
#include <iterator>
#include <string>
#include <vector>
#include <limits>


// #include <boost/unordered/concurrent_flat_map.hpp>
#include <boost/unordered_map.hpp>

int main() {
    // boost::concurrent_flat_map<int, int> map;
    boost::unordered_map<int, int> map;
    map.emplace(1, 2);
    return map.contains(1) ? 0 : -1;
}