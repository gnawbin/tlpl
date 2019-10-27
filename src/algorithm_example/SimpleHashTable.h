//
// Created by root on 2019/8/25.
//

#ifndef TLPL_SIMPLEHASHTABLE_H
#define TLPL_SIMPLEHASHTABLE_H
#include <vector>
#include <map>
#include <stdexcept>
#include <utility>
#include <functional>
#include <cstddef>
#include <algorithm>
#include <iterator>
using namespace std;
template<class Key, class Value>
class HashTable
{
public:
    /// Ctor - initialize hash map
    HashTable(size_t size):m_records(size),m_capacity(0){};

    /// Table[key] = value
    void insert(const Key& key, const Value& val);

    /// get the value corresponding to the given key. throws out_of_range if element does not exist.
    Value get(const Key& key) const;

    /// Removes the key-value corresponding to the given key. throws out_of_range if element does not exist.
    void remove(const Key& key);

    /// Prints buckets and their data
    void printTable() const;

private:
    size_t m_capacity;
    vector<map<Key, Value> > m_records;
    hash<Key> m_hashFunction;

    /// Returns the hashed index of a given key. Returned index is within the table size limits.
    int getHashedIndex(const Key& key) const;
};
template <typename Key,typename Value>
void HashTable<Key,Value>::insert(const Key &key, const Value &val) {
    m_records[getHashedIndex(key)][key]=val;
}
template <class Key,class Value>
Value HashTable<Key,Value>::get(const Key &key) const {
    int hashedKey=getHashedIndex(key);
  map<int,float>::const_iterator it1;
    auto it=m_records[hashedKey].find(key);
    if(it==m_records[hashedKey].end()){
        throw std::out_of_range("item is not in map");
    }
    return it->second;
}
template <typename Key,typename  Value>
void HashTable<Key,Value>::remove(const Key &key) {
    int hashedKey=getHashedIndex(key);
    auto it=m_records[hashedKey].find(key);
    if(it==m_records[hashedKey].end()){
        throw  std::out_of_range("Item is not in map");
    }
    m_records[hashedKey].erase(it);
}
template <typename  Key,typename  Value>
int HashTable<Key,Value>::getHashedIndex(const Key &key) const{
    //请注意，如果将表大小保持为2的恒定幂，则可以对此进行优化。
    //例如，如果表的大小是8（索引0到7，所以二进制最多111个），那么哈希键是x，
    //执行X和（大小-1）->X和111，而不是X%大小e
    return  m_hashFunction(key)%m_capacity;

}
#endif //TLPL_SIMPLEHASHTABLE_H