from django.shortcuts import render

# Create your views here.
from django.urls import reverse
from django.views.generic import CreateView

from projectapp.models import Project


class ProjectCreateView(CreateView):
    model = Project
    form_class = ProjectCreationForm
    template_name = 'projectapp/create.html'

    def get_success_url(self):
        return reverse('project:detail', kwargs={'pk': self.object.pk})