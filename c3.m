filename = 'melody.wav';
audiowrite(filename,final,fs),
N =length(final); %number of FFT point
transform = fft(g,N)/N;
magTransform = abs(transform);
faxis = linspace(-N/2,N/2,N);

figure(1);
plot(faxis,fftshift(magTransform));
title('The Spectrum');
xlabel('Frequency (Hz)')
figure(2);

win = 128; % window length in samples
% number of samples between overlapping windows:
hop = win/2;          

nfft = win; % width of each frequency bin 
spectrogram(final,win,hop,nfft,fs,'yaxis')

% change the tick labels of the graph from scientific notation to floating point: 
yt = get(gca,'YTick');  
set(gca,'YTickLabel', sprintf('%.0f|',yt))
title('Spectrogram');