function data = json_stim_pattern(pattern_name, pattern_amplitude)
%JSON_STIM_PATTERN  Generate stimulus-pattern data for JSON message.
%
% Syntax:
%   data = msg.json_stim_pattern(pattern_name, pattern_amplitude);
%
% Inputs:
%   pattern_name - Name of the pattern file 
%                   (e.g. 'Jsafety_25_x0um_y0um.txt')
%   pattern_amplitude - Amplitude of the stimulation intensity, as a scalar
%                       double, with values ranging from 0 to 100 (%).
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
    data = struct('pattern', "Jsafety_25_x0um_y0um.txt", 'amplitude', 42.1);
else
    data = struct('pattern', pattern_name, 'amplitude', pattern_amplitude);
end
end