

import os

from django.core.wsgi import get_wsgi_application

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "sql_injection_attack.settings")

application = get_wsgi_application()
