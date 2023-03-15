function data = json_tmsi_tcp_stream_message(parameter, value, tag)
%JSON_TMSI_TCP_STREAM_MESSAGE  Generate TMSi-stream data for TCP/JSON message.
%
% Syntax:
%   data = msg.json_tmsi_tcp_stream_message(channels, data, tag);
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
%           + 'channels'
%           + 'data'
%           + 'tag'
%   
% See also: Contents
if nargin < 1
    data = struct('type', 'stream.tmsi', 'channels', [uint8([1:68, 100])], 'data', [randn(1,68), 0], 'tag', "A");
else
    data = struct('type', 'stream.tmsi', 'channels', channels, 'data', data, 'tag', tag);
end
end