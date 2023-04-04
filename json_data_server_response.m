function data = json_data_server_response(tag, channel, focusing, amplitude, t, data, x, y)
%JSON_DATA_SERVER_RESPONSE  Generate request for data from stim response server
%
% Syntax:
%   data = msg.json_data_server_response(tag, channel, focusing, amplitude, t, data, x, y);
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
%   t - The times of each response sample
%   data - The data for selected channel/focusing/amplitude conditions.
%   x    - The x-data for each response
%   y    - The y-data for each response
%   
% Output:
%   data - Struct meant to be used with `jsonencode` to produce a
%           serialized message for tcp/ip or udp.
%           (Fields):
%           + 'tag' (same as input)
%           + 'channel' (number from 1 thru 68; same as input)
%           + 'focusing' (same as input)
%           + 'amplitude' (same as input)
%           + 't' (1 x nSamples vector)
%           + 'data' (1 x [nSamples * nResponses] vector)
%           + 'x' (1 x nResponses vector)
%           + 'y' (1 x nResponses vector)
%   
% See also: Contents
if nargin < 1
    data = struct(...
        'type', 'mep.response', ...
        'tag', "A", ...
        'channel', 13, ...
        'focusing', 25, ...
        'amplitude', 0, ...
        't', -15:0.25:35, ...
        'data', randn(1, 2010), ...
        'x', 1:10, ...
        'y', zeros(1,10));
else
    data = struct(...
        'type', 'mep.response', ...
        'tag', tag, ...
        'channel', channel, ...
        'focusing', focusing, ...
        'amplitude', amplitude, ...
        't', t, ...
        'data', data(:)', ...
        'x', x, ...
        'y', y);
end
end