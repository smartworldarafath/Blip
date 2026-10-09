package androidx.compose.foundation.pager;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class DefaultPagerState extends PagerState {
    public static final SaverKt$Saver$1 G = ListSaverKt.a(new Object(), new Object());
    public final MutableState F;

    public DefaultPagerState(int i, float f, Function0 function0) {
        super(i, f);
        this.F = SnapshotStateKt.g(function0);
    }

    @Override // androidx.compose.foundation.pager.PagerState
    public final int l() {
        return ((Number) ((Function0) ((SnapshotMutableStateImpl) this.F).getValue()).a()).intValue();
    }
}
