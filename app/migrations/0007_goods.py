# -*- coding: utf-8 -*-
# Generated by Django 1.11.10 on 2020-12-10 21:29
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0006_foodtype'),
    ]

    operations = [
        migrations.CreateModel(
            name='Goods',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('productid', models.IntegerField(default=1)),
                ('productimg', models.CharField(max_length=250)),
                ('productname', models.CharField(max_length=50)),
                ('productlongname', models.CharField(max_length=180)),
                ('ifxf', models.BooleanField(default=False)),
                ('pmdesc', models.BooleanField(default=False)),
                ('specifics', models.CharField(max_length=64)),
                ('price', models.FloatField(default=0)),
                ('marketprice', models.FloatField(default=1)),
                ('categoryid', models.IntegerField(default=1)),
                ('childcid', models.IntegerField(default=1)),
                ('childcidname', models.CharField(max_length=120)),
                ('dealerid', models.IntegerField(default=1)),
                ('storenums', models.IntegerField(default=1)),
                ('productnum', models.IntegerField(default=1)),
            ],
            options={
                'db_table': 'axf_goods',
            },
        ),
    ]