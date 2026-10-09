package androidx.compose.ui.input.pointer;

import android.os.SystemClock;
import android.view.MotionEvent;
import androidx.compose.ui.input.pointer.PointerInteropFilter;
import androidx.compose.ui.layout.LayoutCoordinates;
import defpackage.m2;
import defpackage.ma;
import defpackage.u2;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PointerInteropFilter$pointerInputFilter$1 extends PointerInputFilter {
    public PointerInteropFilter.DispatchToViewState b = PointerInteropFilter.DispatchToViewState.j;
    public PointerEvent c;
    public final /* synthetic */ PointerInteropFilter d;

    public PointerInteropFilter$pointerInputFilter$1(PointerInteropFilter pointerInteropFilter) {
        this.d = pointerInteropFilter;
    }

    public final void a(PointerEvent pointerEvent, boolean z) {
        List list = pointerEvent.a;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (((PointerInputChange) list.get(i)).c()) {
                d(pointerEvent);
                return;
            }
        }
        LayoutCoordinates layoutCoordinates = this.a;
        if (layoutCoordinates != null) {
            long S = layoutCoordinates.S(0L);
            final PointerInteropFilter pointerInteropFilter = this.d;
            PointerInteropUtils_androidKt.a(pointerEvent, S, new Function1() { // from class: androidx.compose.ui.input.pointer.a
                @Override // kotlin.jvm.functions.Function1
                public final Object b(Object obj) {
                    PointerInteropFilter.DispatchToViewState dispatchToViewState;
                    MotionEvent motionEvent = (MotionEvent) obj;
                    int actionMasked = motionEvent.getActionMasked();
                    PointerInteropFilter pointerInteropFilter2 = pointerInteropFilter;
                    if (actionMasked == 0) {
                        if (((Boolean) ((m2) pointerInteropFilter2.g()).b(motionEvent)).booleanValue()) {
                            dispatchToViewState = PointerInteropFilter.DispatchToViewState.k;
                        } else {
                            dispatchToViewState = PointerInteropFilter.DispatchToViewState.l;
                        }
                        PointerInteropFilter$pointerInputFilter$1.this.b = dispatchToViewState;
                    } else {
                        ((m2) pointerInteropFilter2.g()).b(motionEvent);
                    }
                    return Unit.a;
                }
            }, false);
            if (this.b == PointerInteropFilter.DispatchToViewState.k) {
                if (z) {
                    int size2 = list.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        ((PointerInputChange) list.get(i2)).a();
                    }
                }
                InternalPointerEvent internalPointerEvent = pointerEvent.b;
                if (internalPointerEvent != null) {
                    internalPointerEvent.c = !pointerInteropFilter.d;
                    return;
                }
                return;
            }
            return;
        }
        u2.l("layoutCoordinates not set");
    }

    public final void b() {
        if (this.b == PointerInteropFilter.DispatchToViewState.k) {
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
            obtain.setSource(0);
            PointerInteropFilter pointerInteropFilter = this.d;
            ((m2) pointerInteropFilter.g()).b(obtain);
            obtain.recycle();
            this.b = PointerInteropFilter.DispatchToViewState.j;
            pointerInteropFilter.d = false;
            this.c = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x010d A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c(PointerEvent pointerEvent, PointerEventPass pointerEventPass) {
        boolean z;
        boolean z2;
        PointerInteropFilter pointerInteropFilter;
        boolean z3;
        boolean z4;
        List list = pointerEvent.a;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            PointerInputChange pointerInputChange = (PointerInputChange) list.get(i);
            if (PointerEventKt.b(pointerInputChange) || PointerEventKt.d(pointerInputChange)) {
                z = false;
                break;
            }
        }
        z = true;
        if (z) {
            int size2 = list.size();
            for (int i2 = 0; i2 < size2; i2++) {
                if (!((PointerInputChange) list.get(i2)).c()) {
                }
            }
            z2 = true;
            pointerInteropFilter = this.d;
            if (!pointerInteropFilter.d) {
                int size3 = list.size();
                int i3 = 0;
                while (true) {
                    if (i3 < size3) {
                        PointerInputChange pointerInputChange2 = (PointerInputChange) list.get(i3);
                        if (PointerEventKt.b(pointerInputChange2) || PointerEventKt.d(pointerInputChange2)) {
                            break;
                        } else {
                            i3++;
                        }
                    } else if (!z2) {
                        z3 = false;
                    }
                }
            }
            z3 = true;
            if (this.b != PointerInteropFilter.DispatchToViewState.l) {
                if (pointerEventPass == PointerEventPass.j && z3) {
                    this.c = pointerEvent;
                    if (z && !pointerInteropFilter.d) {
                        z4 = false;
                    } else {
                        z4 = true;
                    }
                    a(pointerEvent, z4);
                }
                if (pointerEventPass == PointerEventPass.k && z && pointerEvent == this.c && pointerInteropFilter.d) {
                    int size4 = list.size();
                    for (int i4 = 0; i4 < size4; i4++) {
                        ((PointerInputChange) list.get(i4)).a();
                    }
                }
                if (pointerEventPass == PointerEventPass.l && !z3 && pointerEvent != this.c) {
                    a(pointerEvent, true);
                }
            }
            if (pointerEventPass != PointerEventPass.l) {
                int size5 = list.size();
                int i5 = 0;
                while (true) {
                    if (i5 < size5) {
                        if (!PointerEventKt.d((PointerInputChange) list.get(i5))) {
                            break;
                        } else {
                            i5++;
                        }
                    } else {
                        this.b = PointerInteropFilter.DispatchToViewState.j;
                        pointerInteropFilter.d = false;
                        this.c = null;
                        break;
                    }
                }
                if (pointerEvent == this.c && z) {
                    int size6 = list.size();
                    int i6 = 0;
                    while (true) {
                        if (i6 >= size6) {
                            break;
                        }
                        if (((PointerInputChange) list.get(i6)).c()) {
                            if (!pointerInteropFilter.d) {
                                d(pointerEvent);
                                return;
                            }
                        } else {
                            i6++;
                        }
                    }
                    int size7 = list.size();
                    for (int i7 = 0; i7 < size7; i7++) {
                        ((PointerInputChange) list.get(i7)).a();
                    }
                    return;
                }
                return;
            }
            return;
        }
        z2 = false;
        pointerInteropFilter = this.d;
        if (!pointerInteropFilter.d) {
        }
        z3 = true;
        if (this.b != PointerInteropFilter.DispatchToViewState.l) {
        }
        if (pointerEventPass != PointerEventPass.l) {
        }
    }

    public final void d(PointerEvent pointerEvent) {
        if (this.b == PointerInteropFilter.DispatchToViewState.k) {
            LayoutCoordinates layoutCoordinates = this.a;
            if (layoutCoordinates != null) {
                PointerInteropUtils_androidKt.a(pointerEvent, layoutCoordinates.S(0L), new ma(11, this.d), true);
            } else {
                u2.l("layoutCoordinates not set");
                return;
            }
        }
        this.b = PointerInteropFilter.DispatchToViewState.l;
    }
}
