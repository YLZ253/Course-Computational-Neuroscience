function [ sta ] = compute_sta( stim, rho, num_timesteps )

    sta = zeros(num_timesteps, 1);

    spike_times = find(rho(num_timesteps+1:end)) + num_timesteps;% return the position of spikes
    
    [num_spikes,~]=size(spike_times); % number of spikes
    
    for n=1:num_spikes
    window(n,:)=stim(spike_times(n)-149:spike_times(n));
    end
    
    sta=mean(window);
end
