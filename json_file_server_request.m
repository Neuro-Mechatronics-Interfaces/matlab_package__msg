function data = json_file_server_request(tank, action, parameters)
%JSON_FILE_SERVER_REQUEST Sends a request to retrieve data from a JSON file server.
%
% Syntax:
%   data = json_file_server_request(tank, action, parameters)
%
% Description:
%   This function sends a request to a JSON file server to download specific data from a specified tank 
%   (dataset), based on the provided action and parameters. Available actions include retrieving individual 
%   sweeps or blocks of data. The function allows customization of parameters based on the action.
%
% Inputs:
%   tank       - Name of the tank (dataset) to retrieve data from, specified as a string (default: "Frank_2024_03_06").
%   action     - Action to perform, specified as a string. Must be one of:
%                  - "download_sweep" - Downloads a specific sweep.
%                  - "download_block" - Downloads a specified block.
%                  - "get_parameters" - Request struct containing current file-server parameter values.
%                  - "update_parameter" - Sets a specific parameter on file-server.
%                (default: "download_sweep").
%   parameters - Structure containing additional parameters required for the action (default: struct('sweep', 0)).
%                The fields of `parameters` vary depending on the `action`:
%                - For "download_sweep":
%                    - `sweep`   - Index of the sweep to download (default: 0).
%                - For "download_block":
%                    - `block`   - Index of the block to download.
%                    - `channels` - Array of channel indices to include in the download.
%                - For "get_parameters":
%                   No struct fields are currently used.
%                - For "update_parameter":
%                    - "parameter" - Can be: 
%                       - "local_share" : Local fileshare location to save
%                         "remote_share": Remote fileshare location to save
%
% Outputs:
%   data       - The downloaded data, returned as a structure or array, depending on the server response.
%
% Examples:
%   % Example for downloading a specific sweep from the tank
%   tank = "Frank_2024_03_06";
%   action = "download_sweep";
%   parameters = struct('sweep', 3); % Specify sweep index 3
%   data = msg.json_file_server_request(tank, action, parameters);
%
%   % Example for downloading a block with specific channels
%   tank = "Frank_2024_03_06";
%   action = "download_block";
%   parameters = struct('block', 5, 'channels', [1, 2, 5, 8]); % Block 5, Channels 1, 2, 5, and 8
%   data = msg.json_file_server_request(tank, action, parameters);
%
%   % Example for updating the local save location of the file-server
%   tank = "Frank_2024_03_06";
%   action = "update_parameter";
%   parameters = struct('parameter', 'local_share', 'value', "C:/Temp");
%   data = msg.json_file_server_request(tank, action, parameters);
%
% See also: struct, mustBeMember, tcpServer, tcpClient

arguments
    tank (1,1) string = "Frank_2024_03_06";
    action string {mustBeMember(action, ["download_sweep", "download_block", "get_parameters", "update_parameter"])} = "download_sweep";
    parameters (1,1) struct = struct('sweep', 0);
end

data = struct('tank', tank, 'action', action, 'parameters', parameters);

end