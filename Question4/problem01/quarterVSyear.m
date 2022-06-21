function quart_year = quarterVSyear()

% Create a bar graph of GPA vs. quater and year in Stanford career that class was taken

X = categorical({'0','1','2','3'});

y = [ 0 0 0 computeGPA('Summer,0');...
computeGPA('Autumn,1') computeGPA('Spring,1') computeGPA('Winter,1') 0;...
computeGPA('Autumn,2') computeGPA('Spring,2') computeGPA('Winter,2') computeGPA('Summer,2') ;...
computeGPA('Autumn,3') 0 computeGPA('Winter,3') 0 ];

quart_year = bar(X,y);
legend('Autumn','Spring','Winter','Summer');

end
