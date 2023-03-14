function data = json_tmsi_udp_controller_message(parameter, value)
%JSON_TMSI_UDP_CONTROLLER_MESSAGE  Generate TMSi-controller data for UDP/JSON message.
%
% Syntax:
%   data = msg.json_tmsi_udp_controller_message(parameter, value);
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
%           + 'parameter'
%           + 'value'
%   
% See also: Contents
if nargin < 1
    data = struct('type', 'par.base', 'parameter', "block", 'value', 0);
else
    data = struct('type', 'par.base', 'parameter', parameter, 'value', value);
end
end