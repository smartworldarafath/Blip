package androidx.compose.ui.scrollcapture;

import android.graphics.Point;
import android.view.ScrollCaptureTarget;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.RectHelper_androidKt;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.semantics.SemanticsOwner;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntRectKt;
import defpackage.db;
import java.util.function.Consumer;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlinx.coroutines.CoroutineScopeKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ScrollCapture {
    public final MutableState a = SnapshotStateKt.g(Boolean.FALSE);

    /* JADX WARN: Type inference failed for: r0v2, types: [kotlin.jvm.functions.Function1, kotlin.jvm.internal.AdaptedFunctionReference] */
    public final void a(AndroidComposeView androidComposeView, SemanticsOwner semanticsOwner, CoroutineContext coroutineContext, Consumer consumer) {
        Object obj;
        MutableVector mutableVector = new MutableVector(new ScrollCaptureCandidate[16]);
        final int i = 0;
        ScrollCapture_androidKt.a(semanticsOwner.a(), 0, new AdaptedFunctionReference(1, mutableVector, MutableVector.class, "add", "add(Ljava/lang/Object;)Z", 8));
        final int i2 = 1;
        mutableVector.n(ComparisonsKt.a(new Function1() { // from class: androidx.compose.ui.scrollcapture.a
            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj2) {
                ScrollCaptureCandidate scrollCaptureCandidate = (ScrollCaptureCandidate) obj2;
                switch (i) {
                    case 0:
                        return Integer.valueOf(scrollCaptureCandidate.b);
                    default:
                        return Integer.valueOf(scrollCaptureCandidate.c.a());
                }
            }
        }, new Function1() { // from class: androidx.compose.ui.scrollcapture.a
            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj2) {
                ScrollCaptureCandidate scrollCaptureCandidate = (ScrollCaptureCandidate) obj2;
                switch (i2) {
                    case 0:
                        return Integer.valueOf(scrollCaptureCandidate.b);
                    default:
                        return Integer.valueOf(scrollCaptureCandidate.c.a());
                }
            }
        }));
        int i3 = mutableVector.l;
        if (i3 == 0) {
            obj = null;
        } else {
            obj = mutableVector.j[i3 - 1];
        }
        ScrollCaptureCandidate scrollCaptureCandidate = (ScrollCaptureCandidate) obj;
        if (scrollCaptureCandidate == null) {
            return;
        }
        IntRect intRect = scrollCaptureCandidate.c;
        ComposeScrollCaptureCallback composeScrollCaptureCallback = new ComposeScrollCaptureCallback(scrollCaptureCandidate.a, intRect, CoroutineScopeKt.a(coroutineContext), this, androidComposeView);
        NodeCoordinator nodeCoordinator = scrollCaptureCandidate.d;
        Rect l = LayoutCoordinatesKt.c(nodeCoordinator).l(nodeCoordinator, true);
        long b = intRect.b();
        ScrollCaptureTarget i4 = db.i(androidComposeView, RectHelper_androidKt.a(IntRectKt.a(l)), new Point((int) (b >> 32), (int) (b & 4294967295L)), composeScrollCaptureCallback);
        i4.setScrollBounds(RectHelper_androidKt.a(intRect));
        consumer.accept(i4);
    }
}
