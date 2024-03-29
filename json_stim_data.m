function data = json_stim_data(tag, n, channel, data)
%JSON_STIM_DATA  Generate stimulus-response data
%
% Syntax:
%   data = msg.json_stim_data(tag, n, channel, data);
%
% Inputs:
%   tag - Identifier for message-source (e.g. "A" for SAGA-A)
%   n   - Number of response events associated with this message
%   channel - Vector of k channels. Should contain only unique channel
%             indices (does not repeat for each response, although the
%             ordering of elements in response is expected to stay the
%             same).
%   response - [k x n] array of response data (double).
%   
% Output:
%   data - Struct meant to be used with `jsonencode` to produce a
%           serialized message for tcp/ip or udp.
%           (Fields):
%           + 'tag' (same as input)
%           + 'n' (same as input)
%           + 'channel' (1 x k, regardless of input format)
%           + 'data' (1 x [k*n], regardless of input format)
%   
% See also: Contents
if nargin < 1
    data = struct(...
        'type', 'stim.data', ...
        'tag', "A", ...
        'n', 3, ...
        'channel', 1:64, ...
        'response', rand(1,192).*10);
else
    data = struct(...
        'type', 'stim.data', ...
        'tag', tag, ...
        'n', n, ...
        'channel', channel(:)', ...
        'response', data(:)');
end
end