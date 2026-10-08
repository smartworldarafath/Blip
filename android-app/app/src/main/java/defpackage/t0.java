package defpackage;

import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.collection.MutableIntList;
import androidx.compose.ui.node.OwnerSnapshotObserver;
import androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat;
import androidx.compose.ui.platform.ScrollObservationScope;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class t0 implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ AndroidComposeViewAccessibilityDelegateCompat k;

    public /* synthetic */ t0(AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat, int i) {
        this.j = i;
        this.k = androidComposeViewAccessibilityDelegateCompat;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = this.k;
        switch (i) {
            case 0:
                View view = androidComposeViewAccessibilityDelegateCompat.m;
                return Boolean.valueOf(view.getParent().requestSendAccessibilityEvent(view, (AccessibilityEvent) obj));
            default:
                ScrollObservationScope scrollObservationScope = (ScrollObservationScope) obj;
                MutableIntList mutableIntList = AndroidComposeViewAccessibilityDelegateCompat.W;
                if (scrollObservationScope.k.contains(scrollObservationScope)) {
                    OwnerSnapshotObserver snapshotObserver = androidComposeViewAccessibilityDelegateCompat.m.getSnapshotObserver();
                    snapshotObserver.a.e(scrollObservationScope, androidComposeViewAccessibilityDelegateCompat.V, new p0(1, scrollObservationScope, androidComposeViewAccessibilityDelegateCompat));
                }
                return Unit.a;
        }
    }
}
