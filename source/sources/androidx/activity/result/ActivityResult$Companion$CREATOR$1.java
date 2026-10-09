package androidx.activity.result;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ActivityResult$Companion$CREATOR$1 implements Parcelable.Creator<ActivityResult> {
    @Override // android.os.Parcelable.Creator
    public final ActivityResult createFromParcel(Parcel parcel) {
        Intent intent;
        parcel.getClass();
        int readInt = parcel.readInt();
        if (parcel.readInt() == 0) {
            intent = null;
        } else {
            intent = (Intent) Intent.CREATOR.createFromParcel(parcel);
        }
        return new ActivityResult(intent, readInt);
    }

    @Override // android.os.Parcelable.Creator
    public final ActivityResult[] newArray(int i) {
        return new ActivityResult[i];
    }
}
