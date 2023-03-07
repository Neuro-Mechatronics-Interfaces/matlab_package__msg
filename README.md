# +msg #  
MATLAB `git` submodule package with common TCP/IP or UDP message structure handling for different experiments requiring networking.  

## Contents ##
Currently this only contains a few different types of message structures, mostly used with the `jsonencode` and `jsondecode` MATLAB built-ins.  

## JSON ##
Any function starting with `json_` should return a data struct that can be used with `jsonencode` to generate a serialized message string.  
If no input arguments are supplied to any of these functions, the default behavior should be to return an example of what a struct of this type could look like.  

* [`msg.json_stim_pattern`](json_stim_pattern.m) - Returns struct to be used to pass a stimulation pattern filename and amplitude scalar.
* [`msg.json_stim_response`](json_stim_response.m) - Returns struct to be used to pass a consolidated multi-channel response metric from an arbitrary number of responses and channels.  
