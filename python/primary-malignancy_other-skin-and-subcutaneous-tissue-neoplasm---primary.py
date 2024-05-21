# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"B337800","system":"readv2"},{"code":"B335800","system":"readv2"},{"code":"B337000","system":"readv2"},{"code":"Byu4200","system":"readv2"},{"code":"B335000","system":"readv2"},{"code":"B33..14","system":"readv2"},{"code":"B336500","system":"readv2"},{"code":"B336300","system":"readv2"},{"code":"B332200","system":"readv2"},{"code":"B333400","system":"readv2"},{"code":"B336400","system":"readv2"},{"code":"B337300","system":"readv2"},{"code":"B333100","system":"readv2"},{"code":"B337500","system":"readv2"},{"code":"B33z.00","system":"readv2"},{"code":"B334100","system":"readv2"},{"code":"B337700","system":"readv2"},{"code":"B336200","system":"readv2"},{"code":"B335400","system":"readv2"},{"code":"B333200","system":"readv2"},{"code":"B33..00","system":"readv2"},{"code":"B335A00","system":"readv2"},{"code":"B337100","system":"readv2"},{"code":"B335600","system":"readv2"},{"code":"B333500","system":"readv2"},{"code":"B335500","system":"readv2"},{"code":"B335300","system":"readv2"},{"code":"B333300","system":"readv2"},{"code":"B33..15","system":"readv2"},{"code":"B330.00","system":"readv2"},{"code":"B337900","system":"readv2"},{"code":"B337600","system":"readv2"},{"code":"B332000","system":"readv2"},{"code":"B335700","system":"readv2"},{"code":"B337200","system":"readv2"},{"code":"B335900","system":"readv2"},{"code":"C44","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('primary-malignancy_other-skin-and-subcutaneous-tissue-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["primary-malignancy_other-skin-and-subcutaneous-tissue-neoplasm---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["primary-malignancy_other-skin-and-subcutaneous-tissue-neoplasm---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["primary-malignancy_other-skin-and-subcutaneous-tissue-neoplasm---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
