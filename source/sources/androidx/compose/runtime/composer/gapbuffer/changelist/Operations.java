package androidx.compose.runtime.composer.gapbuffer.changelist;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.composer.RememberManager;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import java.util.Arrays;
import kotlin.collections.ArraysKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Operations extends OperationsDebugStringFormattable {
    public int b;
    public int d;
    public int f;
    public Operation[] a = new Operation[16];
    public int[] c = new int[16];
    public Object[] e = new Object[16];

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class OpIterator {
        public int a;
        public int b;
        public int c;

        public OpIterator() {
        }

        public final int a(int i) {
            return Operations.this.c[this.b + i];
        }

        public final Object b(int i) {
            return Operations.this.e[this.c + i];
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class WriteScope {
        public static final void a(Operations operations, int i, Object obj) {
            operations.e[(operations.f - operations.a[operations.b - 1].b) + i] = obj;
        }

        public static final void b(Operations operations, int i, Object obj, int i2, Object obj2) {
            int i3 = operations.f - operations.a[operations.b - 1].b;
            Object[] objArr = operations.e;
            objArr[i + i3] = obj;
            objArr[i3 + i2] = obj2;
        }
    }

    public final void a() {
        this.b = 0;
        this.d = 0;
        Arrays.fill(this.e, 0, this.f, (Object) null);
        this.f = 0;
    }

    public final void b(Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
        if (this.b != 0) {
            OpIterator opIterator = new OpIterator();
            while (true) {
                Operations operations = Operations.this;
                Operation operation = operations.a[opIterator.a];
                GapAnchor b = operation.b(opIterator);
                Applier applier2 = applier;
                SlotWriter slotWriter2 = slotWriter;
                RememberManager rememberManager2 = rememberManager;
                OperationErrorContext operationErrorContext2 = operationErrorContext;
                try {
                    operation.a(opIterator, applier2, slotWriter2, rememberManager2, operationErrorContext2);
                    int i = opIterator.a;
                    int i2 = operations.b;
                    if (i < i2) {
                        Operation operation2 = operations.a[i];
                        opIterator.b += operation2.a;
                        opIterator.c += operation2.b;
                        int i3 = i + 1;
                        opIterator.a = i3;
                        if (i3 >= i2) {
                            break;
                        }
                        applier = applier2;
                        slotWriter = slotWriter2;
                        rememberManager = rememberManager2;
                        operationErrorContext = operationErrorContext2;
                    } else {
                        break;
                    }
                } finally {
                }
            }
        }
        a();
    }

    public final boolean c() {
        if (this.b == 0) {
            return true;
        }
        return false;
    }

    public final void d(Operation operation) {
        int i;
        int i2;
        int i3 = this.b;
        Operation[] operationArr = this.a;
        int i4 = 1024;
        if (i3 == operationArr.length) {
            if (i3 > 1024) {
                i2 = 1024;
            } else {
                i2 = i3;
            }
            Operation[] operationArr2 = new Operation[i2 + i3];
            System.arraycopy(operationArr, 0, operationArr2, 0, i3);
            this.a = operationArr2;
        }
        int i5 = this.d;
        int i6 = operation.a;
        int i7 = operation.b;
        int i8 = i5 + i6;
        int[] iArr = this.c;
        int length = iArr.length;
        if (i8 > length) {
            if (length > 1024) {
                i = 1024;
            } else {
                i = length;
            }
            int i9 = i + length;
            if (i9 >= i8) {
                i8 = i9;
            }
            int[] iArr2 = new int[i8];
            ArraysKt.f(0, 0, length, iArr, iArr2);
            this.c = iArr2;
        }
        int i10 = this.f + i7;
        Object[] objArr = this.e;
        int length2 = objArr.length;
        if (i10 > length2) {
            if (length2 <= 1024) {
                i4 = length2;
            }
            int i11 = i4 + length2;
            if (i11 >= i10) {
                i10 = i11;
            }
            Object[] objArr2 = new Object[i10];
            System.arraycopy(objArr, 0, objArr2, 0, length2);
            this.e = objArr2;
        }
        Operation[] operationArr3 = this.a;
        int i12 = this.b;
        this.b = i12 + 1;
        operationArr3[i12] = operation;
        this.d += operation.a;
        this.f += i7;
    }
}
