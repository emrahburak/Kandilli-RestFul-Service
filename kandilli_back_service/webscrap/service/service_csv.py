try:
    import csv
    from .service_base import GetBase,GetLink
except Exception as err:
    print(err)


class GetDataCSV(GetBase):
    def __init__(self):
        super(GetDataCSV, self).__init__()
        self.dict_data = GetLink().get_txt_links()
        pass

    def create(self):
        try:
            if self.dict_data:
                ishere = os.path.exists(self.dirname)
                if ishere:
                    pass
                else:
                    os.mkdir(self.dirname)

                self.join_with = os.path.join(self.BASE_DIR, self.dirname, self.file_name_csv)
                with open(self.join_with, 'w') as write_csv:
                    writer = csv.DictWriter(write_csv, fieldnames=self.cols)
                    writer.writeheader()
                    for data in self.dict_data:
                        writer.writerow(data)

        except Exception as error:
            print(error)
            self._error = False
            return -1


        finally:
            write_csv.close()
            if self._error and self.check_file(self.join_with):
                self.messageTr = 'Dosya: ' + self.join_with + ' konumuna  yazıldı.'
                self.messageEn = 'File: created to '+ self.join_with
                print(self.messageTr)
                print(self.messageEn)
                return 0

            
