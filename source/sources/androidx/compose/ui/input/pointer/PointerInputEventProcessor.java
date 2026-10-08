package androidx.compose.ui.input.pointer;

import androidx.collection.LongSparseArray;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.node.HitTestResult;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AndroidComposeView;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PointerInputEventProcessor {
    public final LayoutNode a;
    public final HitPathTracker b;
    public final PointerInputChangeEventProducer c = new PointerInputChangeEventProducer();
    public final HitTestResult d = new HitTestResult();
    public boolean e;

    public PointerInputEventProcessor(LayoutNode layoutNode) {
        this.a = layoutNode;
        this.b = new HitPathTracker(layoutNode.O.c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int a(PointerInputEvent pointerInputEvent, AndroidComposeView androidComposeView, boolean z) {
        Object[] objArr;
        HitPathTracker hitPathTracker;
        int i;
        int i2;
        HitTestResult hitTestResult = this.d;
        if (this.e) {
            return 0;
        }
        try {
            this.e = true;
            InternalPointerEvent a = this.c.a(pointerInputEvent, androidComposeView);
            LongSparseArray longSparseArray = a.a;
            int f = longSparseArray.f();
            for (int i3 = 0; i3 < f; i3++) {
                PointerInputChange pointerInputChange = (PointerInputChange) longSparseArray.g(i3);
                if (!pointerInputChange.d && !pointerInputChange.h) {
                }
                objArr = false;
                break;
            }
            objArr = true;
            int f2 = longSparseArray.f();
            int i4 = 0;
            while (true) {
                hitPathTracker = this.b;
                if (i4 >= f2) {
                    break;
                }
                PointerInputChange pointerInputChange2 = (PointerInputChange) longSparseArray.g(i4);
                if (objArr != false || PointerEventKt.b(pointerInputChange2)) {
                    this.a.E(pointerInputChange2.c, this.d, pointerInputChange2.i, true);
                    if (!hitTestResult.j.d()) {
                        hitPathTracker.a(pointerInputChange2.a, hitTestResult, PointerEventKt.b(pointerInputChange2));
                        hitTestResult.clear();
                    }
                }
                i4++;
            }
            boolean b = hitPathTracker.b(a, z);
            if (!a.c) {
                int f3 = longSparseArray.f();
                for (int i5 = 0; i5 < f3; i5++) {
                    PointerInputChange pointerInputChange3 = (PointerInputChange) longSparseArray.g(i5);
                    if (!Offset.c(PointerEventKt.f(pointerInputChange3, true), 0L) && pointerInputChange3.c()) {
                        i = 1;
                        break;
                    }
                }
            }
            i = 0;
            int f4 = longSparseArray.f();
            int i6 = 0;
            while (true) {
                if (i6 < f4) {
                    if (((PointerInputChange) longSparseArray.g(i6)).c()) {
                        i2 = 1;
                        break;
                    }
                    i6++;
                } else {
                    i2 = 0;
                    break;
                }
            }
            int i7 = (b ? 1 : 0) | (i << 1) | (i2 << 2);
            this.e = false;
            return i7;
        } catch (Throwable th) {
            this.e = false;
            throw th;
        }
    }

    public final void b() {
        if (!this.e) {
            this.c.a.a();
            this.b.c();
        }
    }
}
