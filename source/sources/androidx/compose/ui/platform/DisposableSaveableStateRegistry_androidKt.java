package androidx.compose.ui.platform;

import android.os.Binder;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.snapshots.SnapshotMutableState;
import java.io.Serializable;
import kotlin.Function;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DisposableSaveableStateRegistry_androidKt {
    public static final Class[] a = {Serializable.class, Parcelable.class, String.class, SparseArray.class, Binder.class, Size.class, SizeF.class};

    public static final boolean a(Object obj) {
        if (obj instanceof SnapshotMutableState) {
            SnapshotMutableState snapshotMutableState = (SnapshotMutableState) obj;
            if (snapshotMutableState.a() == SnapshotStateKt.h() || snapshotMutableState.a() == SnapshotStateKt.m() || snapshotMutableState.a() == SnapshotStateKt.j()) {
                Object value = snapshotMutableState.getValue();
                if (value != null) {
                    return a(value);
                }
                return true;
            }
        } else if (!(obj instanceof Function) || !(obj instanceof Serializable)) {
            for (int i = 0; i < 7; i++) {
                if (a[i].isInstance(obj)) {
                    return true;
                }
            }
        }
        return false;
    }
}
