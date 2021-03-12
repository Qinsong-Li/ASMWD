function desc=compute_ASMWD(shape,param)
% shape: struct with fields, shape.X,shape.Y,shape.Z,shape.TRIV
% param: struct with fields and the default values can be seen in file
%        run_compute_ASMWD.m

options.curv_smooth = param.curv_smooth;
options.n_eigen = param.n_eigen;
options.alpha = param.alpha;
options.angle = 0;
Nf=param.nscales;

desc=cell(1,Nf);

for an=1:numel(param.angles)
    options.angle=pi*param.angles(an)/180;
    [evecs,evals,~,~]=calc_ALB([shape.X,shape.Y,shape.Z],shape.TRIV,options);
    desc{an}=compute_ASMWD_single(evecs,evals,Nf);
end
desc=cell2mat(desc);
desc=normalize(desc,'L2',2);
end


function desc=compute_ASMWD_single(evecs,evals,Nf)
desc=cell(1,Nf);
g=gsp_design_meyer(evals(end),Nf);

for s=1:Nf
    fi=g{s}(evals);
    fi=normalize(fi,'L1',1);
    desc{s}=evecs.^2*fi;
end
desc=cell2mat(desc);
end









