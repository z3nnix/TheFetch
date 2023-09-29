def output(data,data1,data2,data3,data4,data5)
    os = `echo $os`
    kernel = "Linux " + `uname -r`
    de = `echo $DESKTOP_SESSION`
    shell = `echo $SHELL`
    term = `echo $TERM`
    uptime = `uptime -p`

    strings = [
        "#{data}".bold,
	    "#{data1}".bold,
        "#{data2}".bold,
        "#{data3}".bold,
        "#{data4}".bold,
        "#{data5}".bold
    ]

    asciiart = [
      "  @..@".bold,
      " (----)".bold,
      "( >__< )".bold,
      " ^^  ^^ ".bold
    ]


    print "#{asciiart[0].green}		├ #{strings[0].light_green}		・ #{os}"
    print "#{asciiart[1].green}    	├ #{strings[1].light_blue}	・ #{kernel}"
    print "#{asciiart[2].green}    	├ #{strings[2].white}		・ #{de}"
    print "#{asciiart[3].green} 	├ #{strings[3].light_yellow}	・ #{shell}"
    print "                ├ #{strings[4].light_green}    	・ #{uptime}"
    print "	    	└ #{strings[5].red}  	・ #{term}"
end

begin
    eval(File.read("~/.config/thefetch/config.conf"))
rescue
    puts "Config erorr".red
end
