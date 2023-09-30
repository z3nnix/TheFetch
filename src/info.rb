def output(data,data1,data2,data3,data4,data5,data6)
    hostname = `hostname`.chomp!   
    username = `users`.chomp!
    huname = "#{username}@#{hostname}".green.bold

    os = "#{data6}\n"
    kernel = "Linux " + `uname -r`
    de = `echo $DESKTOP_SESSION`
    shell = `echo $SHELL`
    uptime = `uptime -p`
    term = `echo $TERM`

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
    
    puts "#{asciiart[0].green}     ┌ #{huname}"
    print "#{asciiart[1].green}	   ├ #{strings[0].light_green}#{os}"
    print "#{asciiart[2].green}   ├ #{strings[1].light_blue}#{kernel}"
    print "#{asciiart[3].green}   ├ #{strings[2].white}#{de}"
    print "           ├ #{strings[3].light_yellow}#{shell}"
    print "           ├ #{strings[4].light_green}#{uptime}"
    print "	   └ #{strings[5].light_red}#{term}"
end

begin
    eval(File.read("/home/#{username}/.config/thefetch/config.conf"))
rescue
    puts "Config erorr".on_red.black.bold
end
