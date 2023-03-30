function data = json_tmsi_request_message(parameter)
%JSON_TMSI_REQUEST_MESSAGE  Generate TMSi-controller parameter-request.
%
% Syntax:
%   data = msg.json_tmsi_request_message(parameter);
%
% Inputs:
%   parameter - Parameter to request.
%   
% Output:
%   data - Struct meant to be used with `jsonencode` to produce a
%           serialized message for tcp/ip or udp.
%           (Fields):
%           + 'parameter' - (e.g. 'state', or 'block')
%   
% See also: Contents
if nargin < 1
    data = struct('type', 'request.tmsi', 'parameter', 'state');
else
    data = struct('type', 'request.tmsi', 'parameter', parameter);
end
end