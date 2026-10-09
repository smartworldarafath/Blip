package com.google.android.gms.internal.cloudmessaging;

import android.os.BadParcelableException;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class zzb extends Binder implements IInterface {
    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        Status createFromParcel;
        ApiException apiException;
        if (i > 16777215) {
            if (super.onTransact(i, parcel, parcel2, i2)) {
                return true;
            }
        } else {
            parcel.enforceInterface(getInterfaceDescriptor());
        }
        zzf zzfVar = (zzf) this;
        if (i == 1) {
            Parcelable.Creator<Status> creator = Status.CREATOR;
            int i3 = zzc.a;
            ApiMetadata apiMetadata = null;
            if (parcel.readInt() == 0) {
                createFromParcel = null;
            } else {
                createFromParcel = creator.createFromParcel(parcel);
            }
            Status status = createFromParcel;
            String readString = parcel.readString();
            Parcelable.Creator<ApiMetadata> creator2 = ApiMetadata.CREATOR;
            if (parcel.readInt() != 0) {
                apiMetadata = creator2.createFromParcel(parcel);
            }
            int dataAvail = parcel.dataAvail();
            if (dataAvail <= 0) {
                int i4 = status.j;
                TaskCompletionSource taskCompletionSource = ((zzi) zzfVar).d;
                if (i4 <= 0) {
                    taskCompletionSource.b(readString);
                    return true;
                }
                if (status.l != null) {
                    apiException = new ApiException(status);
                } else {
                    apiException = new ApiException(status);
                }
                taskCompletionSource.a(apiException);
                return true;
            }
            StringBuilder sb = new StringBuilder(String.valueOf(dataAvail).length() + 45);
            sb.append("Parcel data not fully consumed, unread size: ");
            sb.append(dataAvail);
            throw new BadParcelableException(sb.toString());
        }
        return false;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
