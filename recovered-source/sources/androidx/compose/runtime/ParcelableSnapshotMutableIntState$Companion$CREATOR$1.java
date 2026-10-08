package androidx.compose.runtime;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ParcelableSnapshotMutableIntState$Companion$CREATOR$1 implements Parcelable.Creator<ParcelableSnapshotMutableIntState> {
    @Override // android.os.Parcelable.Creator
    public final ParcelableSnapshotMutableIntState createFromParcel(Parcel parcel) {
        return new ParcelableSnapshotMutableIntState(parcel.readInt());
    }

    @Override // android.os.Parcelable.Creator
    public final ParcelableSnapshotMutableIntState[] newArray(int i) {
        return new ParcelableSnapshotMutableIntState[i];
    }
}
