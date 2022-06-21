function sumUnit = totalUnit()

g = read_courses('courses.txt');
arr = make_course_struct(g);

% Compute total number of graduation units
sumUnit = sum([arr(:).units]);
end