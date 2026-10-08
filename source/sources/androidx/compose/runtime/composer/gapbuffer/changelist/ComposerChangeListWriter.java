package androidx.compose.runtime.composer.gapbuffer.changelist;

import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.IntStack;
import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import androidx.compose.runtime.composer.gapbuffer.changelist.Operation;
import androidx.compose.runtime.composer.gapbuffer.changelist.Operations;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ComposerChangeListWriter {
    public final GapComposer a;
    public ChangeList b;
    public boolean c;
    public int f;
    public int g;
    public int l;
    public final IntStack d = new IntStack();
    public boolean e = true;
    public final ArrayList h = new ArrayList();
    public int i = -1;
    public int j = -1;
    public int k = -1;

    public ComposerChangeListWriter(GapComposer gapComposer, ChangeList changeList) {
        this.a = gapComposer;
        this.b = changeList;
    }

    public final void a() {
        c();
        ArrayList arrayList = this.h;
        if (!arrayList.isEmpty()) {
            arrayList.remove(arrayList.size() - 1);
        } else {
            this.g++;
        }
    }

    public final void b() {
        int i = this.g;
        if (i > 0) {
            Operations operations = this.b.a;
            operations.d(Operation.Ups.c);
            operations.c[operations.d - operations.a[operations.b - 1].a] = i;
            this.g = 0;
        }
        ArrayList arrayList = this.h;
        if (!arrayList.isEmpty()) {
            ChangeList changeList = this.b;
            int size = arrayList.size();
            Object[] objArr = new Object[size];
            for (int i2 = 0; i2 < size; i2++) {
                objArr[i2] = arrayList.get(i2);
            }
            changeList.getClass();
            if (size != 0) {
                Operations operations2 = changeList.a;
                operations2.d(Operation.Downs.c);
                Operations.WriteScope.a(operations2, 0, objArr);
            }
            arrayList.clear();
        }
    }

    public final void c() {
        int i = this.l;
        if (i > 0) {
            int i2 = this.i;
            if (i2 >= 0) {
                b();
                Operations operations = this.b.a;
                operations.d(Operation.RemoveNode.c);
                int i3 = operations.d - operations.a[operations.b - 1].a;
                int[] iArr = operations.c;
                iArr[i3] = i2;
                iArr[i3 + 1] = i;
                this.i = -1;
            } else {
                int i4 = this.k;
                int i5 = this.j;
                b();
                Operations operations2 = this.b.a;
                operations2.d(Operation.MoveNode.c);
                int i6 = operations2.d - operations2.a[operations2.b - 1].a;
                int[] iArr2 = operations2.c;
                iArr2[i6 + 1] = i4;
                iArr2[i6] = i5;
                iArr2[i6 + 2] = i;
                this.j = -1;
                this.k = -1;
            }
            this.l = 0;
        }
    }

    public final void d(boolean z) {
        int i;
        SlotReader slotReader = this.a.G;
        if (z) {
            i = slotReader.i;
        } else {
            i = slotReader.g;
        }
        int i2 = i - this.f;
        if (i2 < 0) {
            ComposerKt.a("Tried to seek backward");
        }
        if (i2 > 0) {
            Operations operations = this.b.a;
            operations.d(Operation.AdvanceSlotsBy.c);
            operations.c[operations.d - operations.a[operations.b - 1].a] = i2;
            this.f = i;
        }
    }

    public final void e(int i, int i2) {
        boolean z;
        if (i2 > 0) {
            if (i >= 0) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                ComposerKt.a("Invalid remove index " + i);
            }
            if (this.i == i) {
                this.l += i2;
                return;
            }
            c();
            this.i = i;
            this.l = i2;
        }
    }
}
