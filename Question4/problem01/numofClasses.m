function count = numofClasses(str)
g = read_courses('courses.txt');
a = make_course_struct(g);
count = 0;

% Create/compute one additional plot or statistic you find interesting.
 for i = 1:length(g)
     if strcmpi(str,a(i).quarter)
         count = count +1;
     end
 end

end
