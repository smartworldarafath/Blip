package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import java.util.LinkedHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MultiInstanceInvalidationService extends Service {
    public int j;
    public final LinkedHashMap k = new LinkedHashMap();
    public final MultiInstanceInvalidationService$callbackList$1 l = new RemoteCallbackList<IMultiInstanceInvalidationCallback>() { // from class: androidx.room.MultiInstanceInvalidationService$callbackList$1
        @Override // android.os.RemoteCallbackList
        public final void onCallbackDied(IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback, Object obj) {
            iMultiInstanceInvalidationCallback.getClass();
            obj.getClass();
            MultiInstanceInvalidationService.this.k.remove((Integer) obj);
        }
    };
    public final MultiInstanceInvalidationService$binder$1 m = new MultiInstanceInvalidationService$binder$1(this);

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        intent.getClass();
        return this.m;
    }
}
