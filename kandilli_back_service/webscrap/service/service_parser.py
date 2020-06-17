import numpy as np


class HtmlParser():
            

    def link_parsing(self):
        try:
            for num_line, line in enumerate(self.get_data.splitlines()):
                self.dict = {}
                self.counter_numline.append(num_line)
                self.matrix_base = np.array(line.split())
                for dict_index in range(len(self.cols[:5])):
                    self.dict[self.cols[dict_index]] = self.matrix_base[dict_index]



                if self.matrix_base[5] in self.float_oldbase:
                    self.dict[self.cols[5]] = self.float_base

                else:
                    self.dict[self.cols[5]] = self.matrix_base[5]

                if self.matrix_base[6] in self.float_oldbase:
                    self.dict[self.cols[6]] = self.float_base

                else:
                    self.dict[self.cols[6]] = self.matrix_base[6]

                if self.matrix_base[7] in self.float_oldbase:
                    self.dict[self.cols[7]] = self.float_base

                else:
                    self.dict[self.cols[7]] = self.matrix_base[7]


                self.matrix_col_eight = [x for x in self.matrix_base[8:] if x.isupper()]
                self.matrix_revize = [y for y in self.matrix_base[8:] if re.search("[A-Z]+[0-9]+", y)]
                self.matrix_revize_date = [p for p in self.matrix_base[8:] if re.search(self.dateregex, p)]
                self.matrix_revize_time = [k for k in self.matrix_base[8:] if re.match(self.timeregex, k)]
                self.matrix_ilksel = np.array(
                    [z for z in self.matrix_base[8:] if z in self.matrix_base[-1] and re.match('^.*[a-z]', z)])
                if self.matrix_col_eight:
                    self.dict[self.cols[8]] = ''.join(map(str, self.matrix_col_eight))

                if self.matrix_revize or self.matrix_revize_date or self.matrix_revize_time:
                    self.dict[self.cols[9]] = self.matrix_revize[0] + '' + self.matrix_revize_date[0] + '-' + \
                        self.matrix_revize_time[0]

                if self.matrix_ilksel.size > 0:
                    self.dict[self.cols[9]] = self.matrix_ilksel[0]


                #DELETE IT
                self.dict['tarih'] = datetime_converter(self.dict['tarih'])
                self.dict_box.append(self.dict)




                #Observeble Class update dict
                # self.observeble.update(self.dict)


            
        except (Exception) as error:
            print(error)
            self._error = False
            return -1
        finally:
            if self._error:
                if self.dict_box:
                    # print(self.dict_box)

                    return self.dict_box



                    # +++++++Check your data+++++++
                    # for num, i in enumerate(self.dict_box):
                    #     print(num, i)

