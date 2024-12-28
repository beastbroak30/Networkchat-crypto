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
path2 = "pfsend.py"
if dir(path) and dir(path1) and dir(path2):
    try:
        if  "win32" == op.lower():
            os.system('pip install -r requirements.txt')
        if 'linux' == op.lower():
            os.system('pip3 install -r requirements.txt')
    except:
        print('Cannot install required lib')
        if  "win32" == op.lower():
            os.system('type requirements.txt')
        if 'linux' == op.lower():
            os.system('cat requirements.txt')
    try:
        import colorama
        print(colorama.Fore.GREEN,'All files  may have been installed so enjoy')
    except ImportError as e:
        print('modules may not be installed correctly',e)
    os.system('color')
    print(r"now you can run .\hostE.bat for server hosting and .\userE.bat for client")

else:
    print(f"The required file are not present in current dir, please check if these files are present in your dir {path1,path,path2}")
