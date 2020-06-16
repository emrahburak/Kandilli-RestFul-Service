try:
    import json
    from .service_base import GetBase,GetLink
except Exception as err:
    print(err)


class GetDataJSON(GetBase):
    def __init__(self):
        super(GetDataJSON, self).__init__()
        self.data = GetLink().get_txt_links()
        # print(self.data)

    def create(self):
        try:
            if self.data:
                ishere = os.path.exists(self.dirname)
                if ishere:
                    pass
                else:
                    os.mkdir(self.dirname)

                self.join_with = os.path.join(self.BASE_DIR, self.dirname, self.file_name_json)
                with open(self.join_with, 'w') as write_json:
                    if self.data:
                        json.dump(self.data,write_json,ensure_ascii=False,indent=4)

        except Exception as error:
            print(error)
            self._error = False
            return -1


        finally:
            try:
                write_json.close()
                if self._error and self.check_file(self.join_with):
                    self.messageTr = 'Dosya: ' + self.join_with + ' konumuna  yazıldı.'
                    self.messageEn = 'File: created to ' + self.join_with
                    print(self.messageTr)
                    print(self.messageEn)
                    return 0
            except (Exception) as error:
                print(error)
