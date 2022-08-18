package app.revanced.android.gms.cast.framework.internal;

import app.revanced.android.gms.cast.framework.CastOptions;
import app.revanced.android.gms.cast.framework.ICastConnectionController;
import app.revanced.android.gms.cast.framework.ICastContext;
import app.revanced.android.gms.cast.framework.ICastSession;
import app.revanced.android.gms.cast.framework.IReconnectionService;
import app.revanced.android.gms.cast.framework.ISession;
import app.revanced.android.gms.cast.framework.ISessionProxy;
import app.revanced.android.gms.cast.framework.internal.IMediaRouter;
import app.revanced.android.gms.cast.framework.media.CastMediaOptions;
import app.revanced.android.gms.cast.framework.media.IMediaNotificationService;
import app.revanced.android.gms.cast.framework.media.internal.IFetchBitmapTask;
import app.revanced.android.gms.cast.framework.media.internal.IFetchBitmapTaskProgressPublisher;
import app.revanced.android.gms.dynamic.IObjectWrapper;

interface ICastDynamiteModule {
    ICastContext newCastContextImpl(in IObjectWrapper context, in CastOptions options, IMediaRouter router, in Map sessionProviders) = 0;
    ISession newSessionImpl(String category, String sessionId, ISessionProxy proxy) = 1;
    ICastSession newCastSessionImpl(in CastOptions options, in IObjectWrapper session, ICastConnectionController controller) = 2;
    IMediaNotificationService newMediaNotificationServiceImpl(in IObjectWrapper service, in IObjectWrapper castContext, in IObjectWrapper resources, in CastMediaOptions options) = 3;
    IReconnectionService newReconnectionServiceImpl(in IObjectWrapper service, in IObjectWrapper sessionManager, in IObjectWrapper discoveryManager) = 4;
    IFetchBitmapTask newFetchBitmapTaskImpl(in IObjectWrapper asyncTask, IFetchBitmapTaskProgressPublisher progressPublisher, int i1, int i2, boolean b1, long l1, int i3, int i4, int i5) = 5;
}
