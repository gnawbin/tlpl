//
// Created by wangbin on 2019/8/26.
//
#include <iostream>
#include <string>
#include <list>
#include <algorithm>
#include <string.h>
using namespace std;
class Patron;
class Book{
public:
    Book(){
        patron=0;
    }
    bool operator==(const Book& bk) const{
        return strcmp(title,bk.title)==0;
    }
private:
    char *title;
    Patron *patron;
    ostream&  printBook(ostream& ) const;
    friend ostream&  operator<<(ostream& out,const Book& bk){
        return bk.printBook(out);
    }
    friend class CheckedOutBook;
    friend Patron;
    friend void includeBook();
    friend void checkOutBook();
    friend void returnBook();
};
class Author{
public:
    Author(){

    }
    bool operator==(const Author& ar) const{
        return strcmp(name,ar.name)
    }

private:
    char *name;
    list<Book> books;
    ostream& printAuthor(ostream& )const;
    friend  ostream& operator<<(ostream& out,const Author& ar){
        return ar.printAuthor(out);
    }
    friend void includeBook();
    friend void checkOutBook();
    friend  void returnBook();
    friend  class CheckedOutBook;
    friend  Patron;
};
class CheckedOutBook{
public:
    CheckedOutBook(list<Author>::iterator ar,
            list<Book>::iterator bk){
        author=ar;
        book=bk;
    }
    bool operator==(const CheckedOutBook& bk)const{
        return strcmp(author->name,bk.author->name)==0&&
        strcmp(book->title,bk.book->title)==0;
    }
private:
    list<Author>::iterator author;
    list<Book>::iterator book;
    friend void checkOutBook();
    friend  void returnBook();
    friend Patron;
};
class Patron{
public:
    Patron(){

    }
    bool operator==(const Patron& pn) const{
        return strcmp(name,pn.name)==0;
    }

private:
    char *name;
    list<CheckedOutBook> books;
    ostream& printPattron(ostream& )const;
    friend  ostream&operator<<(ostream& out,const Patron& pn){
        return pn.printPattron(out);
    }
    friend  void checkOutBook();
    friend  void returnBook();
    friend  Book;
};

list<Author> catalog['Z'+1];
list<Patron> people['Z'+1];
ostream& Author::printAuthor(ostream &out) const {
    out<<name<<endl;
    list<Book>::const_iterator ref=books.begin();
    for(;ref!=books.end();ref++)
        out<<*ref;
    return out ;

}
ostream& Book::printBook(ostream &out) const{
    out<<"      *"<<endl;
    if(patron!=0)
        out<<"   - checked out to "<<patron->name;
    out<<endl;
    return out;
}
ostream& Patron::printPattron(ostream &out) const {
    out<<name;
    if(!books.empty()){
        out<<" has the following books: \n";
        list<CheckedOutBook>::const_iterator bk=books.begin();
        for(;bk!=books.end();bk++){
            out<<"  *"<<bk->author->name<<","<<bk->book->title<<endl;
        }

    }else
        out<<" has no books\n";
    return out;
}
template <typename T>
ostream& operator<<(ostream& out,const list<T>& lst){
    for(auto ref=lst.begin();ref!=lst.end();ref++){
        out <<*ref;
    }
    return out;
}
int main(int argc,char **argv){

}


