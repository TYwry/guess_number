r(1) = randi ([1,9],1,1);
r(2) = randi ([0,9],1,1); %隨機產生二個矩陣
R = r(1)*10 + r(2);

k = 0;
k1 = 0;
k2 = 0;

while(k<10) %控制猜數次數在10次以內

w = '猜一個二位數數字: ';
N = input (w);%請使用者輸入數字

n(1) = fix(N / 10);
n(2) = fix(N - (n(1)*10));%取出十位數與二位數

k1=0; k2=0;

for i=1:2
    for j=1:2
       if r(i)==n(j)
         if r(i)==n(j) && (i==j)
             k1=k1+1; %猜對的數字個數
          else
          k2=k2+1; %猜錯的數字個數
          end
       end
    end
end
if(k1==2) %表示2個數位都猜對
break;
end
fprintf('%iA%iB\n',k1,k2);
disp('別氣餒，再試一次！ ');
k=k+1;
end
fprintf('這個數是%i！\n',R);  