opts = detectImportOptions('course_grades_2023.xlsx');
opts = setvartype(opts, {'ID_Number', 'Name'}, 'string');
table = readtable('course_grades_2023.xlsx', opts);

table_size = size(table); %two element array with number of rows and columns
number_of_rows = table_size(1);

%Part A
highest_lab_mark = {' ', 0}; %element 1: name of student, element 2: mark
for i = 2:number_of_rows
    total_lab_mark = 0;
    for j = 3:6 %lab marks are columns 3 to 6
        total_lab_mark = total_lab_mark + table{i,j};
    end
    if total_lab_mark > highest_lab_mark{2} %finds the higher lab mark
        highest_lab_mark{1} = table{i,1};
        highest_lab_mark{2} = total_lab_mark;
    end
end
disp('Part A: ' + highest_lab_mark{1} + ' ' + highest_lab_mark{2});

%Part B
highest_exam_mark = {' ', 0};
for i = 2:number_of_rows
    total_exam_mark = 0;
    for j = 8:11 %exam marks are columns 8 to 11
        total_exam_mark = total_exam_mark + table{i,j};
    end
    if total_exam_mark > highest_exam_mark{2} %finds the higher exam mark
        highest_exam_mark{1} = table{i,1};
        highest_exam_mark{2} = total_exam_mark;
    end
end
disp('Part B: ' + highest_exam_mark{1} + ' ' + highest_exam_mark{2});

%Part C
highest_final_mark = {' ', 0};
for i = 2:number_of_rows
    total_mark = 0;
    for j = 3:11 %marks are columns 3 to 11
        total_mark = total_mark + table{i,j};
    end
    if total_mark > highest_final_mark{2} %finds the higher total mark
        highest_final_mark{1} = table{i,1};
        highest_final_mark{2} = total_mark;
    end
end
disp('Part C: ' + highest_final_mark{1} + ' ' + highest_final_mark{2});

%Part D
new_student = {'Kevin Le','400385350',10,10,10,10,20,10,10,10,10};
table = [table;new_student]; %concatenates new student to table
disp(table)
