function data = json_snippets_udp_config_message(enable, rms_range, trigger_bit)
%JSON_SNIPPETS_UDP_CONFIG_MESSAGE  Generate UDP/JSON message for snippet visualizer configuration.
%
% Syntax:
%   data = msg.json_snippets_udp_config_message();
%       -> This returns the default message structure.
%   data = msg.json_snippets_udp_config_message(enable, rms_range, trigger_bit);
%
% Inputs:
%   enable    - 1x64 logical vector, with 1:1 mapping for UNI channels to
%               be shown or not.
%   rms_range - 2-element vector setting the lower and upper limit for
%               setting limits on scaling to color each snippet by its RMS.
%   trigger_bit - The trigger bit for handling artifact blanking on visualizer basically.   
%
% Output:
%   data - Struct meant to be used with `jsonencode` to produce a
%           serialized message for tcp/ip or udp.
%           (Fields):
%           + 'enable'
%           + 'rms_range'
%   
% See also: Contents
if nargin < 1
    data = struct('type', 'snippets.config', 'enable', true(1,64), 'rms_range', [0 20], 'trigger_bit', 9);
else
    if ~islogical(enable)
        if ~isnumeric(enable)
            tmp = cellstr(strsplit(enable, ','));
            enable = cellfun(@(C)str2double(C), tmp, 'UniformOutput', true);         
        end
        data = struct('type', 'snippets.config', 'enable', ismember(1:64, enable), 'rms_range', rms_range, 'trigger_bit', trigger_bit);
    else
        data = struct('type', 'snippets.config', 'enable', enable, 'rms_range', rms_range, 'trigger_bit', trigger_bit);
    end
end
end