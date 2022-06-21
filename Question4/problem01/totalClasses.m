function numofclasses = totalClasses()
g = read_courses('courses.txt');
arr = make_course_struct(g);

% Compute total number of classes taken
numofclasses = height(arr); 

end