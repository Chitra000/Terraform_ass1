/*
arg_1 = filename specifies the name of file to be created (required)
arg_2 = content includes the content to be displayed in the file (optional)
arg_3 = file permission grants permissions, 0444-read, 0777-read, write, & execute for owner, group and others (optional)
*/
resource "local_file" "res_name1"{       
    filename = "chitra1.txt"
    content = "Welcome to Terraform!"
    file_permission = "0444"
}
resource "local_file" "res_name2"{       
    filename = "chitra2.txt"
    content = "${var.str_var}\n${var.num_var}\n${var.bool_var}"
    file_permission = "0777"
}

