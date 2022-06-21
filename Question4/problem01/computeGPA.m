function GPA = computeGPA(str)
g = read_courses('courses.txt');
a = make_course_struct(g);

k = 0;
credits = 0;
cndot = false;

if contains(str,',')
    strdot = split(str,',');
    cndot = true;
end 

if strcmpi(str, 'all')
for i = 1:length(g)
    k = k + ((a(i).units) * (a(i).gpa_credits));
end
suma = sum([a(:).units]) ;
GPA = k / suma;


elseif find(strcmp({a.quarter}, str)==1)
for i = 1:length(g)
    if strcmpi(str,a(i).quarter)
    k = k + ((a(i).units) * (a(i).gpa_credits));
    credits = credits + a(i).units ;
    end
end
GPA = k / credits;


elseif cndot
for i = 1:length(g)
    cvtstr = sprintf('%.0f', a(i).academic_year);
    if (strcmpi(strdot(1),a(i).quarter)) && (strcmpi(strdot(2),cvtstr))
    k = k + ((a(i).units) * (a(i).gpa_credits));
    credits = credits + a(i).units ;
    end
end
GPA = k / credits;


else
for i = 1:length(g)
    if strcmpi(str,a(i).department)
    k = k + ((a(i).units) * (a(i).gpa_credits));
    credits = credits + a(i).units ;

    end
end
GPA = k / credits;

end

end

    