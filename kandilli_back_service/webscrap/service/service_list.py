from .service_base import GetBase,GetLink

class GetDataList(GetBase):
    def __init__(self):
        super(GetDataList, self).__init__()


    def create(self):
        return GetLink().get_txt_links()
        

        
    
