function data = json_stim_response(n, state, block)
%JSON_STIM_RESPONSE  Generate stimulus-response data
%
% Syntax:
%   data = msg.json_stim_response(n, state, block);
%
% Inputs:
%   n   - Number of response events associated with this message
%   state - State of the recording. Can be "idle", "run", "rec", "imp", or
%                                       "quit".
%   block - The indexing number into which recording it is within-session.
%   
% Output:
%   data - Struct meant to be used with `jsonencode` to produce a
%           serialized message for tcp/ip or udp.
%           (Fields):
%           + 'n' (same as input)
%           + 'state' (string, can be "idle", "run", "rec" etc)
%           + 'block' (same as input)
%   
% See also: Contents
if nargin < 1
    data = struct(...
        'type', 'stim.response', ...
        'n', 3, ...
        'block', 0, ...
        'state', "idle");
else
    data = struct(...
        'type', 'stim.response', ...
        'n', n, ...
        'block', block, ...
        'state', string(state));
end
end