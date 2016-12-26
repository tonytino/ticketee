Notes

Helpers (Logic in Views)

Helpers are methods you can define in the files in app/helpers, and they’re made available in your views. Helpers are for extracting the logic from the views; views should just be about displaying information. Every controller that comes from the controller generator has a corresponding helper, and another helper module exists for the entire application: the ApplicationHelper module, which lives at app/helpers/ application_helper.rb.