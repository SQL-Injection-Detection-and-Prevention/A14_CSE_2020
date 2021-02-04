from django.db import models

# Create your models here.
class UploadModel(models.Model):
    file_name=models.CharField(max_length=150)
    file=models.FileField()
    decsription=models.CharField(max_length=500)
