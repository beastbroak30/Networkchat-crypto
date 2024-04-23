import platform 
import sys 
import os 


op=sys.platform

def dir(dirpath):

    if not os.path.exists(dirpath):
        return False 
    else:
        return True 
  
path= "serverE.py"
path1="clientE.py" 
if dir(path) and dir(path1):
    try:
        if  "win32" == op.lower():
            os.system('pip install -r requirements.txt')
        if 'linux' == op.lower():
            os.system('pip3 install -r requiremets.txt')
    except:
        print('Cannot install required lib')
        if  "win32" == op.lower():
            os.system('type requirements.txt')
        if 'linux' == op.lower():
            os.system('cat requirements.txt')
    import colorama
    print(colorama.Fore.GREEN,'All files  may have been installed so enjoy')
    os.system('color')
    print('now you can run hostE.bat for server hosting and userE.bat for client')

else:
    print("The required file are not present in current dir, please check it")
