function z=functionTest(x,y,sw) %ò��ֻ�ܴ����֣����ܴ���ĸ���ַ�

%===================sound=====
%���ӣ�https://www.zhihu.com/question/27780598/answer/666803900������https://www.zhihu.com/question/27780598
%clc
%clear
fs=44100;
t=0:1/fs:0.5;
e3_2=key(52, 2, fs); %��ʾ2��������e3
a3_2=key(57, 2, fs);c4_2=key(60, 2, fs);e4_2=key(52, 2, fs);g3_2=key(55, 2, fs);d4_2=key(62, 2, fs);e4_2=key(64, 2, fs);g4_2=key(67, 2, fs);e4_4=key(52, 4, fs);g3_4=key(55, 4, fs);a3_4=key(57, 4, fs);b3_4=key(59, 4, fs);c4_4=key(60, 4, fs);d4_4=key(62, 4, fs);e4_4=key(64, 4, fs);f4_4=key(65, 4, fs);g4_4=key(67, 4, fs);a4_4=key(69, 4, fs);e3_8=key(52, 8, fs);g3_8=key(55, 8, fs);a3_8=key(57, 8, fs);b3_8=key(59, 8, fs);c4_8=key(60, 8, fs);d4_8=key(62, 8, fs);e4_8=key(64, 8, fs);f4_8=key(65, 8, fs);g4_8=key(67, 8, fs);a4_8=key(69, 8, fs);b4_8=key(71, 8, fs);part1=[c4_8 c4_8 c4_4 e4_4 d4_4 d4_8 d4_4 c4_4 c4_8];part2=[d4_4 d4_4 c4_8 a3_8 a3_2];part3=[b3_8 b3_8 b3_4 c4_8 d4_8 d4_4];part4=[b3_4 a3_8 g3_4 e3_8 e3_2 e3_2];part5=[e4_8 d4_8 e4_4 d4_8 d4_8 d4_4 d4_8 c4_8 c4_2 d4_4 a3_4 a3_8 a3_8 d4_8 c4_8 c4_2];part6=[d4_4 a3_8 g3_4 g3_8 e3_2 e3_2];part7=[g4_4 g4_8 d4_8 d4_4 e4_4 g4_4 g4_8 d4_8 d4_4 c4_4 a3_2 a3_2]; part8=[d4_4 d4_8 a3_8 a3_4 e4_4 d4_4 d4_8 c4_8 c4_4];part9=[c4_8 c4_8 c4_4 g3_8 c4_8 c4_4 g4_4 f4_4 e4_4 d4_4 d4_8 c4_8 c4_2 c4_4];part10=[c4_8 e4_8 g4_8 a4_4 g4_8 a4_4 g4_4 g4_8 a4_4];para1=[part1 part2 part3 part4];para2=[part5 part3 part6];para3=[part7 part8 c4_4 g3_2 g3_2];para4=[part7 part8 c4_8 d4_8 d4_2 d4_2];para5=[part9 part10 g4_8 e4_8 e4_8 d4_4 e4_8 e4_2];para6=[part9 part10 g4_4 e4_8 g4_4 g4_8 g4_2];legend=[para1 para2 para3 para4 para5 para6];
%sound(legend,fs)
%===================��Ҫ����===============
[X, Y] = meshgrid(0.01:0.01:1, 0.01:0.01:1); Zfun =@(x,y)12.5*x.*log10(x).*y.*(y-1)+exp(-((25 ... 
*x - 25/exp(1)).^2+(25*y-25/2).^2).^3)./25; Z = Zfun(X,Y); 
figure; 
%surf(Y,Z,X,'FaceColor',[1 0.75 0.65],'linestyle','none'); 
hold on 
%surf(Y+0.98,Z,X,'FaceColor',[1 0.75 0.65],'linestyle','none'); axis equal; view([116 30]); 
camlight; lighting phong; % ���ù��պ͹���ģʽ

      switch sw
      case 'jia'
          %a=0;b=4;c=5;a+b+c%�����еı�����������ڹ������ڣ�
          %��ʹ��global ���� ʱ�������������ڹ������ڱ�����
          z=jia(x,y);
      case 'j'
           z=cheng(x,y);
      case 'aadd'
           z=a_add(x);
      otherwise
           fprintf('the last select is unable: %s #!!!!\nthere is only support the following parameters:\n ',sw);
           fprintf(' * �ӷ� :x,y,jia :���=(x+y)\n ');
           fprintf(' * �˷� :x,y,j :���=(x*y)\n ');
           fprintf(' * �����Լ�1 :A,[0-9999],addd :���=(A)\n ');
      end
end

function g=key(p, n, fs)
t=0 : 1/fs : 2/n;g=sin(2*pi* fre(p) *t);
end

function f = fre(p)
f=440*2^((p-69)/12);
end

function y = jia(x,z)
    y = x+z;
end

function y = cheng(x,z)
    for i=1:z
        y=jia(x,x);
    end
end

function Z=a_add(A)    %matlab ��������ͬ�����ڴ��ݣ��������������ڴ��޸Ĳ�����ֵ������Ӱ��ԭ��ֵ
    [r,c] = size(A);    % ��ȡ��r����c
    for i = 1:r        % ����forѭ��Ƕ��
        for k = 1:c
            A(i,k)=A(i,k)+1;     % ��ȡ����ÿ��λ�����ݣ����к���
        end
    end
    Z=A;
end
     

%%���matlab�������⣬��д����




