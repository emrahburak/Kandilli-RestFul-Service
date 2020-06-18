from django.db import models

class Kandilli(models.Model):
    tarih = models.DateField(blank=True, null=True)
    saat = models.TimeField(blank=True, null=True)
    enlem = models.FloatField(blank=True, null=True)
    boylam = models.FloatField(blank=True, null=True)
    derinlikkm = models.FloatField(blank=True, null=True)
    md = models.FloatField(blank=True, null=True)
    ml = models.FloatField(blank=True, null=True)
    mw = models.FloatField(blank=True, null=True)
    yer = models.CharField(max_length=200, blank=True, null=True)
    cozumniteligi = models.CharField(db_column='cozumniteligi', max_length=200, blank=True, null=True)  # Field name made lowercase.


    @classmethod
    def create(cls, **kwargs):
        kandilli = cls.objects.create(
            tarih = kwargs['tarih'],
            saat = kwargs['saat'],
            enlem = kwargs['enlem'],
            boylam = kwargs['boylam'],
            derinlikkm = kwargs['derinlikkm'],
            md = kwargs['md'],
            ml = kwargs['ml'],
            mw = kwargs['mw'],
            yer = kwargs['yer'],
            cozumniteligi = kwargs['cozumniteligi'])

        return kandilli

# Create your models here.
