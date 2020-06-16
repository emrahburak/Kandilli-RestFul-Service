# -*-coding=utf-8-*-

"""This program name is observatory.py. You can parse data from Kandilli Observatory/Turkey
Copyright (C) 2019  github/emrahburak 

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>."""

from .control.manager import ServiceManager
from .service.service_list import GetDataList


def main():
    return ServiceManager(GetDataList()).create()
    


if __name__ == '__main__':
    RUN = main()

    



    
