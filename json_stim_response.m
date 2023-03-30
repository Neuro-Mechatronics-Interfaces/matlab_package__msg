function data = json_stim_response(n, state)
%JSON_STIM_RESPONSE  Generate stimulus-response data
%
% Syntax:
%   data = msg.json_stim_response(n, state);
%
% Inputs:
%   n   - Number of response events associated with this message
%   state - State of the recording. Can be "idle", "run", "rec", "imp", or
%                                       "quit".
%   
% Output:
%   data - Struct meant to be used with `jsonencode` to produce a
%           serialized message for tcp/ip or udp.
%           (Fields):
%           + 'n' (same as input)
%           + 'state' (string, can be "
%   
% See also: Contents
if nargin < 1
    data = struct(...
        'type', 'stim.response', ...
        'n', 3, ...
        'state', "idle");
else
    data = struct(...
        'type', 'stim.response', ...
        'n', n, ...
        'state', string(state));
end
end