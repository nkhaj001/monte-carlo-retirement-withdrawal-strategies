%% S&P 500, NASDAQ, DOW JONES
mFile={'S&P 500.xlsx','NASDAQ.xlsx','Dow Jones.xlsx'};Nmkt=length(mFile);
infl=table2array(readtable('Inflation.xlsx', 'Range', 'B1:B112'));
inflmean=mean(infl)/100; inflstd=std(infl)/100;
Nyrs=36;tYrs=1:Nyrs;% want to simulate for 36 yrs
Ns=1000; % Number of simulations
withdrawRate = 0.04:0.01:0.08;Nw=length(withdrawRate);% percent to be withdrawn each year 
portlio = zeros(Nmkt,Nw,Ns,Nyrs);rng(1);
for mktN=1:Nmkt
    T=readtable(mFile{mktN});colN=7;
    mp=table2array(T(2:end,colN));mPmean=mean(mP); mPstd=std(mP);
    for sN=1:Ns
        mPr = mPmean + mPstd * randn(1,Nyrs);
        inflr = inflmean + inflstd * randn(1,Nyrs);
        for wN=1:Nw
            % initial balance
            balance = zeros(1,Nyrs);balance(1)=1;
            for i=2:Nyrs
                if balance(i-1) > 0
                    withdrawnAmo=min([(1+inflr(i-1))*withdrawRate(wN) balance(i-1)]);
                    balance(i) = balance(i-1) + mPr(i)*balance(i-1) - withdrawnAmo;
                end
            end
            portlio(mktN,wN,sN,:)=balance;
        end
    end
end

% plotting the graph

figure(9);clf;m=0;
for mktN=1:Nmkt
    for wN=1:Nw;m=m+1;subplot(Nmkt,Nw,m);
        plot(tYrs,squeeze(portlio(mktN,wN,:,:)),'m^-','MarkerSize', 3);grid on;box on;
        title([strrep(char(mFile{mktN}),'.xlsx','') ': w=' num2str(withdrawRate(wN)) ]);
        xlim([0 36]);%ylim([0 200]);
        xlabel('YEARS'); ylabel('BALANCE');
        legend('Amount Remaining','Location','northwest');
    end
end
print -dpng Portfolio

% strrep to remove (xlsx) in the title 
% add in xlabel legend etc.
% strrep(char(mFile{mktN}),'.xlsx','')

figure(10);clf;m=0;
for mktN=1:Nmkt
    for wN=1:Nw;m=m+1;subplot(Nmkt,Nw,m);te=squeeze(portlio(mktN,wN,:,:));
        ta=mean(te>=1,1);tb=mean(te==0,1);
        plot(tYrs,ta,'m^-','MarkerSize', 3);hold on;plot(tYrs,tb,'co-','MarkerSize', 3);
        grid on;box on;
        title([strrep(char(mFile{mktN}),'.xlsx','') ': w=' num2str(withdrawRate(wN)) ]);
        xlim([0 36]);ylim([0 1]);xlabel('YEARS'); ylabel('PROBABILITY');
        legend('Success','Failure','Location','north');
    end
end
print -dpng Results


