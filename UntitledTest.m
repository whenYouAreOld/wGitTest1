%HopInumber=zeros();
structa= struct();

structa(1,2).name = 'hahah';


i=10;
for i=i:12
    i;
end


% %====================已知圆环上节点的弧度，求相邻两点，a-》b 的时针方向
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
% 1 %=======================随机，选择源节点(找到节点标号，置于S)===================
% select_grade=randi([1,HopInumber(sk)],1,1) ; %从第sk环上随机选择一个节点的序列
% rand_count=0 ;%临时计数器
% for i=1:numOfNodes                  %从所有节点中，寻找到，第sk环上随机选择的节点   
%     if HopMatriax(i)==sk             % 1 %找到sk环上节点，计数
%         rand_count=rand_count+1;
%     end  
%     if rand_count==select_grade      % 2 %第select_grade个节点，即是我们随机的源节点
%         S=i;
%         break;
%     end
% end