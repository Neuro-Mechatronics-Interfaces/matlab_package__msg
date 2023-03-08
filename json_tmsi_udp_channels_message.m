function data = json_tmsi_udp_channels_message(parameter, value, tag)
%JSON_TMSI_UDP_CHANNELS_MESSAGE  Generate TMSi-channels data for UDP/JSON message.
%
% Syntax:
%   data = msg.json_tmsi_udp_channels_message(parameter, value, tag);
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
%           + 'tag'
%   
% See also: Contents
if nargin < 1
    data = struct('parameter', "block", 'value', 0, 'tag', "A");
else
    data = struct('parameter', parameter, 'value', value, 'tag', tag);
end
end