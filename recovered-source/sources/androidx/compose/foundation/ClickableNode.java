package androidx.compose.foundation;

import android.view.KeyEvent;
import androidx.compose.foundation.gestures.IndirectPointerInputDragCycleDetectorKt;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.interaction.HoverInteraction$Enter;
import androidx.compose.foundation.interaction.HoverInteraction$Exit;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.indirect.AndroidIndirectPointerEvent;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ClickableNode extends AbstractClickableNode {
    public PointerInputChange T;
    public IndirectPointerInputChange U;

    @Override // androidx.compose.foundation.AbstractClickableNode, androidx.compose.ui.node.PointerInputModifierNode
    public final void K(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        super.K(pointerEvent, pointerEventPass, j);
        if (pointerEventPass == PointerEventPass.k) {
            if (this.T == null) {
                if (TapGestureDetectorKt.f(pointerEvent, true)) {
                    PointerInputChange pointerInputChange = (PointerInputChange) pointerEvent.a.get(0);
                    pointerInputChange.a();
                    this.T = pointerInputChange;
                    if (this.E) {
                        this.J = "waiting";
                        i1(pointerInputChange);
                        return;
                    }
                    return;
                }
                return;
            }
            List list = pointerEvent.a;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (!PointerEventKt.c((PointerInputChange) list.get(i))) {
                    long e1 = e1(j);
                    int size2 = list.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        PointerInputChange pointerInputChange2 = (PointerInputChange) list.get(i2);
                        if (pointerInputChange2.c() || PointerEventKt.e(pointerInputChange2, j, e1)) {
                            p1(false);
                            return;
                        }
                    }
                    return;
                }
            }
            ((PointerInputChange) list.get(0)).a();
            if (this.E) {
                this.J = "recognized";
                PointerInputChange pointerInputChange3 = this.T;
                pointerInputChange3.getClass();
                g1(pointerInputChange3.c, false);
                n1();
            }
            this.T = null;
            return;
        }
        if (pointerEventPass == PointerEventPass.l) {
            if (this.T != null) {
                List list2 = pointerEvent.a;
                int size3 = list2.size();
                int i3 = 0;
                while (true) {
                    if (i3 >= size3) {
                        break;
                    }
                    PointerInputChange pointerInputChange4 = (PointerInputChange) list2.get(i3);
                    if (pointerInputChange4.c() && pointerInputChange4 != this.T) {
                        p1(false);
                        break;
                    }
                    i3++;
                }
            }
            if (Intrinsics.a(this.J, "recognized")) {
                this.J = "idle";
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

    @Override // androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode
    public final void k0() {
        p1(true);
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    public final boolean l1(KeyEvent keyEvent) {
        return false;
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
            if (this.U == null) {
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    if (IndirectPointerInputDragCycleDetectorKt.b((IndirectPointerInputChange) arrayList.get(i2))) {
                        IndirectPointerInputChange indirectPointerInputChange = (IndirectPointerInputChange) arrayList.get(0);
                        indirectPointerInputChange.i = true;
                        this.U = indirectPointerInputChange;
                        if (this.E) {
                            this.J = "waiting";
                            h1(indirectPointerInputChange);
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            int size2 = arrayList.size();
            for (int i3 = 0; i3 < size2; i3++) {
                IndirectPointerInputChange indirectPointerInputChange2 = (IndirectPointerInputChange) arrayList.get(i3);
                if (indirectPointerInputChange2.i || !indirectPointerInputChange2.h || indirectPointerInputChange2.d) {
                    float f = ((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.a(this, CompositionLocalsKt.t)).f();
                    int size3 = arrayList.size();
                    for (int i4 = 0; i4 < size3; i4++) {
                        IndirectPointerInputChange indirectPointerInputChange3 = (IndirectPointerInputChange) arrayList.get(i4);
                        long j = indirectPointerInputChange3.c;
                        IndirectPointerInputChange indirectPointerInputChange4 = this.U;
                        indirectPointerInputChange4.getClass();
                        if (Math.abs(Offset.d(Offset.e(j, indirectPointerInputChange4.c))) > f) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (indirectPointerInputChange3.i || z) {
                            p1(true);
                            return;
                        }
                    }
                    return;
                }
            }
            ((IndirectPointerInputChange) arrayList.get(0)).i = true;
            if (this.E) {
                this.J = "recognized";
                IndirectPointerInputChange indirectPointerInputChange5 = this.U;
                indirectPointerInputChange5.getClass();
                g1(indirectPointerInputChange5.c, true);
                n1();
            }
            this.U = null;
            return;
        }
        if (pointerEventPass == PointerEventPass.l) {
            if (this.U != null) {
                int size4 = arrayList.size();
                while (true) {
                    if (i >= size4) {
                        break;
                    }
                    IndirectPointerInputChange indirectPointerInputChange6 = (IndirectPointerInputChange) arrayList.get(i);
                    if (indirectPointerInputChange6.i && indirectPointerInputChange6 != this.U) {
                        p1(true);
                        break;
                    }
                    i++;
                }
            }
            if (Intrinsics.a(this.J, "recognized")) {
                this.J = "idle";
            }
        }
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    public final void m1(KeyEvent keyEvent) {
        n1();
    }

    public final void p1(boolean z) {
        if (z) {
            this.U = null;
        } else {
            this.T = null;
        }
        f1(z);
        this.J = "idle";
    }
}
