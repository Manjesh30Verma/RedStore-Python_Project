# Generated by Django 4.0.4 on 2022-12-01 07:10

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='categroy',
            fields=[
                ('catid', models.AutoField(primary_key=True, serialize=False)),
                ('catname', models.CharField(max_length=50)),
                ('caticonname', models.CharField(max_length=100)),
            ],
        ),
    ]
