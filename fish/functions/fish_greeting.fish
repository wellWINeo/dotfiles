function fish_greeting -d "Greeting message on shell session start up"
	set_color magenta	
	echo -en "  _-----_	" (welcome_message) "\n"
	set_color magenta
	echo -en " (       \\	" (show_date_info) "\n"
	set_color magenta
	echo -en " \\    0   \\	 Space vessel computer:\n" 
	echo -en "  \\        )	" (show_os_info) "\n"
	echo -en "  /      _/	" (show_cpu_info) "\n"
	echo -en " (     _-	" (show_mem_info) "\n"
	echo -en " \\____-		\n"
end

function welcome_message -d "Say welcome to user"
    set_color normal
    #echo -en "Welcome aboard captain "
    echo -en "Welcome to the cumzone, "
    set_color FFF  # white
    echo -en (whoami) "."
    set_color normal
    echo -en " Only cum inside anime girls!"
end


function show_date_info -d "Prints information about date"
    set_color normal
    set --local up_time (uptime | cut -d "," -f1 | cut -d "p" -f2 | sed 's/^ *//g')

    set --local time (echo $up_time | cut -d " " -f2)
    set --local formatted_uptime $time

    switch $time
    case "days" "day"
        set formatted_uptime "$up_time"
    case "min"
        set formatted_uptime $up_time"utes"
    case '*'
        set formatted_uptime "$formatted_uptime hours"
    end

    echo -en "Today is "
    set_color cyan
    echo -en (date +%Y.%m.%d)
    set_color normal
    echo -en ", we are up and running for "
    set_color cyan
    echo -en "$formatted_uptime"
    set_color normal
    echo -en "."
end


function show_os_info -d "Prints operating system info"

    set_color yellow
    echo -en "\tOS: "
    set_color white
    echo -en (uname -om)
    set_color normal
end


function show_cpu_info -d "Prints iformation about cpu"

    set --local os_type (uname -s)
    set --local cpu_info ""

    if [ "$os_type" = "Linux" ]

        set --local cores_n (grep "cpu cores" /proc/cpuinfo | head -1 | cut -d ":"  -f2 | tr -d " ")
        set --local cpu_type (grep "model name" /proc/cpuinfo | head -1 | cut -d ":" -f2)
        set cpu_info "$cores_n cores, $cpu_type"

    else if [ "$os_type" = "Darwin" ]

        set --local cores_n (system_profiler SPHardwareDataType | grep "Cores" | cut -d ":" -f2 | tr -d " ")
        set --local cpu_type (system_profiler SPHardwareDataType | grep "Processor Name" | cut -d ":" -f2 | tr -d " ")
        set cpu_info "$cores_n cores, $cpu_type"
    end

    set_color yellow
    echo -en "\tCPU: "
    set_color white
    echo -en $cpu_info
    set_color normal
end


function show_mem_info -d "Prints memory information"

    set --local os_type (uname -s)
    set --local total_memory ""

    if [ "$os_type" = "Linux" ]
        set total_memory (free -h | grep "Mem" | cut -d " " -f 11)

    else if [ "$os_type" = "Darwin" ]
        set total_memory (system_profiler SPHardwareDataType | grep "Memory:" | cut -d ":" -f 2 | tr -d " ")
    end

    set_color yellow
    echo -en "\tMemory: "
    set_color white
    echo -en $total_memory
    set_color normal
end

