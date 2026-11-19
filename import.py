"""
python import.py export.zip
"""

from Tandav import create_app
from Tandav.utils.exports import import_ctf

import sys

app = create_app()
with app.app_context():
    print(
        "This file will be deleted in Tandav v4.0. Switch to using `python manage.py import_ctf`"
    )
    import_ctf(sys.argv[1])
