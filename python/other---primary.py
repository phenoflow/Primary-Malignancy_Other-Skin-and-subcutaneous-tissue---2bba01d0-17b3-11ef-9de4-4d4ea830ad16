# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"37016.0","system":"readv2"},{"code":"3445.0","system":"readv2"},{"code":"18245.0","system":"readv2"},{"code":"102547.0","system":"readv2"},{"code":"3516.0","system":"readv2"},{"code":"27370.0","system":"readv2"},{"code":"59919.0","system":"readv2"},{"code":"29524.0","system":"readv2"},{"code":"71627.0","system":"readv2"},{"code":"103066.0","system":"readv2"},{"code":"46008.0","system":"readv2"},{"code":"64406.0","system":"readv2"},{"code":"24375.0","system":"readv2"},{"code":"18618.0","system":"readv2"},{"code":"73760.0","system":"readv2"},{"code":"58601.0","system":"readv2"},{"code":"23480.0","system":"readv2"},{"code":"41958.0","system":"readv2"},{"code":"103440.0","system":"readv2"},{"code":"43122.0","system":"readv2"},{"code":"54234.0","system":"readv2"},{"code":"3028.0","system":"readv2"},{"code":"21327.0","system":"readv2"},{"code":"15868.0","system":"readv2"},{"code":"67748.0","system":"readv2"},{"code":"33682.0","system":"readv2"},{"code":"57446.0","system":"readv2"},{"code":"16202.0","system":"readv2"},{"code":"62399.0","system":"readv2"},{"code":"55550.0","system":"readv2"},{"code":"40443.0","system":"readv2"},{"code":"68197.0","system":"readv2"},{"code":"62305.0","system":"readv2"},{"code":"36731.0","system":"readv2"},{"code":"66447.0","system":"readv2"},{"code":"45077.0","system":"readv2"},{"code":"35457.0","system":"readv2"},{"code":"876.0","system":"readv2"},{"code":"30645.0","system":"readv2"},{"code":"60526.0","system":"readv2"},{"code":"37969.0","system":"readv2"},{"code":"102417.0","system":"readv2"},{"code":"67914.0","system":"readv2"},{"code":"25245.0","system":"readv2"},{"code":"56121.0","system":"readv2"},{"code":"55670.0","system":"readv2"},{"code":"30853.0","system":"readv2"},{"code":"64270.0","system":"readv2"},{"code":"70988.0","system":"readv2"},{"code":"93490.0","system":"readv2"},{"code":"4632.0","system":"readv2"},{"code":"62080.0","system":"readv2"},{"code":"34269.0","system":"readv2"},{"code":"30543.0","system":"readv2"},{"code":"94873.0","system":"readv2"},{"code":"70587.0","system":"readv2"},{"code":"53515.0","system":"readv2"},{"code":"57442.0","system":"readv2"},{"code":"37165.0","system":"readv2"},{"code":"46458.0","system":"readv2"},{"code":"68783.0","system":"readv2"},{"code":"65782.0","system":"readv2"},{"code":"56954.0","system":"readv2"},{"code":"38575.0","system":"readv2"},{"code":"29282.0","system":"readv2"},{"code":"66319.0","system":"readv2"},{"code":"33271.0","system":"readv2"},{"code":"93352.0","system":"readv2"},{"code":"70380.0","system":"readv2"},{"code":"2492.0","system":"readv2"},{"code":"9885.0","system":"readv2"},{"code":"104025.0","system":"readv2"},{"code":"42429.0","system":"readv2"},{"code":"1940.0","system":"readv2"},{"code":"43619.0","system":"readv2"},{"code":"57184.0","system":"readv2"},{"code":"42707.0","system":"readv2"},{"code":"60162.0","system":"readv2"},{"code":"30747.0","system":"readv2"},{"code":"103178.0","system":"readv2"},{"code":"18354.0","system":"readv2"},{"code":"30576.0","system":"readv2"},{"code":"33997.0","system":"readv2"},{"code":"30577.0","system":"readv2"},{"code":"61194.0","system":"readv2"},{"code":"13574.0","system":"readv2"},{"code":"43087.0","system":"readv2"},{"code":"49403.0","system":"readv2"},{"code":"54352.0","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('primary-malignancy_other-skin-and-subcutaneous-tissue-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["other---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["other---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["other---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
