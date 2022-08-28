# Generated by Django 4.0.6 on 2022-08-28 07:34

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ("core", "0005_booktracking_librarian_alter_booktracking_student"),
    ]

    operations = [
        migrations.AlterField(
            model_name="booktracking",
            name="book",
            field=models.OneToOneField(
                on_delete=django.db.models.deletion.PROTECT, to="core.book"
            ),
        ),
        migrations.AlterField(
            model_name="booktracking",
            name="librarian",
            field=models.ForeignKey(
                on_delete=django.db.models.deletion.PROTECT,
                related_name="libratian_tracking",
                to=settings.AUTH_USER_MODEL,
            ),
        ),
        migrations.AlterField(
            model_name="booktracking",
            name="return_day",
            field=models.DateField(verbose_name="Return day"),
        ),
        migrations.AlterField(
            model_name="booktracking",
            name="student",
            field=models.ForeignKey(
                on_delete=django.db.models.deletion.PROTECT,
                related_name="student_tracking",
                to=settings.AUTH_USER_MODEL,
            ),
        ),
    ]
