%HopInumber=zeros();
structa= struct();

structa(1,2).name = 'hahah';


i=10;
for i=i:12
    i;
end


% %====================��֪Բ���Ͻڵ�Ļ��ȣ����������㣬a-��b ��ʱ�뷽��
% 
% nodeAngle=[6.1, 6.2, 6.28, 0.1,  0.3, 6.28];
% nod=      [6.28,6.1, 6.28, 6.28, 0.4, 0.1];
% booldir=1;
% for i=1:6
%     ang=nod(i)-nodeAngle(i);
%     if abs(ang)>pi
%         ang=-ang;
%     end
%     an(i)=ang;
%     if ang/abs(ang)==booldir
%         an(i)=an(i)+100;
%     end
% end
%=======================================================================
% 1 %=======================�����ѡ��Դ�ڵ�(�ҵ��ڵ��ţ�����S)===================
% select_grade=randi([1,HopInumber(sk)],1,1) ; %�ӵ�sk�������ѡ��һ���ڵ������
% rand_count=0 ;%��ʱ������
% for i=1:numOfNodes                  %�����нڵ��У�Ѱ�ҵ�����sk�������ѡ��Ľڵ�   
%     if HopMatriax(i)==sk             % 1 %�ҵ�sk���Ͻڵ㣬����
%         rand_count=rand_count+1;
%     end  
%     if rand_count==select_grade      % 2 %��select_grade���ڵ㣬�������������Դ�ڵ�
%         S=i;
%         break;
%     end
% end