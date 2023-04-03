function data = json_data_server_request(tag, channel, focusing, amplitude)
%JSON_DATA_SERVER_REQUEST  Generate request for data from stim response server
%
% Syntax:
%   data = msg.json_data_server_request(tag, channel, focusing, amplitude);
%
% Inputs:
%   tag - Identifier for message-source (e.g. "A" for SAGA-A)
%   channel - Vector of k channels. Should contain only unique channel
%             indices (does not repeat for each response, although the
%             ordering of elements in response is expected to stay the
%             same).
%   focusing - The "focusing level" (numeric scalar value e.g. 25 for J25)
%                   to use for filtering subset
%   amplitude - The "sweep amplitude" (numeric scalar) to use for filtering
%                   subset
%   
% Output:
%   data - Struct meant to be used with `jsonencode` to produce a
%           serialized message for tcp/ip or udp.
%           (Fields):
%           + 'tag' (same as input)
%           + 'channel' (number from 1 thru 68; same as input)
%           + 'focusing' (same as input)
%           + 'amplitude' (same as input)
%   
% See also: Contents
if nargin < 1
    data = struct(...
        'type', 'mep.request', ...
        'tag', "A", ...
        'channel', 13, ...
        'focusing', 25, ...
        'amplitude', 0);
else
    data = struct(...
        'type', 'mep.request', ...
        'tag', tag, ...
        'channel', channel, ...
        'focusing', focusing, ...
        'amplitude', amplitude);
end
end