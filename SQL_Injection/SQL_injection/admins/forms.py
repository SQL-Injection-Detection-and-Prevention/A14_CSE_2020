
from django import forms

from admins.models import UploadModel


class UploadForm(forms.ModelForm):

    class Meta:
        model = UploadModel
        fields = ('file_name', 'file', 'decsription')