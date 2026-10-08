package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import kotlin.Unit;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ObservableScopeInvalidator {
    public static MutableState a() {
        return SnapshotStateKt.f(Unit.a, SnapshotStateKt.h());
    }
}
