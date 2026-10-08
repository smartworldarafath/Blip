package androidx.compose.runtime.composer.gapbuffer.changelist;

import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.GapRememberObserverHolder;
import androidx.compose.runtime.MovableContentStateReference;
import androidx.compose.runtime.OffsetApplier;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RememberObserverHolder;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.composer.RememberManager;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.SlotTable;
import androidx.compose.runtime.composer.gapbuffer.SlotTableKt;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.composer.gapbuffer.changelist.Operations;
import androidx.compose.runtime.internal.IntRef;
import androidx.compose.runtime.internal.PausedCompositionRemembers;
import androidx.compose.runtime.internal.RememberEventDispatcher;
import defpackage.a0;
import defpackage.d;
import defpackage.f7;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Operation {
    public final int a;
    public final int b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class AdvanceSlotsBy extends Operation {
        public static final AdvanceSlotsBy c = new Operation(1, 0, 2);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            slotWriter.a(opIterator.a(0));
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class AppendValue extends Operation {
        public static final AppendValue c = new Operation(0, 2, 1);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            GapAnchor gapAnchor = (GapAnchor) opIterator.b(0);
            Object b = opIterator.b(1);
            if (b instanceof RememberObserverHolder) {
                RememberObserverHolder rememberObserverHolder = (RememberObserverHolder) b;
                RememberEventDispatcher rememberEventDispatcher = (RememberEventDispatcher) rememberManager;
                rememberEventDispatcher.e.b(rememberObserverHolder);
                rememberEventDispatcher.d.d(rememberObserverHolder);
            }
            if (slotWriter.n != 0) {
                ComposerKt.a("Can only append a slot if not current inserting");
            }
            int i = slotWriter.i;
            int i2 = slotWriter.j;
            int c2 = slotWriter.c(gapAnchor);
            int g = slotWriter.g(slotWriter.b, slotWriter.r(c2 + 1));
            slotWriter.i = g;
            slotWriter.j = g;
            slotWriter.x(1, c2);
            if (i >= g) {
                i++;
                i2++;
            }
            slotWriter.c[g] = b;
            slotWriter.i = i;
            slotWriter.j = i2;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ApplyChangeList extends Operation {
        public static final ApplyChangeList c = new Operation(0, 2, 1);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            int i;
            OperationKt$withCurrentStackTrace$1 operationKt$withCurrentStackTrace$1;
            IntRef intRef = (IntRef) opIterator.b(1);
            if (intRef != null) {
                i = intRef.a;
            } else {
                i = 0;
            }
            ChangeList changeList = (ChangeList) opIterator.b(0);
            if (i > 0) {
                applier = new OffsetApplier(applier, i);
            }
            if (operationErrorContext != null) {
                operationKt$withCurrentStackTrace$1 = new OperationKt$withCurrentStackTrace$1(operationErrorContext, slotWriter);
            } else {
                operationKt$withCurrentStackTrace$1 = null;
            }
            changeList.a(applier, slotWriter, rememberManager, operationKt$withCurrentStackTrace$1);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class CopyNodesToNewAnchorLocation extends Operation {
        public static final CopyNodesToNewAnchorLocation c = new Operation(0, 2, 1);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            int i = ((IntRef) opIterator.b(0)).a;
            List list = (List) opIterator.b(1);
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                Object obj = list.get(i2);
                int i3 = i + i2;
                applier.b(i3, obj);
                applier.i(i3, obj);
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class CopySlotTableToAnchorLocation extends Operation {
        public static final CopySlotTableToAnchorLocation c = new Operation(0, 4, 1);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            MovableContentStateReference movableContentStateReference = (MovableContentStateReference) opIterator.b(2);
            CompositionContext compositionContext = (CompositionContext) opIterator.b(1);
            compositionContext.m(movableContentStateReference);
            ComposerKt.b("Could not resolve state for movable content");
            f7.h();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class DeactivateCurrentGroup extends Operation {
        public static final DeactivateCurrentGroup c;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.runtime.composer.gapbuffer.changelist.Operation$DeactivateCurrentGroup, androidx.compose.runtime.composer.gapbuffer.changelist.Operation] */
        static {
            int i = 0;
            c = new Operation(i, i, 3);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            slotWriter.n(slotWriter.t, new a0(13, rememberManager, slotWriter));
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class DetermineMovableContentNodeIndex extends Operation {
        public static final DetermineMovableContentNodeIndex c = new Operation(0, 2, 1);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            int i;
            int i2;
            IntRef intRef = (IntRef) opIterator.b(0);
            int c2 = slotWriter.c((GapAnchor) opIterator.b(1));
            if (slotWriter.t >= c2) {
                ComposerKt.a("Check failed");
            }
            OperationKt.a(slotWriter, applier, c2);
            int i3 = slotWriter.t;
            int i4 = slotWriter.v;
            while (i4 >= 0 && !slotWriter.y(i4)) {
                i4 = slotWriter.E(slotWriter.b, i4);
            }
            int i5 = i4 + 1;
            int i6 = 0;
            while (i5 < i3) {
                if (slotWriter.v(i3, i5)) {
                    if (slotWriter.y(i5)) {
                        i6 = 0;
                    }
                    i5++;
                } else {
                    if (slotWriter.y(i5)) {
                        i2 = 1;
                    } else {
                        i2 = slotWriter.b[(slotWriter.r(i5) * 5) + 1] & 67108863;
                    }
                    i6 += i2;
                    i5 += slotWriter.u(i5);
                }
            }
            while (true) {
                i = slotWriter.t;
                if (i >= c2) {
                    break;
                }
                if (slotWriter.v(c2, i)) {
                    int i7 = slotWriter.t;
                    if (i7 < slotWriter.u && (slotWriter.b[(slotWriter.r(i7) * 5) + 1] & 1073741824) != 0) {
                        applier.c(slotWriter.D(slotWriter.t));
                        i6 = 0;
                    }
                    slotWriter.P();
                } else {
                    i6 += slotWriter.L();
                }
            }
            if (i != c2) {
                ComposerKt.a("Check failed");
            }
            intRef.a = i6;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Downs extends Operation {
        public static final Downs c;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.runtime.composer.gapbuffer.changelist.Operation$Downs, androidx.compose.runtime.composer.gapbuffer.changelist.Operation] */
        static {
            int i = 1;
            c = new Operation(0, i, i);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            for (Object obj : (Object[]) opIterator.b(0)) {
                applier.c(obj);
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class EndCompositionScope extends Operation {
        public static final EndCompositionScope c = new Operation(0, 2, 1);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            ((Function1) opIterator.b(0)).b((Composition) opIterator.b(1));
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class EndCurrentGroup extends Operation {
        public static final EndCurrentGroup c;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.runtime.composer.gapbuffer.changelist.Operation$EndCurrentGroup, androidx.compose.runtime.composer.gapbuffer.changelist.Operation] */
        static {
            int i = 0;
            c = new Operation(i, i, 3);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            slotWriter.j();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class EndMovableContentPlacement extends Operation {
        public static final EndMovableContentPlacement c;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.runtime.composer.gapbuffer.changelist.Operation$EndMovableContentPlacement, androidx.compose.runtime.composer.gapbuffer.changelist.Operation] */
        static {
            int i = 0;
            c = new Operation(i, i, 3);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            OperationKt.a(slotWriter, applier, 0);
            slotWriter.j();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class EndResumingScope extends Operation {
        public static final EndResumingScope c;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.runtime.composer.gapbuffer.changelist.Operation$EndResumingScope, androidx.compose.runtime.composer.gapbuffer.changelist.Operation] */
        static {
            int i = 1;
            c = new Operation(0, i, i);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            MutableVector mutableVector;
            RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) opIterator.b(0);
            RememberEventDispatcher rememberEventDispatcher = (RememberEventDispatcher) rememberManager;
            MutableScatterMap mutableScatterMap = rememberEventDispatcher.i;
            if (mutableScatterMap != null && ((PausedCompositionRemembers) mutableScatterMap.e(recomposeScopeImpl)) != null) {
                ArrayList arrayList = rememberEventDispatcher.j;
                if (arrayList != null && (mutableVector = (MutableVector) arrayList.remove(arrayList.size() - 1)) != null) {
                    rememberEventDispatcher.e = mutableVector;
                }
                mutableScatterMap.m(recomposeScopeImpl);
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class EnsureGroupStarted extends Operation {
        public static final EnsureGroupStarted c;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.runtime.composer.gapbuffer.changelist.Operation, androidx.compose.runtime.composer.gapbuffer.changelist.Operation$EnsureGroupStarted] */
        static {
            int i = 1;
            c = new Operation(0, i, i);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            GapAnchor gapAnchor = (GapAnchor) opIterator.b(0);
            gapAnchor.getClass();
            slotWriter.l(slotWriter.c(gapAnchor));
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class EnsureRootGroupStarted extends Operation {
        public static final EnsureRootGroupStarted c;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.runtime.composer.gapbuffer.changelist.Operation, androidx.compose.runtime.composer.gapbuffer.changelist.Operation$EnsureRootGroupStarted] */
        static {
            int i = 0;
            c = new Operation(i, i, 3);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            slotWriter.l(0);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class InsertNodeFixup extends Operation {
        public static final InsertNodeFixup c = new Operation(1, 2);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            Object a = ((Function0) opIterator.b(0)).a();
            GapAnchor gapAnchor = (GapAnchor) opIterator.b(1);
            int a2 = opIterator.a(0);
            gapAnchor.getClass();
            slotWriter.U(slotWriter.c(gapAnchor), a);
            applier.i(a2, a);
            applier.c(a);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final GapAnchor b(Operations.OpIterator opIterator) {
            return (GapAnchor) opIterator.b(1);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class InsertSlots extends Operation {
        public static final InsertSlots c = new Operation(0, 2, 1);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            SlotTable slotTable = (SlotTable) opIterator.b(1);
            GapAnchor gapAnchor = (GapAnchor) opIterator.b(0);
            slotWriter.d();
            gapAnchor.getClass();
            slotWriter.A(slotTable, slotTable.b(gapAnchor));
            slotWriter.k();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class InsertSlotsWithFixups extends Operation {
        public static final InsertSlotsWithFixups c = new Operation(0, 3, 1);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            OperationKt$withCurrentStackTrace$1 operationKt$withCurrentStackTrace$1;
            SlotTable slotTable = (SlotTable) opIterator.b(1);
            GapAnchor gapAnchor = (GapAnchor) opIterator.b(0);
            FixupList fixupList = (FixupList) opIterator.b(2);
            SlotWriter e = slotTable.e();
            if (operationErrorContext != null) {
                try {
                    operationKt$withCurrentStackTrace$1 = new OperationKt$withCurrentStackTrace$1(operationErrorContext, slotWriter);
                } catch (Throwable th) {
                    e.e(false);
                    throw th;
                }
            } else {
                operationKt$withCurrentStackTrace$1 = null;
            }
            if (!fixupList.b.c()) {
                ComposerKt.a("FixupList has pending fixup operations that were not realized. Were there mismatched insertNode() and endNodeInsert() calls?");
            }
            fixupList.a.b(applier, e, rememberManager, operationKt$withCurrentStackTrace$1);
            e.e(true);
            slotWriter.d();
            gapAnchor.getClass();
            slotWriter.A(slotTable, slotTable.b(gapAnchor));
            slotWriter.k();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class MoveCurrentGroup extends Operation {
        public static final MoveCurrentGroup c = new Operation(1, 0, 2);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            int[] iArr;
            GapAnchor gapAnchor;
            int c2;
            int i;
            int a = opIterator.a(0);
            if (slotWriter.n != 0) {
                ComposerKt.a("Cannot move a group while inserting");
            }
            if (a < 0) {
                ComposerKt.a("Parameter offset is out of bounds");
            }
            if (a != 0) {
                int i2 = slotWriter.t;
                int i3 = slotWriter.v;
                int i4 = slotWriter.u;
                int i5 = i2;
                while (true) {
                    iArr = slotWriter.b;
                    if (a <= 0) {
                        break;
                    }
                    i5 += iArr[(slotWriter.r(i5) * 5) + 3];
                    if (i5 > i4) {
                        ComposerKt.a("Parameter offset is out of bounds");
                    }
                    a--;
                }
                int i6 = iArr[(slotWriter.r(i5) * 5) + 3];
                int g = slotWriter.g(slotWriter.b, slotWriter.r(slotWriter.t));
                int g2 = slotWriter.g(slotWriter.b, slotWriter.r(i5));
                int i7 = i5 + i6;
                int g3 = slotWriter.g(slotWriter.b, slotWriter.r(i7));
                int i8 = g3 - g2;
                slotWriter.x(i8, Math.max(slotWriter.t - 1, 0));
                slotWriter.w(i6);
                int[] iArr2 = slotWriter.b;
                int r = slotWriter.r(i7) * 5;
                ArraysKt.f(slotWriter.r(i2) * 5, r, (i6 * 5) + r, iArr2, iArr2);
                if (i8 > 0) {
                    Object[] objArr = slotWriter.c;
                    int h = slotWriter.h(g2 + i8);
                    System.arraycopy(objArr, h, objArr, g, slotWriter.h(g3 + i8) - h);
                }
                int i9 = g2 + i8;
                int i10 = i9 - g;
                int i11 = slotWriter.k;
                int i12 = slotWriter.l;
                int length = slotWriter.c.length;
                int i13 = slotWriter.m;
                int i14 = i2 + i6;
                int i15 = i2;
                while (i15 < i14) {
                    int r2 = slotWriter.r(i15);
                    int i16 = i10;
                    int g4 = slotWriter.g(iArr2, r2) - i16;
                    if (i13 < r2) {
                        i = 0;
                    } else {
                        i = i11;
                    }
                    int[] iArr3 = iArr2;
                    iArr3[(r2 * 5) + 4] = SlotWriter.i(SlotWriter.i(g4, i, i12, length), slotWriter.k, slotWriter.l, slotWriter.c.length);
                    i15++;
                    i10 = i16;
                    iArr2 = iArr3;
                    i11 = i11;
                }
                int i17 = i7 + i6;
                int p = slotWriter.p();
                int a2 = SlotTableKt.a(slotWriter.d, i7, p);
                ArrayList arrayList = new ArrayList();
                if (a2 >= 0) {
                    while (a2 < slotWriter.d.size() && (c2 = slotWriter.c((gapAnchor = (GapAnchor) slotWriter.d.get(a2)))) >= i7 && c2 < i17) {
                        arrayList.add(gapAnchor);
                    }
                }
                int i18 = i2 - i7;
                int size = arrayList.size();
                for (int i19 = 0; i19 < size; i19++) {
                    GapAnchor gapAnchor2 = (GapAnchor) arrayList.get(i19);
                    int c3 = slotWriter.c(gapAnchor2) + i18;
                    if (c3 >= slotWriter.g) {
                        gapAnchor2.a = -(p - c3);
                    } else {
                        gapAnchor2.a = c3;
                    }
                    slotWriter.d.add(SlotTableKt.a(slotWriter.d, c3, p), gapAnchor2);
                }
                if (slotWriter.I(i7, i6)) {
                    ComposerKt.a("Unexpectedly removed anchors");
                }
                slotWriter.m(i3, slotWriter.u, i2);
                if (i8 > 0) {
                    slotWriter.J(i9, i8, i7 - 1);
                }
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class MoveNode extends Operation {
        public static final MoveNode c = new Operation(3, 0, 2);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            applier.e(opIterator.a(0), opIterator.a(1), opIterator.a(2));
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class PostInsertNodeFixup extends Operation {
        public static final PostInsertNodeFixup c = new Operation(1, 1);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            GapAnchor gapAnchor = (GapAnchor) opIterator.b(0);
            int a = opIterator.a(0);
            applier.g();
            gapAnchor.getClass();
            applier.b(a, slotWriter.D(slotWriter.c(gapAnchor)));
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final GapAnchor b(Operations.OpIterator opIterator) {
            return (GapAnchor) opIterator.b(0);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Remember extends Operation {
        public static final Remember c;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.runtime.composer.gapbuffer.changelist.Operation, androidx.compose.runtime.composer.gapbuffer.changelist.Operation$Remember] */
        static {
            int i = 1;
            c = new Operation(0, i, i);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            RememberObserverHolder rememberObserverHolder = (RememberObserverHolder) opIterator.b(0);
            RememberEventDispatcher rememberEventDispatcher = (RememberEventDispatcher) rememberManager;
            rememberEventDispatcher.e.b(rememberObserverHolder);
            rememberEventDispatcher.d.d(rememberObserverHolder);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class RememberPausingScope extends Operation {
        public static final RememberPausingScope c;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.runtime.composer.gapbuffer.changelist.Operation$RememberPausingScope, androidx.compose.runtime.composer.gapbuffer.changelist.Operation] */
        static {
            int i = 1;
            c = new Operation(0, i, i);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) opIterator.b(0);
            RememberEventDispatcher rememberEventDispatcher = (RememberEventDispatcher) rememberManager;
            Set set = rememberEventDispatcher.a;
            if (set == null) {
                return;
            }
            PausedCompositionRemembers pausedCompositionRemembers = new PausedCompositionRemembers(set);
            MutableScatterMap mutableScatterMap = rememberEventDispatcher.i;
            if (mutableScatterMap == null) {
                long[] jArr = ScatterMapKt.a;
                mutableScatterMap = new MutableScatterMap();
                rememberEventDispatcher.i = mutableScatterMap;
            }
            mutableScatterMap.o(recomposeScopeImpl, pausedCompositionRemembers);
            rememberEventDispatcher.e.b(new GapRememberObserverHolder(pausedCompositionRemembers, -1));
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class RemoveCurrentGroup extends Operation {
        public static final RemoveCurrentGroup c;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.runtime.composer.gapbuffer.changelist.Operation$RemoveCurrentGroup, androidx.compose.runtime.composer.gapbuffer.changelist.Operation] */
        static {
            int i = 0;
            c = new Operation(i, i, 3);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            slotWriter.n(slotWriter.t, new d(4, rememberManager));
            slotWriter.H();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class RemoveNode extends Operation {
        public static final RemoveNode c;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.runtime.composer.gapbuffer.changelist.Operation, androidx.compose.runtime.composer.gapbuffer.changelist.Operation$RemoveNode] */
        static {
            int i = 2;
            c = new Operation(i, 0, i);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            applier.f(opIterator.a(0), opIterator.a(1));
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ResetSlots extends Operation {
        public static final ResetSlots c;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.runtime.composer.gapbuffer.changelist.Operation, androidx.compose.runtime.composer.gapbuffer.changelist.Operation$ResetSlots] */
        static {
            int i = 0;
            c = new Operation(i, i, 3);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            if (slotWriter.n != 0) {
                ComposerKt.a("Cannot reset when inserting");
            }
            slotWriter.G();
            slotWriter.t = 0;
            slotWriter.u = slotWriter.o() - slotWriter.h;
            slotWriter.i = 0;
            slotWriter.j = 0;
            slotWriter.o = 0;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SideEffect extends Operation {
        public static final SideEffect c;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.runtime.composer.gapbuffer.changelist.Operation, androidx.compose.runtime.composer.gapbuffer.changelist.Operation$SideEffect] */
        static {
            int i = 1;
            c = new Operation(0, i, i);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            ((RememberEventDispatcher) rememberManager).g.b((Function0) opIterator.b(0));
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SkipToEndOfCurrentGroup extends Operation {
        public static final SkipToEndOfCurrentGroup c;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.runtime.composer.gapbuffer.changelist.Operation, androidx.compose.runtime.composer.gapbuffer.changelist.Operation$SkipToEndOfCurrentGroup] */
        static {
            int i = 0;
            c = new Operation(i, i, 3);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            slotWriter.M();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class StartResumingScope extends Operation {
        public static final StartResumingScope c;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.runtime.composer.gapbuffer.changelist.Operation$StartResumingScope, androidx.compose.runtime.composer.gapbuffer.changelist.Operation] */
        static {
            int i = 1;
            c = new Operation(0, i, i);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            PausedCompositionRemembers pausedCompositionRemembers;
            RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) opIterator.b(0);
            RememberEventDispatcher rememberEventDispatcher = (RememberEventDispatcher) rememberManager;
            MutableScatterMap mutableScatterMap = rememberEventDispatcher.i;
            if (mutableScatterMap != null) {
                pausedCompositionRemembers = (PausedCompositionRemembers) mutableScatterMap.e(recomposeScopeImpl);
            } else {
                pausedCompositionRemembers = null;
            }
            if (pausedCompositionRemembers != null) {
                ArrayList arrayList = rememberEventDispatcher.j;
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    rememberEventDispatcher.j = arrayList;
                }
                arrayList.add(rememberEventDispatcher.e);
                rememberEventDispatcher.e = pausedCompositionRemembers.k;
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class TrimParentValues extends Operation {
        public static final TrimParentValues c = new Operation(1, 0, 2);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            int a = opIterator.a(0);
            int i = slotWriter.v;
            int N = slotWriter.N(slotWriter.b, slotWriter.r(i));
            int g = slotWriter.g(slotWriter.b, slotWriter.r(i + 1));
            for (int max = Math.max(N, g - a); max < g; max++) {
                Object obj = slotWriter.c[slotWriter.h(max)];
                if (obj instanceof RememberObserverHolder) {
                    ((RememberEventDispatcher) rememberManager).e((RememberObserverHolder) obj);
                } else if (obj instanceof RecomposeScopeImpl) {
                    ((RecomposeScopeImpl) obj).d();
                }
            }
            if (a <= 0) {
                ComposerKt.a("Check failed");
            }
            int i2 = slotWriter.v;
            int N2 = slotWriter.N(slotWriter.b, slotWriter.r(i2));
            int g2 = slotWriter.g(slotWriter.b, slotWriter.r(i2 + 1)) - a;
            if (g2 < N2) {
                ComposerKt.a("Check failed");
            }
            slotWriter.J(g2, a, i2);
            int i3 = slotWriter.i;
            if (i3 >= N2) {
                slotWriter.i = i3 - a;
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class UpdateAnchoredValue extends Operation {
        public static final UpdateAnchoredValue c = new Operation(1, 2);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            Object b = opIterator.b(0);
            GapAnchor gapAnchor = (GapAnchor) opIterator.b(1);
            int a = opIterator.a(0);
            if (b instanceof RememberObserverHolder) {
                RememberObserverHolder rememberObserverHolder = (RememberObserverHolder) b;
                RememberEventDispatcher rememberEventDispatcher = (RememberEventDispatcher) rememberManager;
                rememberEventDispatcher.e.b(rememberObserverHolder);
                rememberEventDispatcher.d.d(rememberObserverHolder);
            }
            Object K = slotWriter.K(slotWriter.c(gapAnchor), a, b);
            if (K instanceof RememberObserverHolder) {
                ((RememberEventDispatcher) rememberManager).e((RememberObserverHolder) K);
            } else if (K instanceof RecomposeScopeImpl) {
                ((RecomposeScopeImpl) K).d();
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class UpdateAuxData extends Operation {
        public static final UpdateAuxData c;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.runtime.composer.gapbuffer.changelist.Operation$UpdateAuxData, androidx.compose.runtime.composer.gapbuffer.changelist.Operation] */
        static {
            int i = 1;
            c = new Operation(0, i, i);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            slotWriter.S(opIterator.b(0));
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class UpdateNode extends Operation {
        public static final UpdateNode c = new Operation(0, 2, 1);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            applier.h(opIterator.b(0), (Function2) opIterator.b(1));
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class UpdateValue extends Operation {
        public static final UpdateValue c = new Operation(1, 1);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            Object b = opIterator.b(0);
            int a = opIterator.a(0);
            if (b instanceof RememberObserverHolder) {
                RememberObserverHolder rememberObserverHolder = (RememberObserverHolder) b;
                RememberEventDispatcher rememberEventDispatcher = (RememberEventDispatcher) rememberManager;
                rememberEventDispatcher.e.b(rememberObserverHolder);
                rememberEventDispatcher.d.d(rememberObserverHolder);
            }
            Object K = slotWriter.K(slotWriter.t, a, b);
            if (K instanceof RememberObserverHolder) {
                ((RememberEventDispatcher) rememberManager).e((RememberObserverHolder) K);
            } else if (K instanceof RecomposeScopeImpl) {
                ((RecomposeScopeImpl) K).d();
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Ups extends Operation {
        public static final Ups c = new Operation(1, 0, 2);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            int a = opIterator.a(0);
            for (int i = 0; i < a; i++) {
                applier.g();
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class UseCurrentNode extends Operation {
        public static final UseCurrentNode c;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.runtime.composer.gapbuffer.changelist.Operation$UseCurrentNode, androidx.compose.runtime.composer.gapbuffer.changelist.Operation] */
        static {
            int i = 0;
            c = new Operation(i, i, 3);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            applier.d();
        }
    }

    public /* synthetic */ Operation(int i, int i2, int i3) {
        this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? 0 : i2);
    }

    public abstract void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext);

    public GapAnchor b(Operations.OpIterator opIterator) {
        return null;
    }

    public final String toString() {
        String c = Reflection.a(getClass()).c();
        if (c == null) {
            return "";
        }
        return c;
    }

    public Operation(int i, int i2) {
        this.a = i;
        this.b = i2;
    }
}
