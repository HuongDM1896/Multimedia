fs = 44100; % sampling frequency (Hz)
t = 0 : 1/fs : 0.7; % time axis (seconds)
f = 440;
tone = {};
song=[];
j =1;
for i=1:12
   tone{i}=0.3*sin(2*pi*f*((2^(i-1)).^(1/12))*t);
end
do = tone{1};
%d0        re  mi       pha      son la       Do
%'A' 'A#' 'B' 'C' 'C#' 'D' 'D#' 'E' 'F' 'F#' 'G' 'G#'
A = tone{1}; A1=tone{2}; B = tone{3};C=tone{4};C1=tone{5}; D=tone{6};D1=tone{7};E=tone{8};F=tone{9};F1=tone{10};G=tone{11};G1=tone{12};
song = [A A E E F1 F1 E E D D C1 C1 B B A A];
[g,Fs] = audioread('orig_input.wav');
final =g + (song(1:length(g)))'; %tron tin hieu voice va melody
soundsc(final,44100);
