function data = json_tmsi_state_message(state, block)
%JSON_TMSI_STATE_MESSAGE  Generate TMSi-controller state/block message.
%
% Syntax:
%   data = msg.json_tmsi_state_message(state, block);
%
% Inputs:
%   state - State of the recording. Can be "idle", "run", "rec", "imp", or
%                                       "quit".
%   block - Block index
%   
% Output:
%   data - Struct meant to be used with `jsonencode` to produce a
%           serialized message for tcp/ip or udp.
%           (Fields):
%           + 'state'
%           + 'block'
%   
% See also: Contents
if nargin < 1
    data = struct('type', 'state.tmsi', 'state', "idle", 'block', 0);
else
    data = struct('type', 'state.tmsi', 'state', string(state), 'block', block);
end
end