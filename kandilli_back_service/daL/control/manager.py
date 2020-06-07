# -*-coding=utf-8-*-

class ServiceManager():
    def __init__(self, service):
        self.service = service


    def create(self):
        return self.service.create()
