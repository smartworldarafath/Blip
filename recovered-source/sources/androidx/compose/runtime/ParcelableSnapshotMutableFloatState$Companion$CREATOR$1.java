package androidx.compose.runtime;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ParcelableSnapshotMutableFloatState$Companion$CREATOR$1 implements Parcelable.Creator<ParcelableSnapshotMutableFloatState> {
    @Override // android.os.Parcelable.Creator
    public final ParcelableSnapshotMutableFloatState createFromParcel(Parcel parcel) {
        return new ParcelableSnapshotMutableFloatState(parcel.readFloat());
    }

    @Override // android.os.Parcelable.Creator
    public final ParcelableSnapshotMutableFloatState[] newArray(int i) {
        return new ParcelableSnapshotMutableFloatState[i];
    }
}
