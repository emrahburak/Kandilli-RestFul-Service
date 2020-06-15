
from datetime import datetime

        
        
    
def datetime_converter(value):
    oldformat = [ x for x in value if not x == '.']
    oldformat = ''.join(map(str,oldformat))
    datetime_obj = datetime.strptime(oldformat, '%Y%m%d')
    newformat = datetime_obj.strftime('%Y-%m-%d')
    return newformat
                           
    
    
    


