function SdasClient = StartSdas()

    javaaddpath('../sdas/xmlrpc-2.0.jar')
    javaaddpath('../sdas/commons-codec-1.3.jar')
    javaaddpath('../sdas/SDASClient.jar')
    javaaddpath('../sdas/SDAS.jar')
    
%    import org.sdas.core.client.*;
%    import org.sdas.core.time.*;
%    import java.lang.*;

%    SdasClient = SDASClient('baco.ipfn.ist.utl.pt', 8888);

    SdasClient = javaObject('org.sdas.core.client.SDASClient', 'baco.ipfn.ist.utl.pt', 8888);
