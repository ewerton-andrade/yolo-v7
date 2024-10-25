import platform

def return_os_name():
    """
    Possible return from plataform.system(): 
    - "Linux"; 
    - "Darwin";
    - "Java";
    - "Windows";
    """
    return platform.system().lower()