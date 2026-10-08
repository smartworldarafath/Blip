package androidx.room;

import android.os.RemoteException;
import android.util.Log;
import androidx.room.IMultiInstanceInvalidationService;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MultiInstanceInvalidationService$binder$1 extends IMultiInstanceInvalidationService.Stub {
    public final /* synthetic */ MultiInstanceInvalidationService d;

    public MultiInstanceInvalidationService$binder$1(MultiInstanceInvalidationService multiInstanceInvalidationService) {
        this.d = multiInstanceInvalidationService;
        attachInterface(this, IMultiInstanceInvalidationService.c);
    }

    @Override // androidx.room.IMultiInstanceInvalidationService
    public final void i(int i, String[] strArr) {
        strArr.getClass();
        MultiInstanceInvalidationService multiInstanceInvalidationService = this.d;
        synchronized (multiInstanceInvalidationService.l) {
            String str = (String) multiInstanceInvalidationService.k.get(Integer.valueOf(i));
            if (str == null) {
                Log.w("ROOM", "Remote invalidation client ID not registered");
                return;
            }
            int beginBroadcast = multiInstanceInvalidationService.l.beginBroadcast();
            int i2 = 0;
            while (true) {
                MultiInstanceInvalidationService$callbackList$1 multiInstanceInvalidationService$callbackList$1 = multiInstanceInvalidationService.l;
                if (i2 < beginBroadcast) {
                    try {
                        Object broadcastCookie = multiInstanceInvalidationService$callbackList$1.getBroadcastCookie(i2);
                        broadcastCookie.getClass();
                        Integer num = (Integer) broadcastCookie;
                        int intValue = num.intValue();
                        String str2 = (String) multiInstanceInvalidationService.k.get(num);
                        if (i != intValue && str.equals(str2)) {
                            try {
                                multiInstanceInvalidationService.l.getBroadcastItem(i2).a(strArr);
                            } catch (RemoteException e) {
                                Log.w("ROOM", "Error invoking a remote callback", e);
                            }
                        }
                        i2++;
                    } catch (Throwable th) {
                        multiInstanceInvalidationService.l.finishBroadcast();
                        throw th;
                    }
                } else {
                    multiInstanceInvalidationService$callbackList$1.finishBroadcast();
                    return;
                }
            }
        }
    }
}
