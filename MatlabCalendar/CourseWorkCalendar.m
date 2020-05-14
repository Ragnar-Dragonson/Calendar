g=zeros(720, 480);
g=im2uint8(g);              %creates black template 720x480
figure, imshow(g);
g(:,:,1) = 0;
g(:,:,2) = g(:,:,1);
g(:,:,3) = g(:,:,1);

% sun=imread('F:\Uni Work\MATLAB\Corfile\Pic/sunday.bmp');
% sat=imread('F:\Uni Work\MATLAB\Corfile\Pic/saturday.bmp');
% fri=imread('F:\Uni Work\MATLAB\Corfile\Pic/friday.bmp');
% thur=imread('F:\Uni Work\MATLAB\Corfile\Pic/thursday.bmp');
% wed=imread('F:\Uni Work\MATLAB\Corfile\Pic/wednesday.bmp');
% tue=imread('F:\Uni Work\MATLAB\Corfile\Pic/tuesday.bmp');
% mon=imread('F:\Uni Work\MATLAB\Corfile\Pic/monday.bmp');
% 
% one=imread('F:\Uni Work\MATLAB\Corfile\Pic/1.bmp');
% two=imread('F:\Uni Work\MATLAB\Corfile\Pic/2.bmp');
% three=imread('F:\Uni Work\MATLAB\Corfile\Pic/3.bmp');
% four=imread('F:\Uni Work\MATLAB\Corfile\Pic/4.bmp');
% five=imread('F:\Uni Work\MATLAB\Corfile\Pic/5.bmp');
% six=imread('F:\Uni Work\MATLAB\Corfile\Pic/6.bmp');
% seven=imread('F:\Uni Work\MATLAB\Corfile\Pic/7.bmp');
% eight=imread('F:\Uni Work\MATLAB\Corfile\Pic/8.bmp');
% nine=imread('F:\Uni Work\MATLAB\Corfile\Pic/9.bmp');
% zero=imread('F:\Uni Work\MATLAB\Corfile\Pic/0.bmp');
% 
% cell1=imread('F:\Uni Work\MATLAB\Corfile\Pic/parrots.bmp');
% may=imread('F:\Uni Work\MATLAB\Corfile\Pic/may2016.bmp');
% crop1 =imread('F:\Uni Work\MATLAB\Corfile\Pic/lighthouse.bmp');
sun=imread('E:\Uni Work\MATLAB\Corfile\Pic/sunday.bmp');
sat=imread('E:\Uni Work\MATLAB\Corfile\Pic/saturday.bmp');
fri=imread('E:\Uni Work\MATLAB\Corfile\Pic/friday.bmp');
thur=imread('E:\Uni Work\MATLAB\Corfile\Pic/thursday.bmp');
wed=imread('E:\Uni Work\MATLAB\Corfile\Pic/wednesday.bmp');
tue=imread('E:\Uni Work\MATLAB\Corfile\Pic/tuesday.bmp');
mon=imread('E:\Uni Work\MATLAB\Corfile\Pic/monday.bmp');

one=imread('E:\Uni Work\MATLAB\Corfile\Pic/1.bmp');
two=imread('E:\Uni Work\MATLAB\Corfile\Pic/2.bmp');
three=imread('E:\Uni Work\MATLAB\Corfile\Pic/3.bmp');
four=imread('E:\Uni Work\MATLAB\Corfile\Pic/4.bmp');
five=imread('E:\Uni Work\MATLAB\Corfile\Pic/5.bmp');
six=imread('E:\Uni Work\MATLAB\Corfile\Pic/6.bmp');
seven=imread('E:\Uni Work\MATLAB\Corfile\Pic/7.bmp');
eight=imread('E:\Uni Work\MATLAB\Corfile\Pic/8.bmp');
nine=imread('E:\Uni Work\MATLAB\Corfile\Pic/9.bmp');
zero=imread('E:\Uni Work\MATLAB\Corfile\Pic/0.bmp');

cell1=imread('E:\Uni Work\MATLAB\Corfile\Pic/parrots.bmp');
may=imread('E:\Uni Work\MATLAB\Corfile\Pic/may2016.bmp');
crop1 =imread('E:\Uni Work\MATLAB\Corfile\Pic/lighthouse.bmp');
crop2 =imread('E:\Uni Work\MATLAB\Corfile\Pic/lighthouse_bw.bmp');

g(341:350,1:480)=255;   %Cuts template in 2 and creates week days
g(371:380,1:480)=255;

g(341:720,61:70)=255;
g(341:720,131:140)=255;
g(341:720,201:210)=255;
g(341:720,271:280)=255;     %Creates 7 columns across the calendar
g(341:720,341:350)=255;
g(341:720,411:420)=255;

g(441:450,1:480)=255;
g(511:520,1:480)=255;       %Cuts the columns to make 35 tiles
g(581:590,1:480)=255;
g(651:660,1:480)=255;

g(351:370,1:60)= sun(1:20,1:60,:);
g(351:370,71:130)= mon(1:20,1:60,:);
g(351:370,141:200)= tue(1:20,1:60,:);     %imports week day pictures
g(351:370,211:270)= wed(1:20,1:60,:);
g(351:370,281:340)= thur(1:20,1:60,:);
g(351:370,351:410)= fri(1:20,1:60,:);
g(351:370,421:480)= sat(1:20,1:60,:);

g(381:420,1:20)= one(1:40,1:20,:);
g(381:420,71:90)= two(1:40,1:20,:);     %imports first week numbers
g(381:420,141:160)= three(1:40,1:20,:);
g(381:420,211:230)= four(1:40,1:20,:);
g(381:420,281:300)= five(1:40,1:20,:);
g(381:420,351:370)= six(1:40,1:20,:);
g(381:420,421:440)= seven(1:40,1:20,:);

g(451:490,1:20)= eight(1:40,1:20,:);
g(451:490,71:90)= nine(1:40,1:20,:);     %imports second week numbers
g(451:490,141:160)= one(1:40,1:20,:); %goes into tens
g(451:490,161:180)= zero(1:40,1:20,:);
g(451:490,211:230)= one(1:40,1:20,:);
g(451:490,231:250)= one(1:40,1:20,:);
g(451:490,281:300)= one(1:40,1:20,:);
g(451:490,301:320)= two(1:40,1:20,:);
g(451:490,351:370)= one(1:40,1:20,:);
g(451:490,371:390)= three(1:40,1:20,:);
g(451:490,421:440)= one(1:40,1:20,:);
g(451:490,441:460)= four(1:40,1:20,:);

g(521:560,1:20)= one(1:40,1:20,:);
g(521:560,21:40)= five(1:40,1:20,:);
g(521:560,71:90)= one(1:40,1:20,:);%imports third week numbers
g(521:560,91:110)= six(1:40,1:20,:);
g(521:560,141:160)= one(1:40,1:20,:); 
g(521:560,161:180)= seven(1:40,1:20,:);
g(521:560,211:230)= one(1:40,1:20,:);
g(521:560,231:250)= eight(1:40,1:20,:);
g(521:560,281:300)= one(1:40,1:20,:);
g(521:560,301:320)= nine(1:40,1:20,:);
g(521:560,351:370)= two(1:40,1:20,:); %goes into twenties
g(521:560,371:390)= zero(1:40,1:20,:);
g(521:560,421:440)= two(1:40,1:20,:);
g(521:560,441:460)= one(1:40,1:20,:);

g(591:630,1:20)= two(1:40,1:20,:);
g(591:630,21:40)= two(1:40,1:20,:);
g(591:630,71:90)= two(1:40,1:20,:);   %imports fourth week numbers
g(591:630,91:110)= three(1:40,1:20,:);
g(591:630,141:160)= two(1:40,1:20,:); 
g(591:630,161:180)= four(1:40,1:20,:);
g(591:630,211:230)= two(1:40,1:20,:);
g(591:630,231:250)= five(1:40,1:20,:);
g(591:630,281:300)= two(1:40,1:20,:);
g(591:630,301:320)= six(1:40,1:20,:);
g(591:630,351:370)= two(1:40,1:20,:);     %goes into twenties
g(591:630,371:390)= seven(1:40,1:20,:);
g(591:630,421:440)= two(1:40,1:20,:);
g(591:630,441:460)= eight(1:40,1:20,:);

g(661:700,1:20)= two(1:40,1:20,:);
g(661:700,21:40)= nine(1:40,1:20,:);
g(661:700,71:90)= three(1:40,1:20,:);   %imports last week numbers
g(661:700,91:110)= zero(1:40,1:20,:);     %goes into thirties
g(661:700,141:160)= three(1:40,1:20,:); 
g(661:700,161:180)= one(1:40,1:20,:);


for r=21:320
    for c=21:460                         %crops cell 1 image
        g(r, c,:) = cell1(r+69, c+79,:);
    end
end

g(21:70,21:170,1)= 255;           %imports may 2016
g(21:70,21:170,2)= 162; 
g(21:70,21:170,3)= may(1:50,1:150,3);

g(1:20,1:480)=0;
g(1:340,1:20)=0;
g(321:340,1:480)=0;
g(1:340,461:480)=0;     %creates 20 pixel border around cell 1


for r=241:320
    for c=21:100                         %crops cell 1 image
        g(r, c,:) = crop1(r-170, c+289,:);
    end
end

for r=1:512
    for c=1:768                         %make crop1 whiter
       if crop2(r,c) >= 112;
           crop2(r,c) = 255;
       end
    end
end

for r=241:320
    for c=101:180                         %crops cell 1 image 
        g(r, c,:) = crop2(r-170, c+209,:);
    end
end


% figure, imshow(crop1);
 imshow(g);

