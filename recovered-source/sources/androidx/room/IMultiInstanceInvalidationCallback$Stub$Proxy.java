package androidx.room;

import android.os.IBinder;
import android.os.Parcel;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
class IMultiInstanceInvalidationCallback$Stub$Proxy implements IMultiInstanceInvalidationCallback {
    public IBinder d;

    @Override // androidx.room.IMultiInstanceInvalidationCallback
    public final void a(String[] strArr) {
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IMultiInstanceInvalidationCallback.b);
            obtain.writeStringArray(strArr);
            this.d.transact(1, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.d;
    }
}
