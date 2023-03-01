*** Variables ***
#CIF Lite Page
${Title}                (//select)[1]
${Fname}                (//input[@type='text'])[1]
${Mname}                (//input[@type='text'])[2]
${Lname}                (//input[@type='text'])[3]
${Bday}                 (//input[@type='text'])[4]
${noMname}              //input[@type='checkbox']
${Suffix}               (//select)[2]
${Mr}                   //option[text()='Mr']
${Ms}                   //option[text()='Ms']
${Mrs}                  //option[text()='Mrs']
${S_II}                 //option[text()='II']
${S_III}                //option[text()='III']
${S_IV}                 //option[text()='IV']
${S_V}                  //option[text()='V']
${S_Jr}                 //option[text()='Jr.']
${S_Sr}                 //option[text()='Sr.']
${Submit}               //button[text()='Submit']



