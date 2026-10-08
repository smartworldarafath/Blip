package androidx.room;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface IMultiInstanceInvalidationService extends IInterface {
    public static final String c = "androidx$room$IMultiInstanceInvalidationService".replace('$', '.');

    void i(int i, String[] strArr);

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IMultiInstanceInvalidationService {
        /* JADX WARN: Type inference failed for: r0v4, types: [androidx.room.IMultiInstanceInvalidationCallback$Stub$Proxy, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r0v9, types: [androidx.room.IMultiInstanceInvalidationCallback$Stub$Proxy, java.lang.Object] */
        @Override // android.os.Binder
        public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String str = IMultiInstanceInvalidationService.c;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback = null;
            IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback2 = null;
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return super.onTransact(i, parcel, parcel2, i2);
                    }
                    ((MultiInstanceInvalidationService$binder$1) this).i(parcel.readInt(), parcel.createStringArray());
                    return true;
                }
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(IMultiInstanceInvalidationCallback.b);
                    if (queryLocalInterface != null && (queryLocalInterface instanceof IMultiInstanceInvalidationCallback)) {
                        iMultiInstanceInvalidationCallback2 = (IMultiInstanceInvalidationCallback) queryLocalInterface;
                    } else {
                        ?? obj = new Object();
                        obj.d = readStrongBinder;
                        iMultiInstanceInvalidationCallback2 = obj;
                    }
                }
                int readInt = parcel.readInt();
                iMultiInstanceInvalidationCallback2.getClass();
                MultiInstanceInvalidationService multiInstanceInvalidationService = ((MultiInstanceInvalidationService$binder$1) this).d;
                synchronized (multiInstanceInvalidationService.l) {
                    multiInstanceInvalidationService.l.unregister(iMultiInstanceInvalidationCallback2);
                }
                parcel2.writeNoException();
                return true;
            }
            IBinder readStrongBinder2 = parcel.readStrongBinder();
            if (readStrongBinder2 != null) {
                IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface(IMultiInstanceInvalidationCallback.b);
                if (queryLocalInterface2 != null && (queryLocalInterface2 instanceof IMultiInstanceInvalidationCallback)) {
                    iMultiInstanceInvalidationCallback = (IMultiInstanceInvalidationCallback) queryLocalInterface2;
                } else {
                    ?? obj2 = new Object();
                    obj2.d = readStrongBinder2;
                    iMultiInstanceInvalidationCallback = obj2;
                }
            }
            String readString = parcel.readString();
            MultiInstanceInvalidationService$binder$1 multiInstanceInvalidationService$binder$1 = (MultiInstanceInvalidationService$binder$1) this;
            iMultiInstanceInvalidationCallback.getClass();
            int i3 = 0;
            if (readString != null) {
                MultiInstanceInvalidationService multiInstanceInvalidationService2 = multiInstanceInvalidationService$binder$1.d;
                synchronized (multiInstanceInvalidationService2.l) {
                    try {
                        int i4 = multiInstanceInvalidationService2.j + 1;
                        multiInstanceInvalidationService2.j = i4;
                        if (multiInstanceInvalidationService2.l.register(iMultiInstanceInvalidationCallback, Integer.valueOf(i4))) {
                            multiInstanceInvalidationService2.k.put(Integer.valueOf(i4), readString);
                            i3 = i4;
                        } else {
                            multiInstanceInvalidationService2.j--;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            parcel2.writeNoException();
            parcel2.writeInt(i3);
            return true;
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }
    }
}
