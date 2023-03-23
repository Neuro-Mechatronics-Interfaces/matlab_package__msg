function data = json_sta_udp_data_message(vec, data)
%JSON_STA_UDP_DATA_MESSAGE  Generate UDP/JSON message for STA data.
%
% Syntax:
%   data = msg.json_sta_udp_config_message();
%       -> This returns the default message structure.
%   data = msg.json_sta_udp_config_message(vec, data);
%
% Inputs:
%   vec - Sample index vector. For example, if n_pre (see
%           msg.json_sta_udp_config_message re: configuration parameters)
%           is 40 and n_post is 120, then vec for a full sample data
%           snippet would be 1:161.
%   data - The data snippet to be included with averages. SHOULD HAVE SAME
%           NUMBER OF ELEMENTS AS `vec`!
%   
% Output:
%   data - Struct meant to be used with `jsonencode` to produce a
%           serialized message for tcp/ip or udp.
%           (Fields):
%           + 'vec'
%           + 'data'
%   
% See also: Contents
if nargin < 1
    data = struct('type', 'sta.data', 'vec', 1:161, 'data', zeros(1,161));
else
    data = struct('type', 'sta.data', 'vec', vec, 'data', data);
end
end