package androidx.compose.foundation;

import android.view.KeyEvent;
import androidx.collection.LongObjectMapKt;
import androidx.collection.MutableLongObjectMap;
import androidx.compose.foundation.gestures.IndirectPointerInputDragCycleDetectorKt;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.interaction.HoverInteraction$Enter;
import androidx.compose.foundation.interaction.HoverInteraction$Exit;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedback;
import androidx.compose.ui.input.indirect.AndroidIndirectPointerEvent;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.AbstractCoroutine;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobSupport;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class CombinedClickableNode extends AbstractClickableNode implements CompositionLocalConsumerModifierNode {
    public Function0 T;
    public boolean U;
    public final MutableLongObjectMap V;
    public final MutableLongObjectMap W;
    public PointerInputChange X;
    public Job Y;
    public Job Z;
    public boolean a0;
    public boolean b0;
    public long c0;
    public boolean d0;
    public IndirectPointerInputChange e0;
    public Job f0;
    public Job g0;
    public boolean h0;
    public boolean i0;
    public long j0;
    public boolean k0;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class DoubleKeyClickState {
    }

    public CombinedClickableNode(IndicationNodeFactory indicationNodeFactory, MutableInteractionSource mutableInteractionSource, Function0 function0, Function0 function02, boolean z) {
        super(mutableInteractionSource, indicationNodeFactory, false, z, null, null, function0);
        this.T = function02;
        this.U = true;
        int i = LongObjectMapKt.a;
        this.V = new MutableLongObjectMap(6);
        this.W = new MutableLongObjectMap(6);
        this.c0 = -1L;
        this.j0 = -1L;
    }

    @Override // androidx.compose.foundation.AbstractClickableNode, androidx.compose.ui.node.PointerInputModifierNode
    public final void K(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        boolean z;
        super.K(pointerEvent, pointerEventPass, j);
        if (pointerEventPass == PointerEventPass.k) {
            if (this.X == null) {
                if (TapGestureDetectorKt.f(pointerEvent, true)) {
                    PointerInputChange pointerInputChange = (PointerInputChange) pointerEvent.a.get(0);
                    pointerInputChange.a();
                    this.X = pointerInputChange;
                    if (this.E) {
                        Job job = this.Z;
                        if (job != null && ((AbstractCoroutine) job).h()) {
                            ((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.a(this, CompositionLocalsKt.t)).getClass();
                            if (pointerInputChange.b - this.c0 < 40) {
                                this.d0 = true;
                                return;
                            }
                            this.a0 = true;
                            Job job2 = this.Z;
                            if (job2 != null) {
                                ((JobSupport) job2).n(null);
                            }
                            this.Z = null;
                        }
                        this.b0 = false;
                        i1(pointerInputChange);
                        if (this.T != null) {
                            this.Y = BuildersKt.c(M0(), null, null, new CombinedClickableNode$handleDownEvent$1(this, null), 3);
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            if (pointerEvent.c == 2) {
                z = true;
            } else {
                z = false;
            }
            List list = pointerEvent.a;
            if (z && !this.b0 && this.E && this.T != null) {
                Job job3 = this.Y;
                if (job3 != null) {
                    ((JobSupport) job3).n(null);
                }
                this.Y = null;
                Function0 function0 = this.T;
                if (function0 != null) {
                    function0.a();
                }
                if (this.U) {
                    ((PlatformHapticFeedback) ((HapticFeedback) CompositionLocalConsumerModifierNodeKt.a(this, CompositionLocalsKt.l))).a(0);
                }
                this.b0 = true;
            }
            if (this.b0) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    if (!PointerEventKt.d((PointerInputChange) list.get(i))) {
                        int size2 = list.size();
                        for (int i2 = 0; i2 < size2; i2++) {
                            ((PointerInputChange) list.get(i2)).a();
                        }
                        return;
                    }
                }
                PointerInputChange pointerInputChange2 = (PointerInputChange) list.get(0);
                pointerInputChange2.a();
                long j2 = pointerInputChange2.b;
                PointerInputChange pointerInputChange3 = this.X;
                pointerInputChange3.getClass();
                r1(j2, pointerInputChange3);
                return;
            }
            int size3 = list.size();
            for (int i3 = 0; i3 < size3; i3++) {
                if (!PointerEventKt.c((PointerInputChange) list.get(i3))) {
                    long e1 = e1(j);
                    int size4 = list.size();
                    for (int i4 = 0; i4 < size4; i4++) {
                        PointerInputChange pointerInputChange4 = (PointerInputChange) list.get(i4);
                        if (pointerInputChange4.c() || PointerEventKt.e(pointerInputChange4, j, e1)) {
                            p1(false);
                            return;
                        }
                    }
                    return;
                }
            }
            PointerInputChange pointerInputChange5 = (PointerInputChange) list.get(0);
            pointerInputChange5.a();
            long j3 = pointerInputChange5.b;
            PointerInputChange pointerInputChange6 = this.X;
            pointerInputChange6.getClass();
            r1(j3, pointerInputChange6);
            return;
        }
        if (pointerEventPass == PointerEventPass.l && this.X != null && !this.b0) {
            List list2 = pointerEvent.a;
            int size5 = list2.size();
            for (int i5 = 0; i5 < size5; i5++) {
                PointerInputChange pointerInputChange7 = (PointerInputChange) list2.get(i5);
                if (pointerInputChange7.c() && pointerInputChange7 != this.X) {
                    p1(false);
                    return;
                }
            }
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void L() {
        HoverInteraction$Enter hoverInteraction$Enter;
        MutableInteractionSource mutableInteractionSource = this.z;
        if (mutableInteractionSource != null && (hoverInteraction$Enter = this.M) != null) {
            mutableInteractionSource.b(new HoverInteraction$Exit(hoverInteraction$Enter));
        }
        this.M = null;
        p1(false);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void S0() {
        s1();
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    public final void b1(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        if (this.T != null) {
            c cVar = new c(this, 0);
            KProperty[] kPropertyArr = SemanticsPropertiesKt.a;
            semanticsPropertyReceiver.b(SemanticsActions.c, new AccessibilityAction(null, cVar));
        }
    }

    @Override // androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode
    public final void k0() {
        p1(true);
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    public final void k1() {
        s1();
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    public final boolean l1(KeyEvent keyEvent) {
        boolean z;
        long a = KeyEvent_androidKt.a(keyEvent);
        if (this.T != null) {
            MutableLongObjectMap mutableLongObjectMap = this.V;
            if (mutableLongObjectMap.b(a) == null) {
                mutableLongObjectMap.g(a, BuildersKt.c(M0(), null, null, new CombinedClickableNode$onClickKeyDownEvent$1(this, null), 3));
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode
    public final void m(AndroidIndirectPointerEvent androidIndirectPointerEvent, PointerEventPass pointerEventPass) {
        boolean z;
        ArrayList arrayList = androidIndirectPointerEvent.a;
        j1();
        if (this.E && this.I == null) {
            GestureNode gestureNode = new GestureNode(this);
            Y0(gestureNode);
            this.I = gestureNode;
        }
        int i = 0;
        if (pointerEventPass == PointerEventPass.k) {
            if (this.e0 == null) {
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    if (IndirectPointerInputDragCycleDetectorKt.b((IndirectPointerInputChange) arrayList.get(i2))) {
                        IndirectPointerInputChange indirectPointerInputChange = (IndirectPointerInputChange) arrayList.get(0);
                        indirectPointerInputChange.i = true;
                        this.e0 = indirectPointerInputChange;
                        if (this.E) {
                            Job job = this.g0;
                            if (job != null && ((AbstractCoroutine) job).h()) {
                                ((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.a(this, CompositionLocalsKt.t)).getClass();
                                if (indirectPointerInputChange.b - this.j0 < 40) {
                                    this.k0 = true;
                                    return;
                                }
                                this.h0 = true;
                                Job job2 = this.g0;
                                if (job2 != null) {
                                    ((JobSupport) job2).n(null);
                                }
                                this.g0 = null;
                            }
                            this.i0 = false;
                            h1(indirectPointerInputChange);
                            if (this.T != null) {
                                this.f0 = BuildersKt.c(M0(), null, null, new CombinedClickableNode$handleDownEvent$2(this, null), 3);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            if (this.i0) {
                int size2 = arrayList.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    IndirectPointerInputChange indirectPointerInputChange2 = (IndirectPointerInputChange) arrayList.get(i3);
                    if (!indirectPointerInputChange2.h || indirectPointerInputChange2.d) {
                        int size3 = arrayList.size();
                        while (i < size3) {
                            ((IndirectPointerInputChange) arrayList.get(i)).i = true;
                            i++;
                        }
                        return;
                    }
                }
                IndirectPointerInputChange indirectPointerInputChange3 = (IndirectPointerInputChange) arrayList.get(0);
                indirectPointerInputChange3.i = true;
                long j = indirectPointerInputChange3.b;
                IndirectPointerInputChange indirectPointerInputChange4 = this.e0;
                indirectPointerInputChange4.getClass();
                q1(j, indirectPointerInputChange4);
                return;
            }
            int size4 = arrayList.size();
            for (int i4 = 0; i4 < size4; i4++) {
                IndirectPointerInputChange indirectPointerInputChange5 = (IndirectPointerInputChange) arrayList.get(i4);
                if (indirectPointerInputChange5.i || !indirectPointerInputChange5.h || indirectPointerInputChange5.d) {
                    float f = ((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.a(this, CompositionLocalsKt.t)).f();
                    int size5 = arrayList.size();
                    for (int i5 = 0; i5 < size5; i5++) {
                        IndirectPointerInputChange indirectPointerInputChange6 = (IndirectPointerInputChange) arrayList.get(i5);
                        long j2 = indirectPointerInputChange6.c;
                        IndirectPointerInputChange indirectPointerInputChange7 = this.e0;
                        indirectPointerInputChange7.getClass();
                        if (Math.abs(Offset.d(Offset.e(j2, indirectPointerInputChange7.c))) > f) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (indirectPointerInputChange6.i || z) {
                            p1(true);
                            return;
                        }
                    }
                    return;
                }
            }
            IndirectPointerInputChange indirectPointerInputChange8 = (IndirectPointerInputChange) arrayList.get(0);
            indirectPointerInputChange8.i = true;
            long j3 = indirectPointerInputChange8.b;
            IndirectPointerInputChange indirectPointerInputChange9 = this.e0;
            indirectPointerInputChange9.getClass();
            q1(j3, indirectPointerInputChange9);
            return;
        }
        if (pointerEventPass == PointerEventPass.l && this.e0 != null && !this.i0) {
            int size6 = arrayList.size();
            while (i < size6) {
                IndirectPointerInputChange indirectPointerInputChange10 = (IndirectPointerInputChange) arrayList.get(i);
                if (indirectPointerInputChange10.i && indirectPointerInputChange10 != this.e0) {
                    p1(true);
                    return;
                }
                i++;
            }
        }
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    public final void m1(KeyEvent keyEvent) {
        long a = KeyEvent_androidKt.a(keyEvent);
        MutableLongObjectMap mutableLongObjectMap = this.V;
        boolean z = false;
        if (mutableLongObjectMap.b(a) != null) {
            Job job = (Job) mutableLongObjectMap.b(a);
            if (job != null) {
                if (job.h()) {
                    job.n(null);
                } else {
                    z = true;
                }
            }
            mutableLongObjectMap.f(a);
        }
        if (!z) {
            n1();
        }
    }

    public final void p1(boolean z) {
        if (z) {
            this.e0 = null;
            Job job = this.f0;
            if (job != null) {
                ((JobSupport) job).n(null);
            }
            this.f0 = null;
            Job job2 = this.g0;
            if (job2 != null) {
                ((JobSupport) job2).n(null);
            }
            this.g0 = null;
            this.h0 = false;
            this.i0 = false;
            this.j0 = -1L;
            this.k0 = false;
        } else {
            this.X = null;
            Job job3 = this.Y;
            if (job3 != null) {
                ((JobSupport) job3).n(null);
            }
            this.Y = null;
            Job job4 = this.Z;
            if (job4 != null) {
                ((JobSupport) job4).n(null);
            }
            this.Z = null;
            this.a0 = false;
            this.b0 = false;
            this.c0 = -1L;
            this.d0 = false;
        }
        f1(z);
    }

    public final void q1(long j, IndirectPointerInputChange indirectPointerInputChange) {
        if (this.E && !this.k0) {
            g1(indirectPointerInputChange.c, true);
            this.j0 = j;
            if (!this.i0 && !this.h0) {
                n1();
            }
        }
        this.e0 = null;
        this.k0 = false;
        this.h0 = false;
        Job job = this.f0;
        if (job != null) {
            ((JobSupport) job).n(null);
        }
        this.f0 = null;
        this.i0 = false;
    }

    public final void r1(long j, PointerInputChange pointerInputChange) {
        if (this.E && !this.d0) {
            g1(pointerInputChange.c, false);
            this.c0 = j;
            if (!this.b0 && !this.a0) {
                n1();
            }
        }
        this.X = null;
        this.d0 = false;
        this.a0 = false;
        Job job = this.Y;
        if (job != null) {
            ((JobSupport) job).n(null);
        }
        this.Y = null;
        this.b0 = false;
    }

    public final void s1() {
        char c;
        long j;
        long j2;
        char c2;
        MutableLongObjectMap mutableLongObjectMap = this.V;
        Object[] objArr = mutableLongObjectMap.c;
        long[] jArr = mutableLongObjectMap.a;
        int length = jArr.length - 2;
        char c3 = 7;
        if (length >= 0) {
            int i = 0;
            j = 128;
            while (true) {
                long j3 = jArr[i];
                j2 = 255;
                if ((((~j3) << c3) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    int i3 = 0;
                    while (i3 < i2) {
                        if ((j3 & 255) < 128) {
                            c2 = c3;
                            ((Job) objArr[(i << 3) + i3]).n(null);
                        } else {
                            c2 = c3;
                        }
                        j3 >>= 8;
                        i3++;
                        c3 = c2;
                    }
                    c = c3;
                    if (i2 != 8) {
                        break;
                    }
                } else {
                    c = c3;
                }
                if (i == length) {
                    break;
                }
                i++;
                c3 = c;
            }
        } else {
            c = 7;
            j = 128;
            j2 = 255;
        }
        mutableLongObjectMap.c();
        MutableLongObjectMap mutableLongObjectMap2 = this.W;
        Object[] objArr2 = mutableLongObjectMap2.c;
        long[] jArr2 = mutableLongObjectMap2.a;
        int length2 = jArr2.length - 2;
        if (length2 >= 0) {
            int i4 = 0;
            while (true) {
                long j4 = jArr2[i4];
                if ((((~j4) << c) & j4 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i5 = 8 - ((~(i4 - length2)) >>> 31);
                    for (int i6 = 0; i6 < i5; i6++) {
                        if ((j4 & j2) >= j) {
                            j4 >>= 8;
                        } else {
                            ((DoubleKeyClickState) objArr2[(i4 << 3) + i6]).getClass();
                            throw null;
                        }
                    }
                    if (i5 != 8) {
                        break;
                    }
                }
                if (i4 == length2) {
                    break;
                } else {
                    i4++;
                }
            }
        }
        mutableLongObjectMap2.c();
    }
}
