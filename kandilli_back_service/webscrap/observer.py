import abc
import time

class Observeble():

    def __init__(self):
        self._observerslist = []

    def update(self,temp):
        try:
            self.__dict__.update(temp)
            self._notify()


        except Exception as err:
            print(err)



    def subscribber(self, observer):
        observer._observeble = self
        self._observerslist.append(observer)

    def unsubscribber(self, observer):
        observer._observeble = None
        self._observerslist.remove(observer)
        
    def _notify(self):
        print('notify')
        for observer in self._observerslist:
            observer.update(self)
    

class IObserver(metaclass=abc.ABCMeta):

    def __init__(self):
        self._observeble = None
        self._observeble_last_update = None

    @abc.abstractmethod
    def update(self,observeble):
        pass


class Observer(IObserver):
    
    def update(self, observeble):
        self._observeble = observeble
        print("new earthquake on Turkey {}")
        print(self._observeble.__dict__.items())

        print("---------------")




def main():
    atp = [ y for y in dir(Observeble) if not y.startswith('__') and not y.startswith('_')]
    print(atp)
    # masum_koylu = Observeble()
    # masum_koylu.set_name = "Masum Köylü"
    # masum_koylu.last_update = 123
    
    # hain_kostok = Observer()

    # masum_koylu.subscribber(hain_kostok)
    # for i in range(5):
    #     masum_koylu.last_update += i
    #     time.sleep(2) #Geçen zaman temsili

if __name__ == "__main__":
    main()




# self._date = ""        #Tarih
        # self._time = ""        #Saat
        # self._latitude = ""    #Enlem
        # self._longitude = ""   #Boylam
        # self._depth_KM = ""    #DerinlikKm
        # self._md = ""          #md
        # self._ml = ""          #ml
        # self._mw = ""          #mw
        # self._place = ""       #yer
        # self._solition_quality = ""  #Çözüm Niteligi

    #SETS

    # @property
    # def date(self):
    #     return self._date

    # @date.setter
    # def date(self,t_date):
    #     self._date = t_date


    # @property
    # def time(self):
    #     return self._time
        
    # @time.setter
    # def time(self, t_time):
    #     self._time = t_time

    #     self._notify()

    # @property
    # def latitute(self):
    #     return self._latitude

    # @latitute.setter
    # def latitute(self, t_latitute):
    #     self._latitude = t_latitute


    # @property
    # def longitute(self):
    #     return self._longitude


    # @longitute.setter
    # def longitute(self, t_longitute):
    #     self._longitude = t_longitute



    # @property
    # def depth_km(self):
    #     return self._depth_KM


    # @depth_km.setter
    # def depth_km(self, t_depth):
    #     self._depth_KM = t_depth


    
    # @property
    # def md(self):
    #     return self._md

    # @md.setter
    # def md(self, t_md):
    #     self._md = t_md



    # @property
    # def ml(self):
    #     return self._ml

    # @ml.setter
    # def ml(self, t_ml):
    #     self._ml = t_ml



    # @property
    # def mw(self):
    #     return self._mw

    # @mw.setter
    # def mw(self, t_mw):
    #     self._mw = t_mw



    # @property
    # def place(self):
    #     return self._place

    # @place.setter
    # def place(self,t_place):
    #     self._place = t_place



    # @property
    # def solition_quality(self):
    #     return self._solition_quality


    # @solition_quality.setter
    # def solition_quality(self, t_solition_quality):
    #     self._solition_quality = t_solition_quality

    


    #GETS

    # def get_date(self):
    #     return str(self._date)

    # def get_time(self):
    #     return str(self._time)

    # def get_latitute(self):
    #     return str(self._latitude)

    # def get_longitute(self):
    #     return str(self._latitude)

    # def get_depth_km(self):
    #     return str(self._depth_KM)

    # def get_md(self):
    #     return str(self._md)

    # def get_ml(self):
    #     return str(self._ml)

    # def get_mw(self):
    #     return str(self._mw)

    # def get_place(self):
    #     return str(self._place)

    # def get_solition_quality(self):
    #     return str(self._solition_quality)
    
    # def get_all(self):
    #     return "{}-{}-{}-{}-{}-{}-{}-{}-{}".format(self.get_date,
    #                                                self.get_time,
    #                                                self.get_latitute,
    #                                                self.get_longitute,
    #                                                self.get_date,
    #                                                self.get_md,
    #                                                self.get_ml,
    #                                                self.get_mw,
    #                                                self.get_place,
    #                                                self.get_solition_quality)
        
