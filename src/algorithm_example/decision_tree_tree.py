import os
filename='./data_banknote_authentication.txt'
def  read_txt_file(filename):
         data=[]
         with open(filename,'r') as file_to_read:
              while True:
                     tempList=[]
                     lines=file_to_read.readline()
                     if not lines:
                         break
                     for i in  lines.split(','):
                         tempList.append(float(i))
                     data.append(tempList)
         return data 
        

if __name__=='__main__':
    
    data=read_txt_file(filename)
    print(len(data))
    
    