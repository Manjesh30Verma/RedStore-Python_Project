# Generated by Django 4.0.4 on 2022-12-23 16:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('myadmin', '0002_subcategroy'),
    ]

    operations = [
        migrations.CreateModel(
            name='products',
            fields=[
                ('prodid', models.AutoField(primary_key=True, serialize=False)),
                ('title', models.CharField(max_length=50)),
                ('subcatname', models.CharField(max_length=50)),
                ('description', models.CharField(max_length=500)),
                ('ldate', models.CharField(max_length=10)),
                ('edate', models.CharField(max_length=10)),
                ('info', models.CharField(max_length=50)),
            ],
        ),
    ]
