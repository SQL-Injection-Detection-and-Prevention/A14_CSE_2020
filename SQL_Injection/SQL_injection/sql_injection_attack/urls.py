
from django.conf.urls import url
from django.contrib import admin

from sql_injection_attack import settings
from admins import views as admin_views
from user import views as user_views
from django.conf.urls.static import static

urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url('^$', user_views.index, name="index"),
    url('user/register', user_views.register, name="register"),
    url('userpage', user_views.userpage, name="userpage"),
    url('mydetails', user_views.mydetails, name="mydetails"),
    url('check_website', user_views.check_website, name="check_website"),
    url('view_website', user_views.view_website, name="view_website"),

    url('admins', admin_views.admins, name="admins"),
    url('admin_page', admin_views.admin_page, name="admin_page"),
    url('admin_design', admin_views.admin_page, name="admin_design"),
    url('upload_page', admin_views.upload_page, name="upload_page"),
    url('view_admin_page', admin_views.view_admin_page, name="view_admin_page"),
    url('admin_view_document', admin_views.admin_view_document, name="admin_view_document"),
    url('view_attack', admin_views.view_attack, name="view_attack"),
    url('chart_page', admin_views.chart_page, name="chart_page"),
    url('attack_website', admin_views.attack_website, name="attack_website"),
    ]
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)