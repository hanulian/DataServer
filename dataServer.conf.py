# -*- encoding: utf-8 -*-

# Copyright (c) 2026 - MySmaX
#
# configuration for gunicorn
#

bind = '0.0.0.0:80'
workers = 1
threads = 4
accesslog = '-'
loglevel = 'info'
capture_output = True
enable_stdio_inheritance = True

