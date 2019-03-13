import numpy

def linearregression (data):
    if type(data)==numpy.ndarray:
        n=data.shape[0]
        k=data.shape[1]-1	
        y=data[:,[0]]
        x=data[:,1:]
        x=numpy.c_[numpy.ones(n),x]	
        b=numpy.linalg.inv(x.T @ x) @ x.T @ y
        e=y - (x @ b)
        sd2=(e.T @ e) / (n-k-1)
        sd2=sd2.sum()
        sd=sd2**(1/2)
        x_means=x.mean(axis=0).reshape(1,3).T
        covariance_matrix=numpy.linalg.inv(x.T @ x)*sd2
        variances=covariance_matrix.diagonal()
        variances=variances.reshape((1,k+1)).T
        se=numpy.sqrt(variances)
        CI_up=b+((1.96)*se)
        CI_low=b-((1.96)*se)
        CI=numpy.append(CI_up,CI_low,axis=1)
        output_table=numpy.append(b,se,axis=1)
        output_table=numpy.append(output_table,CI,axis=1)
        return output_table
    else:
        return "bad input!"
