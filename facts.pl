

student(viola).
student(sam).
student(resty).
student(brenda).
student(namale).
student(junior).
student(charles).
student(stom).
student(samson).
student(roland).
student(bukenya).
student(kizza).
student(gloria).
student(musasi).
student(sadiki).
student(nabukera).
student(aida).
student(gladys).
student(sinan).
student(jerome).




lecturer(byansi).
lecturer(kizito).
lecturer(bk).
lecturer(paddy).
lecturer(rose).
lecturer(nakibuule).
lecturer(paddy).
lecturer(bit-wire).
lecturer(john).
lecturer(ntanda).
lecturer(moses).
lecturer(john).
lecturer(michel).
lecturer(babra).
lecturer(nansamba).
lecturer(mary).
lecturer(sozi).
lecturer(phionah).
lecturer(irene).
lecturer(richard).


teaches(bk,ist1200).
teaches(paddy,bse1204).
teaches(kizito,csc1300).
teaches(richard,csc1209).
teaches(irene,mth3105).
teaches(phionah,csc2200).
teaches(sozi,csc1100).
teaches(mary,ist1204).
teaches(rose,ist1203).
teaches(nansamba,bit2207).
teaches(babra,bse2206).
teaches(kizito,bse2105).
teaches(kizito,bse2106).
teaches(moses,csc2210).
teaches(ntanda,csc2209).
teaches(paddy,csc2100).
teaches(nakibuule,mth1203).
teaches(byansi,bis1104).
teaches(bit-wire,csc1108).
teaches(michel,csc3105).

takes(namale,csc2200).
takes(resty,se1204).
takes(sam,csc1300).
takes(brenda,ist1200).
takes(viola,se1204).
takes(stom,csc1104).
takes(charles,csc2200).
takes(junior,csc1100).
takes(roland,ist1204).
takes(bukenya,ist1203).
takes(kizza,bit2207).
takes(gloria,bse2206).
takes(sadiki,bse2106).
takes(nabukera,csc2210).
takes(aida,csc2209).
takes(gladys,csc2100).
takes(samson,mth1203).
takes(jerome,csc1108).
takes(sinan,csc3105).
takes(musasi,csc2114).

course(csc1209,logic_programming,3).
course(csc1204,operating_systems,4).
course(csc1300,java,4).
course(ist1200,systems_programming,4).
course(bse1204,research_methodology,3).
course(mth1203,data_structures,4).
course(bis1104,dim,4).
course(mth3105,discrete_mathematics,1).
course(csc2210,structured_programming,2).
course(csc2106,practical_skills,5).
course(csc3105,artificial_intelligence,4).
course(bis1104,computer_literacy,2).
course(bse2106,computer_architecture,3).
course(bse2105,individual_project,1).
course(bse2207,numerical_analysis,2).
course(csc1107,calculus,5).
course(ist1203,computer_networks,3).
course(ist1204,comm_skills,4).
course(csc1100,saad,2).
course(csc2200,automata,3).



student_score(viola,logic_programming,80).
student_score(resty,research_methodology,75).
student_score(brenda,operating_systems,70).
student_score(musasi,java,55).
student_score(roland,comm_skills,80).
student_score(samson,numerical_analysis,57).
student_score(gloria,dim,60).
student_score(stom,saad,70).
student_score(gladys,automata,60).
student_score(aida,calculus,80).
student_score(namale,data_structures,100).
student_score(charles,computer_architecture,20).
student_score(junior,individual_project,40).
student_score(jerome,discrete_mathematics,70).
student_score(sinan,structured_programming,65).
student_score(kizza,computer_literacy,90).
student_score(sadiki,artificial_intelligence,52).
student_score(bukenya,computer_networks,75).
student_score(sam,systems_programming,30).
student_score(nabukera,practical_skills,30).


course_belongs_to_department(csc2200,cs).
course_belongs_to_department(ist1200,cs).
course_belongs_to_department(csc1300,cs).
course_belongs_to_department(bse1204,cs).
course_belongs_to_department(csc1209,cs).
course_belongs_to_department(mth1203,it).
course_belongs_to_department(csc1204,cs).
course_belongs_to_department(csc1100,cs).
course_belongs_to_department(csc1107,cs).
course_belongs_to_department(csc2210,cs).
course_belongs_to_department(mth3105,it).
course_belongs_to_department(csc1206,cs).
course_belongs_to_department(csc3105,cs).
course_belongs_to_department(bse2106,n).
course_belongs_to_department(bse2105,n).
course_belongs_to_department(ist1203,cs).
course_belongs_to_department(bse2207,n).
course_belongs_to_department(ist1204,is).
course_belongs_to_department(bit2207,it).
course_belongs_to_department(bis1104,is).


student_belongs(X,Y):-student(X),takes(X,Z),course_belongs_to_department(Z,Y).

member_of_department(A,Y) :-lecturer(A),teaches(A,Z),course_belongs_to_department(Z,Y).


student_and_lecturer(X,B,Y):-student(X),lecturer(Y),takes(X,Z),teaches(B,Z),course_belongs_to_department(Z,Y).

get_student_grade(X,Q,P):-student_score(X,E,Q),Q>=80,P=5;student_score(X,E,Q),Q<80,Q>=70,P=4;student_score(X,E,Q),Q<70,Q>=60,P=3;student_score(X,E,Q),Q<60,Q>=50,P=2;student_score(X,E,Q),Q<50,P=1.
compute_student_gp1(X,Y) :-

student(X),

takes(X,Y),

course(Y,N,C),

student_score(X,N,Score),

(((Score >= 80) -> GP is 5,write(GP));

((Score < 80), (Score >= 70)) -> GP is 4,write(GP);

((Score <70), (Score >= 60)) -> GP is 3,write(GP);

((Score <60), (Score >= 50)) -> GP is 2,write(GP); GP is 1,write(GP)),

Points_earned is ((GP*C)),nl,write(Points_earned),nl,Grade_points is Points_earned /63, write(Grade_points),nl.
