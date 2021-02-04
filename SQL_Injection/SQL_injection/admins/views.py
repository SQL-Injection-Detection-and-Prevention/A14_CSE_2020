from django.db.models import Count
from django.shortcuts import render, redirect


# Create your views here.
from admins.forms import UploadForm
from admins.models import UploadModel
from user.models import RegisterModel, SQLModel, WebsiteModel


def admins(request):
    if request.method == "POST":
        if request.method == "POST":
            usid = request.POST.get('username')
            pswd = request.POST.get('password')
            if usid == 'admin' and pswd == 'admin':
                return redirect('admin_design')
    return render(request,'admins/admins.html')

def admin_page(request):
    obj = RegisterModel.objects.all()
    return render(request,'admins/admin_page.html',{'objects':obj})

def upload_page(request):
    if request.method=="POST":
        forms=UploadForm(request.POST, request.FILES)
        if forms.is_valid():
            forms.save()
            return redirect('admin_view_document')
    else:
        forms = UploadForm()
    return render(request,'admins/upload_page.html',{'form':forms})

def view_admin_page(request):
    obj = UploadModel.objects.all()
    return render(request,'admins/view_upload_page.html',{'obj':obj})

def admin_view_document(request):
    obj = UploadModel.objects.all()
    return render(request,'admins/admin_view_document.html',{'obj':obj})

def view_attack(request):
    obj = SQLModel.objects.all()
    return render(request,'admins/view_attack.html',{'obj':obj})

def chart_page(request):
    chart = SQLModel.objects.values('attack_type').annotate(dcount=Count('attack_type'))
    return render(request,'admins/chart_page.html',{'obj':chart})

def attack_website(request):
    onj = WebsiteModel.objects.all()
    return render(request,'admins/attack_website.html',{'obj':onj})