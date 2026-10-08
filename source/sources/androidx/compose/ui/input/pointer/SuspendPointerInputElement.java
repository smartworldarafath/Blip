package androidx.compose.ui.input.pointer;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SuspendPointerInputElement extends ModifierNodeElement<SuspendingPointerInputModifierNodeImpl> {
    public final Object b;
    public final Object c;
    public final Object[] d;
    public final PointerInputEventHandler e;

    public SuspendPointerInputElement(Object obj, Object obj2, Object[] objArr, PointerInputEventHandler pointerInputEventHandler, int i) {
        obj = (i & 1) != 0 ? null : obj;
        obj2 = (i & 2) != 0 ? null : obj2;
        objArr = (i & 4) != 0 ? null : objArr;
        this.b = obj;
        this.c = obj2;
        this.d = objArr;
        this.e = pointerInputEventHandler;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SuspendPointerInputElement)) {
            return false;
        }
        SuspendPointerInputElement suspendPointerInputElement = (SuspendPointerInputElement) obj;
        if (!Intrinsics.a(this.b, suspendPointerInputElement.b) || !Intrinsics.a(this.c, suspendPointerInputElement.c)) {
            return false;
        }
        Object[] objArr = suspendPointerInputElement.d;
        Object[] objArr2 = this.d;
        if (objArr2 != null) {
            if (objArr == null || !Arrays.equals(objArr2, objArr)) {
                return false;
            }
        } else if (objArr != null) {
            return false;
        }
        if (this.e == suspendPointerInputElement.e) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        return new SuspendingPointerInputModifierNodeImpl(this.b, this.c, this.d, this.e);
    }

    public final int hashCode() {
        int i;
        int i2;
        int i3 = 0;
        Object obj = this.b;
        if (obj != null) {
            i = obj.hashCode();
        } else {
            i = 0;
        }
        int i4 = i * 31;
        Object obj2 = this.c;
        if (obj2 != null) {
            i2 = obj2.hashCode();
        } else {
            i2 = 0;
        }
        int i5 = (i4 + i2) * 31;
        Object[] objArr = this.d;
        if (objArr != null) {
            i3 = Arrays.hashCode(objArr);
        }
        return this.e.hashCode() + ((i5 + i3) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl = (SuspendingPointerInputModifierNodeImpl) node;
        Object obj = suspendingPointerInputModifierNodeImpl.x;
        Object obj2 = this.b;
        boolean z = true;
        boolean z2 = !Intrinsics.a(obj, obj2);
        suspendingPointerInputModifierNodeImpl.x = obj2;
        Object obj3 = suspendingPointerInputModifierNodeImpl.y;
        Object obj4 = this.c;
        if (!Intrinsics.a(obj3, obj4)) {
            z2 = true;
        }
        suspendingPointerInputModifierNodeImpl.y = obj4;
        Object[] objArr = suspendingPointerInputModifierNodeImpl.z;
        Object[] objArr2 = this.d;
        if (objArr != null && objArr2 == null) {
            z2 = true;
        }
        if (objArr == null && objArr2 != null) {
            z2 = true;
        }
        if (objArr != null && objArr2 != null && !Arrays.equals(objArr2, objArr)) {
            z2 = true;
        }
        suspendingPointerInputModifierNodeImpl.z = objArr2;
        Class<?> cls = suspendingPointerInputModifierNodeImpl.A.getClass();
        PointerInputEventHandler pointerInputEventHandler = this.e;
        if (cls == pointerInputEventHandler.getClass()) {
            z = z2;
        }
        if (z) {
            suspendingPointerInputModifierNodeImpl.a1();
        }
        suspendingPointerInputModifierNodeImpl.A = pointerInputEventHandler;
    }
}
