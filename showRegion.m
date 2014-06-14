span = -20:1:20;
[P1,P2] = meshgrid(span,span);
pp = [P1(:) P2(:)];

layers = fprop(layers,pp);
predicted = layers(end).output;

[~,I] = max(predicted,[],2);
class = reshape(I,size(P1));
figure(2)

imagesc([-20,20],[-20,20],class)
hold on
plot(X11(:,1),X11(:,2),'r+',X12(:,1),X12(:,2),'b+')