function data = json_stim_response(n, state, block, x, y, focus)
%JSON_STIM_RESPONSE  Generate stimulus-response data
%
% Syntax:
%   data = msg.json_stim_response(n, state, block, x, y, focus);
%
% Inputs:
%   n   - Number of response events associated with this message
%   state - State of the recording. Can be "idle", "run", "rec", "imp", or
%                                       "quit".
%   block - The indexing number into which recording it is within-session.
%   x     - Parsed x-coordinate (mm)
%   y     - Parsed y-coordinate (mm)
%   focus - Parsed focusing-level (a.u.)
%   
% Output:
%   data - Struct meant to be used with `jsonencode` to produce a
%           serialized message for tcp/ip or udp.
%           (Fields):
%           + 'n' (same as input)
%           + 'state' (string, can be "idle", "run", "rec" etc)
%           + 'block' (same as input)
%           + 'x' (same as input)
%           + 'y' (same as input)
%           + 'focus' (same as input)
%   
% See also: Contents
if nargin < 1
    data = struct(...
        'type', 'stim.response', ...
        'n', 3, ...
        'block', 0, ...
        'state', "idle", ...
        'x', 0, ...
        'y', 0, ...
        'focus', 25);
else
    data = struct(...
        'type', 'stim.response', ...
        'n', n, ...
        'block', block, ...
        'state', string(state), ...
        'x', x, ...
        'y', y, ...
        'focus', focus);
end
end