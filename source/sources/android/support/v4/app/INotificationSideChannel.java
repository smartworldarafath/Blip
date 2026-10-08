package android.support.v4.app;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface INotificationSideChannel extends IInterface {
    public static final String a = "android$support$v4$app$INotificationSideChannel".replace('$', '.');

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements INotificationSideChannel {

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static class Proxy implements INotificationSideChannel {
            public IBinder d;

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.d;
            }

            @Override // android.support.v4.app.INotificationSideChannel
            public final void h(String str, int i, Notification notification) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(INotificationSideChannel.a);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeString(null);
                    obtain.writeTypedObject(notification, 0);
                    this.d.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [android.support.v4.app.INotificationSideChannel, android.support.v4.app.INotificationSideChannel$Stub$Proxy, java.lang.Object] */
        public static INotificationSideChannel c(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(INotificationSideChannel.a);
            if (queryLocalInterface != null && (queryLocalInterface instanceof INotificationSideChannel)) {
                return (INotificationSideChannel) queryLocalInterface;
            }
            ?? obj = new Object();
            obj.d = iBinder;
            return obj;
        }
    }

    void h(String str, int i, Notification notification);
}
