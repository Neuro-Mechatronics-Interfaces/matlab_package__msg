# +msg #  
MATLAB `git` submodule package with common TCP/IP or UDP message structure handling for different experiments requiring networking.  

## Contents ##
Currently this only contains a few different types of message structures, mostly used with the `jsonencode` and `jsondecode` MATLAB built-ins.  

## JSON ##
* `msg.json_stim_response` - Returns struct to be used to pass a consolidated multi-channel response metric from an arbitrary number of responses and channels.  
