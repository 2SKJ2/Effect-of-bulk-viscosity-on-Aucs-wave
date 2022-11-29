myWriter=VideoWriter('Gnu_by_Gph for fixed pe_1');
myWriter.FrameRate=1;
open(myWriter);
for jj=1:4
    modg=squeeze(modG(:,jj,:));
    [KH,NC]=meshgrid(kh,Nc);
    contour(NC,KH,modg);
    set(gca,'ColorScale','log')
    caxis([0.8 1.2]);
    colorbar;

    title(['Pe:' num2str(Pe(jj))]);
    frame=getframe(gcf);
    pause(0.01)
    writeVideo(myWriter,frame);
    xlabel("_Nc_");
    ylabel("_kh_");
end
close(myWriter);
% myWriter=VideoWriter('Gnu_by_Gph for fixed Nc_1');
% myWriter.FrameRate=1;
% open(myWriter);
% for jj=1:4
%     modg=squeeze(modG(jj,:,:));
% 
%     contour(modg');
%     colorbar;
% 
%     title(['Nc:' int2str(jj)]);
%     frame=getframe(gcf);
%     pause(0.01)
%     writeVideo(myWriter,frame);
%     xlabel("_Pe_");
%     ylabel("_kh_");
% end
% close(myWriter);
% myWriter=VideoWriter('beta for fixed pe_1');
% myWriter.FrameRate=1;
% open(myWriter);
% for jj=1:Nkh
%     modg=squeeze(beta(:,:,jj));
% 
%     contour(modg');
%     colorbar;
% 
%     title(['Kh:' int2str(jj)]);
%     frame=getframe(gcf);
%     pause(0.01)
%     writeVideo(myWriter,frame);
%     xlabel("_Nc_");
%     ylabel("_Pe_");
% end
% close(myWriter);