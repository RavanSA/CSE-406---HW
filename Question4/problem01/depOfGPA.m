function barDep = depOfGPA()

% Create a bar graph of GPA vs. department.

deptA = computeGPA('AA');
deptB = computeGPA('CME');
deptC = computeGPA('CS');
deptD = computeGPA('ME');

a = categorical({'AA','CME','CS','ME'});
b = [deptA; deptB; deptC; deptD];

barDep = bar(a,b);

end