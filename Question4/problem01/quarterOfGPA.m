function quarterGPA = quarterOfGPA()

% Create a bar graph of GPA vs. quarter taken

quarterA = computeGPA('Autumn');
quarterB = computeGPA('Summer');
quarterC = computeGPA('Winter');
quarterD = computeGPA('Spring');

c = categorical({'Autumn','Summer','Winter','Spring'});
d = [quarterA; quarterB; quarterC; quarterD];

quarterGPA = bar(c,d);

end