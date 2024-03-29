# +msg #  
MATLAB `git` submodule package with common TCP/IP or UDP message structure handling for different experiments requiring networking.  

## Contents ##
Currently this only contains a few different types of message structures, mostly used with the `jsonencode` and `jsondecode` MATLAB built-ins.  

## JSON ##
Any function starting with `json_` should return a data struct that can be used with `jsonencode` to generate a serialized message string.  
If no input arguments are supplied to any of these functions, the default behavior should be to return an example of what a struct of this type could look like.  
**Required `struct` field:**  
* `type` - This can be used by any listening port to manage handling of the message contents. It allows a single port to accept multiple types of messages.

* [`msg.json_stim_pattern`](json_stim_pattern.m) - Returns struct to be used to pass a stimulation pattern filename and amplitude scalar.
 + `type`: `'stim.pattern'`
* [`msg.json_stim_response`](json_stim_response.m) - Returns struct to be used to pass response to query about next stim (json_stim_pattern message).
 + `type`: `'stim.response'`
* [`msg.json_stim_data`](json_stim_data.m) - Returns struct to be used to pass a consolidated multi-channel data metric from an arbitrary number of responses and channels.
 + `type`: `'stim.data'`
* [`msg.json_tmsi_udp_channels_message`](json_tmsi_udp_channels_message.m) - Returns struct for configuring stream channels for TMSi.
 + `type`: `'par.tagged'`
* [`msg.json_tmsi_udp_controller_message`](json_tmsi_udp_controller_message.m) - Returns struct for sending parameter/value keys to TMSi controller service.
 + `type`: `'par.base'`
* [`msg.json_tmsi_udp_name_message`](json_tmsi_udp_name_message.m) - Returns struct for sending recording/file naming parameters to the TMSi controller service and other interfaces.
 + `type`: `'name.tmsi'`  
* [`msg.json_task_udp_name_message`](json_task_udp_name_message.m) - Returns struct for handling messages about filenames that are controlled by the wrist center-out task.
 + `type`: `'name.task'`
* [`msg.json_tmsi_request_message`](json_tmsi_request_message.m) - Returns struct with TMSi-controller parameter-request fields.
 + `type`: `'request.tmsi'`
* [`msg.json_tmsi_tcp_streams_message`](json_tmsi_tcp_streams_message.m) - Returns struct for handling tcp messages with data streams from tagged TMSi devices.
 + `type`: `'stream.tmsi'`
* [`msg.json_sta_udp_config_message`](json_sta_udp_config_message.m) - Returns struct for handling udp messages with stim-triggered averaging configuration parameters.
 + `type`: `'sta.config'`
* [`msg.json_sta_udp_data_message`](json_sta_udp_data_message.m) - Returns struct for handling udp messages with stim-triggered averaging data snippets.
 + `type`: `'sta.data'`
* [`msg.json_snippets_udp_config_message`](json_snippets_udp_config_message.m) - Returns struct for handling udp messages with unipolar snippets montage configuration parameters.
 + `type`: `'snippets.config'`
* [`msg.json_tmsi_state_message`](json_tmsi_state_message.m) - Returns struct with recording controller state and block number.
 + `type`: `'state.tmsi'`
* [`msg.json_data_server_request`](json_data_server_request.m) - Returns struct with request info to get specific information from MEP responses data server.
 + `type`: `'mep.request'`
* [`msg.json_data_server_response`](json_data_server_response.m) - Returns struct with requested subset of MEP response data, with indexing info as well.
 + `type`: `'mep.response'`
