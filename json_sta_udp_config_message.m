function data = json_sta_udp_config_message(reset, n_max, n_pre, n_post, channel, trigger_bit)
%JSON_STA_UDP_CONFIG_MESSAGE  Generate UDP/JSON message for STA configuration.
%
% Syntax:
%   data = msg.json_sta_udp_config_message();
%       -> This returns the default message structure.
%   data = msg.json_sta_udp_config_message(n_max, n_pre, n_post, channel);
%
% Inputs:
%   reset - Logical flag indicating whether to reset counter or not.
%   n_max - Max # of waveforms to retain
%   n_pre - Number of samples prior to trigger to retain
%   n_post - Number of samples after the trigger to retain
%   channel - The channel to save. For bipolar, 1-4 are mapped as 65-68
%   trigger_bit - Zero-indexed bit (0-15) to use from TRIGGERS port.
%   
% Output:
%   data - Struct meant to be used with `jsonencode` to produce a
%           serialized message for tcp/ip or udp.
%           (Fields):
%           + 'reset'
%           + 'n_max'
%           + 'n_pre'
%           + 'n_post'
%           + 'channel'
%           + 'trigger_bit'
%   
% See also: Contents
if nargin < 1
    data = struct('type', 'sta.config', 'reset', false, 'n_max', 30, 'n_pre', 40, 'n_post', 120, 'channel', 1, 'trigger_bit', 9);
else
    data = struct('type', 'sta.config', 'reset', reset, 'n_max', n_max, 'n_pre', n_pre, 'n_post', n_post, 'channel', channel, 'trigger_bit', trigger_bit);
end
end