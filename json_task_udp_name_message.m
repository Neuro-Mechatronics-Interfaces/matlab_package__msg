function data = json_task_udp_name_message(tank, block)
%JSON_TASK_UDP_NAME_MESSAGE  Generate behavioral-task name-related data for UDP/JSON message.
%
% Syntax:
%   data = msg.json_task_udp_name_message(tank, block);
%
% Inputs:
%   tank - The folder into which the block files go (e.g.
%               'Forrest_2023_03_06')
%   block - The numeric indexing/key scalar used for individual files
%               (usually related to behavioral trials, in this context).
%   
% Output:
%   data - Struct meant to be used with `jsonencode` to produce a
%           serialized message for tcp/ip or udp.
%           (Fields):
%           + 'tank'
%           + 'block'
%   
% See also: Contents
if nargin < 1
    data = struct('type', 'name.task', 'parameter', 'tank', 'tank', "Forrest_2023_03_06", 'block', 0);
else
    data = struct('type', 'name.task', 'parameter', 'tank', 'tank', tank, 'block', block);
end
end