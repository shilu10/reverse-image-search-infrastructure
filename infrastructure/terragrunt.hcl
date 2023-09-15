terraform {
    extra_arguments "reconfigure" { 
        commands = ["init"] 
        arguments = ["-reconfigure"]
    }
}
