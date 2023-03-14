function data = json_tmsi_udp_name_message(SUBJ, YYYY, MM, DD, ARRAY, BLOCK)
%JSON_TMSI_UDP_NAME_MESSAGE  Generate TMSi-filename data for UDP/JSON message.
%
% Syntax:
%   data = msg.json_tmsi_udp_name_message(SUBJ, YYYY, MM, DD, ARRAY, BLOCK);
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
%           + 'subject'
%           + 'year'
%           + 'month'
%           + 'day'
%           + 'array'
%           + 'block'
%   
% See also: Contents
if nargin < 1
    data = struct('type', 'name.tmsi', 'subject', "Forrest", 'year', 2023, 'month', 3, 'day', 12, 'array', "A", 'block', 0);
else
    data = struct('type', 'name.tmsi', 'subject', SUBJ, 'year', YYYY, 'month', MM, 'day', DD, 'array', ARRAY, 'block', BLOCK);
end
end