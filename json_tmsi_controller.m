function data = json_tmsi_controller(parameter, value)
%JSON_TMSI_CONTROLLER  Generate TMSi-controller data for JSON message.
%
% Syntax:
%   data = msg.json_tmsi_controller(parameter, value);
%
% Inputs:
%   parameter - Name of the parameter to control 
%                   (e.g. 'block')
%   value - Value associated with the named parameter, to update.
%   
% Output:
%   data - Struct meant to be used with `jsonencode` to produce a
%           serialized message for tcp/ip or udp.
%           (Fields):
%           + 'pattern'
%           + 'amplitude'
%   
% See also: Contents
if nargin < 1
    data = struct('parameter', "block", 'value', 0);
else
    data = struct('parameter', parameter, 'value', value);
end
end