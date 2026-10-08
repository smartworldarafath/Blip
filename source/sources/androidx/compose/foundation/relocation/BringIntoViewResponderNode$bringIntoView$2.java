package androidx.compose.foundation.relocation;

import androidx.compose.foundation.gestures.BringIntoViewRequestPriorityQueue;
import androidx.compose.foundation.gestures.ContentInViewNode;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.relocation.BringIntoViewModifierNodeKt;
import defpackage.b;
import defpackage.n1;
import defpackage.p0;
import defpackage.u2;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.relocation.BringIntoViewResponderNode$bringIntoView$2", f = "BringIntoViewResponder.kt", l = {}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class BringIntoViewResponderNode$bringIntoView$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Job>, Object> {
    public /* synthetic */ Object n;
    public final /* synthetic */ BringIntoViewResponderNode o;
    public final /* synthetic */ NodeCoordinator p;
    public final /* synthetic */ p0 q;
    public final /* synthetic */ n1 r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "androidx.compose.foundation.relocation.BringIntoViewResponderNode$bringIntoView$2$1", f = "BringIntoViewResponder.kt", l = {183}, m = "invokeSuspend", v = 1)
    /* renamed from: androidx.compose.foundation.relocation.BringIntoViewResponderNode$bringIntoView$2$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public int n;
        public final /* synthetic */ BringIntoViewResponderNode o;
        public final /* synthetic */ NodeCoordinator p;
        public final /* synthetic */ p0 q;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* renamed from: androidx.compose.foundation.relocation.BringIntoViewResponderNode$bringIntoView$2$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes.dex */
        public final /* synthetic */ class C00031 extends FunctionReferenceImpl implements Function0<Rect> {
            public final /* synthetic */ BringIntoViewResponderNode r;
            public final /* synthetic */ NodeCoordinator s;
            public final /* synthetic */ p0 t;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00031(BringIntoViewResponderNode bringIntoViewResponderNode, NodeCoordinator nodeCoordinator, p0 p0Var) {
                super(0, Intrinsics.Kotlin.class, "localRect", "bringIntoView$localRect(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/geometry/Rect;", 0);
                this.r = bringIntoViewResponderNode;
                this.s = nodeCoordinator;
                this.t = p0Var;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                return BringIntoViewResponderNode.Y0(this.r, this.s, this.t);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(BringIntoViewResponderNode bringIntoViewResponderNode, NodeCoordinator nodeCoordinator, p0 p0Var, Continuation continuation) {
            super(2, continuation);
            this.o = bringIntoViewResponderNode;
            this.p = nodeCoordinator;
            this.q = p0Var;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            return ((AnonymousClass1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.o, this.p, this.q, continuation);
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x00d2, code lost:
        
            if (r12 == kotlin.coroutines.intrinsics.CoroutineSingletons.j) goto L41;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object v(Object obj) {
            Object obj2;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            int i = this.n;
            Unit unit = Unit.a;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.b(obj);
                    return unit;
                }
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            BringIntoViewResponderNode bringIntoViewResponderNode = this.o;
            ContentInViewNode contentInViewNode = bringIntoViewResponderNode.x;
            C00031 c00031 = new C00031(bringIntoViewResponderNode, this.p, this.q);
            this.n = 1;
            contentInViewNode.getClass();
            Rect rect = (Rect) c00031.a();
            if (rect != null && !ContentInViewNode.a1(contentInViewNode, rect, 0L, 0L, 3)) {
                CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.b(this));
                cancellableContinuationImpl.v();
                ContentInViewNode.Request request = new ContentInViewNode.Request(c00031, cancellableContinuationImpl);
                BringIntoViewRequestPriorityQueue bringIntoViewRequestPriorityQueue = contentInViewNode.C;
                MutableVector mutableVector = bringIntoViewRequestPriorityQueue.a;
                Rect rect2 = (Rect) c00031.a();
                if (rect2 == null) {
                    cancellableContinuationImpl.g(unit);
                } else {
                    cancellableContinuationImpl.x(new b(9, bringIntoViewRequestPriorityQueue, request));
                    IntRange j = RangesKt.j(0, mutableVector.l);
                    int i2 = j.j;
                    int i3 = j.k;
                    if (i2 <= i3) {
                        while (true) {
                            Rect rect3 = (Rect) ((C00031) ((ContentInViewNode.Request) mutableVector.j[i3]).a).a();
                            if (rect3 != null) {
                                Rect e = rect2.e(rect3);
                                if (e.equals(rect2)) {
                                    mutableVector.a(i3 + 1, request);
                                    break;
                                }
                                if (!e.equals(rect3)) {
                                    CancellationException cancellationException = new CancellationException("bringIntoView call interrupted by a newer, non-overlapping call");
                                    int i4 = mutableVector.l - 1;
                                    if (i4 <= i3) {
                                        while (true) {
                                            ((ContentInViewNode.Request) mutableVector.j[i3]).b.p(cancellationException);
                                            if (i4 == i3) {
                                                break;
                                            }
                                            i4++;
                                        }
                                    }
                                }
                            }
                            if (i3 == i2) {
                                break;
                            }
                            i3--;
                        }
                    }
                    mutableVector.a(0, request);
                    if (!contentInViewNode.F) {
                        contentInViewNode.b1(0L);
                    }
                }
                obj2 = cancellableContinuationImpl.u();
            }
            obj2 = unit;
            if (obj2 == coroutineSingletons) {
                return coroutineSingletons;
            }
            return unit;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "androidx.compose.foundation.relocation.BringIntoViewResponderNode$bringIntoView$2$2", f = "BringIntoViewResponder.kt", l = {191}, m = "invokeSuspend", v = 1)
    /* renamed from: androidx.compose.foundation.relocation.BringIntoViewResponderNode$bringIntoView$2$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public int n;
        public final /* synthetic */ BringIntoViewResponderNode o;
        public final /* synthetic */ n1 p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(BringIntoViewResponderNode bringIntoViewResponderNode, n1 n1Var, Continuation continuation) {
            super(2, continuation);
            this.o = bringIntoViewResponderNode;
            this.p = n1Var;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            return ((AnonymousClass2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            return new AnonymousClass2(this.o, this.p, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            int i = this.n;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.b(obj);
                } else {
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
            } else {
                ResultKt.b(obj);
                this.n = 1;
                if (BringIntoViewModifierNodeKt.a(this.o, this.p, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return Unit.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BringIntoViewResponderNode$bringIntoView$2(BringIntoViewResponderNode bringIntoViewResponderNode, NodeCoordinator nodeCoordinator, p0 p0Var, n1 n1Var, Continuation continuation) {
        super(2, continuation);
        this.o = bringIntoViewResponderNode;
        this.p = nodeCoordinator;
        this.q = p0Var;
        this.r = n1Var;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((BringIntoViewResponderNode$bringIntoView$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        BringIntoViewResponderNode$bringIntoView$2 bringIntoViewResponderNode$bringIntoView$2 = new BringIntoViewResponderNode$bringIntoView$2(this.o, this.p, this.q, this.r, continuation);
        bringIntoViewResponderNode$bringIntoView$2.n = obj;
        return bringIntoViewResponderNode$bringIntoView$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        CoroutineScope coroutineScope = (CoroutineScope) this.n;
        NodeCoordinator nodeCoordinator = this.p;
        p0 p0Var = this.q;
        BringIntoViewResponderNode bringIntoViewResponderNode = this.o;
        BuildersKt.c(coroutineScope, null, null, new AnonymousClass1(bringIntoViewResponderNode, nodeCoordinator, p0Var, null), 3);
        return BuildersKt.c(coroutineScope, null, null, new AnonymousClass2(bringIntoViewResponderNode, this.r, null), 3);
    }
}
