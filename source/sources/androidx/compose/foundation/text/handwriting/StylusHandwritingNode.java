package androidx.compose.foundation.text.handwriting;

import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusEventModifierNode;
import androidx.compose.ui.focus.FocusRequesterModifierNode;
import androidx.compose.ui.focus.FocusStateImpl;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNode;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.PointerInputModifierNode;
import androidx.compose.ui.node.TouchBoundsExpansion;
import androidx.compose.ui.unit.Density;
import defpackage.u2;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class StylusHandwritingNode extends DelegatingNode implements PointerInputModifierNode, FocusEventModifierNode, FocusRequesterModifierNode {
    public boolean A;
    public final SuspendingPointerInputModifierNode B;
    public Function0 z;

    public StylusHandwritingNode(Function0 function0) {
        this.z = function0;
        PointerInputEventHandler pointerInputEventHandler = new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.handwriting.StylusHandwritingNode$suspendingPointerInputModifierNode$1

            /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
            @DebugMetadata(c = "androidx.compose.foundation.text.handwriting.StylusHandwritingNode$suspendingPointerInputModifierNode$1$1", f = "StylusHandwriting.kt", l = {116, 144, 182}, m = "invokeSuspend", v = 1)
            /* renamed from: androidx.compose.foundation.text.handwriting.StylusHandwritingNode$suspendingPointerInputModifierNode$1$1, reason: invalid class name */
            /* loaded from: classes.dex */
            final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
                public PointerInputChange l;
                public PointerEventPass m;
                public int n;
                public /* synthetic */ Object o;
                public final /* synthetic */ StylusHandwritingNode p;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass1(StylusHandwritingNode stylusHandwritingNode, Continuation continuation) {
                    super(2, continuation);
                    this.p = stylusHandwritingNode;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    return ((AnonymousClass1) s((AwaitPointerEventScope) obj, (Continuation) obj2)).v(Unit.a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation s(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.p, continuation);
                    anonymousClass1.o = obj;
                    return anonymousClass1;
                }

                /* JADX WARN: Code restructure failed: missing block: B:146:0x01a2, code lost:
                
                    continue;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:155:0x00c3, code lost:
                
                    if (r8 == r1) goto L137;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:186:0x0053, code lost:
                
                    if (r9 == r1) goto L137;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:20:0x0225, code lost:
                
                    if (r4 != r1) goto L138;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:21:0x0227, code lost:
                
                    return r1;
                 */
                /* JADX WARN: Removed duplicated region for block: B:53:0x0132  */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:117:0x00c3 -> B:29:0x00c7). Please report as a decompilation issue!!! */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0225 -> B:7:0x0228). Please report as a decompilation issue!!! */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Object v(Object obj) {
                    AwaitPointerEventScope awaitPointerEventScope;
                    Object a;
                    PointerInputChange pointerInputChange;
                    boolean z;
                    PointerEventPass pointerEventPass;
                    PointerInputChange pointerInputChange2;
                    AwaitPointerEventScope awaitPointerEventScope2;
                    PointerEventPass pointerEventPass2;
                    Object q;
                    Object obj2;
                    PointerInputChange pointerInputChange3;
                    AwaitPointerEventScope awaitPointerEventScope3;
                    Object obj3;
                    Object q2;
                    Object obj4;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    int i = this.n;
                    StylusHandwritingNode stylusHandwritingNode = this.p;
                    int i2 = 2;
                    if (i != 0) {
                        if (i != 1) {
                            if (i != 2) {
                                if (i == 3) {
                                    pointerInputChange3 = this.l;
                                    awaitPointerEventScope3 = (AwaitPointerEventScope) this.o;
                                    ResultKt.b(obj);
                                    obj3 = null;
                                    q2 = obj;
                                    List list = ((PointerEvent) q2).a;
                                    int size = list.size();
                                    int i3 = 0;
                                    while (true) {
                                        if (i3 < size) {
                                            obj4 = list.get(i3);
                                            PointerInputChange pointerInputChange4 = (PointerInputChange) obj4;
                                            if (!pointerInputChange4.c() && PointerId.a(pointerInputChange4.a, pointerInputChange3.a) && pointerInputChange4.d) {
                                                break;
                                            }
                                            i3++;
                                        } else {
                                            obj4 = obj3;
                                            break;
                                        }
                                    }
                                    PointerInputChange pointerInputChange5 = (PointerInputChange) obj4;
                                    if (pointerInputChange5 != null) {
                                        pointerInputChange5.a();
                                        PointerEventPass pointerEventPass3 = PointerEventPass.j;
                                        this.o = awaitPointerEventScope3;
                                        this.l = pointerInputChange3;
                                        obj3 = null;
                                        this.m = null;
                                        this.n = 3;
                                        q2 = awaitPointerEventScope3.q(pointerEventPass3, this);
                                    }
                                    return Unit.a;
                                }
                                u2.l("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                            pointerEventPass2 = this.m;
                            pointerInputChange2 = this.l;
                            awaitPointerEventScope2 = (AwaitPointerEventScope) this.o;
                            ResultKt.b(obj);
                            q = obj;
                            PointerEvent pointerEvent = (PointerEvent) q;
                            List list2 = pointerEvent.a;
                            int size2 = list2.size();
                            int i4 = 0;
                            while (true) {
                                if (i4 < size2) {
                                    Object obj5 = list2.get(i4);
                                    PointerInputChange pointerInputChange6 = (PointerInputChange) obj5;
                                    if (!pointerInputChange6.c() && PointerId.a(pointerInputChange6.a, pointerInputChange2.a) && pointerInputChange6.d) {
                                        obj2 = obj5;
                                        break;
                                    }
                                    i4++;
                                } else {
                                    obj2 = null;
                                    break;
                                }
                            }
                            PointerInputChange pointerInputChange7 = (PointerInputChange) obj2;
                            if (pointerInputChange7 != null && pointerInputChange7.b - pointerInputChange2.b < awaitPointerEventScope2.getViewConfiguration().b()) {
                                i2 = 2;
                                if (pointerEvent.c != 2) {
                                    if (Offset.d(Offset.e(pointerInputChange7.c, pointerInputChange2.c)) <= awaitPointerEventScope2.getViewConfiguration().c()) {
                                        this.o = awaitPointerEventScope2;
                                        this.l = pointerInputChange2;
                                        this.m = pointerEventPass2;
                                        this.n = i2;
                                        q = awaitPointerEventScope2.q(pointerEventPass2, this);
                                    }
                                    if (pointerInputChange7 != null) {
                                        if (!stylusHandwritingNode.A) {
                                            Modifier.Node node = stylusHandwritingNode.j;
                                            MutableVector mutableVector = null;
                                            while (true) {
                                                if (node != null) {
                                                    if (node instanceof FocusTargetNode) {
                                                        ((FocusTargetNode) node).f1(7);
                                                        break;
                                                    }
                                                    if ((node.l & 1024) != 0 && (node instanceof DelegatingNode)) {
                                                        int i5 = 0;
                                                        for (Modifier.Node node2 = ((DelegatingNode) node).y; node2 != null; node2 = node2.o) {
                                                            if ((node2.l & 1024) != 0) {
                                                                i5++;
                                                                if (i5 == 1) {
                                                                    node = node2;
                                                                } else {
                                                                    if (mutableVector == null) {
                                                                        mutableVector = new MutableVector(new Modifier.Node[16]);
                                                                    }
                                                                    if (node != null) {
                                                                        mutableVector.b(node);
                                                                        node = null;
                                                                    }
                                                                    mutableVector.b(node2);
                                                                }
                                                            }
                                                        }
                                                        if (i5 == 1) {
                                                        }
                                                    }
                                                    node = DelegatableNodeKt.b(mutableVector);
                                                } else {
                                                    if (!stylusHandwritingNode.j.w) {
                                                        InlineClassHelperKt.b("visitChildren called on an unattached node");
                                                    }
                                                    MutableVector mutableVector2 = new MutableVector(new Modifier.Node[16]);
                                                    Modifier.Node node3 = stylusHandwritingNode.j;
                                                    Modifier.Node node4 = node3.o;
                                                    if (node4 == null) {
                                                        DelegatableNodeKt.a(mutableVector2, node3);
                                                    } else {
                                                        mutableVector2.b(node4);
                                                    }
                                                    loop4: while (true) {
                                                        int i6 = mutableVector2.l;
                                                        if (i6 == 0) {
                                                            break;
                                                        }
                                                        Modifier.Node node5 = (Modifier.Node) mutableVector2.k(i6 - 1);
                                                        if ((node5.m & 1024) == 0) {
                                                            DelegatableNodeKt.a(mutableVector2, node5);
                                                        } else {
                                                            while (true) {
                                                                if (node5 == null) {
                                                                    break;
                                                                }
                                                                if ((node5.l & 1024) != 0) {
                                                                    MutableVector mutableVector3 = null;
                                                                    while (node5 != null) {
                                                                        if (node5 instanceof FocusTargetNode) {
                                                                            ((FocusTargetNode) node5).f1(7);
                                                                            break loop4;
                                                                        }
                                                                        if ((node5.l & 1024) != 0 && (node5 instanceof DelegatingNode)) {
                                                                            int i7 = 0;
                                                                            for (Modifier.Node node6 = ((DelegatingNode) node5).y; node6 != null; node6 = node6.o) {
                                                                                if ((node6.l & 1024) != 0) {
                                                                                    i7++;
                                                                                    if (i7 == 1) {
                                                                                        node5 = node6;
                                                                                    } else {
                                                                                        if (mutableVector3 == null) {
                                                                                            mutableVector3 = new MutableVector(new Modifier.Node[16]);
                                                                                        }
                                                                                        if (node5 != null) {
                                                                                            mutableVector3.b(node5);
                                                                                            node5 = null;
                                                                                        }
                                                                                        mutableVector3.b(node6);
                                                                                    }
                                                                                }
                                                                            }
                                                                            if (i7 == 1) {
                                                                            }
                                                                        }
                                                                        node5 = DelegatableNodeKt.b(mutableVector3);
                                                                    }
                                                                } else {
                                                                    node5 = node5.o;
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        stylusHandwritingNode.z.a();
                                        pointerInputChange7.a();
                                        pointerInputChange3 = pointerInputChange2;
                                        awaitPointerEventScope3 = awaitPointerEventScope2;
                                        PointerEventPass pointerEventPass32 = PointerEventPass.j;
                                        this.o = awaitPointerEventScope3;
                                        this.l = pointerInputChange3;
                                        obj3 = null;
                                        this.m = null;
                                        this.n = 3;
                                        q2 = awaitPointerEventScope3.q(pointerEventPass32, this);
                                    }
                                    return Unit.a;
                                }
                            }
                            pointerInputChange7 = null;
                            if (pointerInputChange7 != null) {
                            }
                            return Unit.a;
                        }
                        awaitPointerEventScope = (AwaitPointerEventScope) this.o;
                        ResultKt.b(obj);
                        a = obj;
                    } else {
                        ResultKt.b(obj);
                        awaitPointerEventScope = (AwaitPointerEventScope) this.o;
                        PointerEventPass pointerEventPass4 = PointerEventPass.j;
                        this.o = awaitPointerEventScope;
                        this.n = 1;
                        a = TapGestureDetectorKt.a(awaitPointerEventScope, true, pointerEventPass4, this);
                    }
                    PointerInputChange pointerInputChange8 = (PointerInputChange) a;
                    int i8 = pointerInputChange8.i;
                    long j = pointerInputChange8.c;
                    if (i8 == 3 || i8 == 4) {
                        int i9 = (int) (j >> 32);
                        if (Float.intBitsToFloat(i9) >= 0.0f) {
                            pointerInputChange = pointerInputChange8;
                            if (Float.intBitsToFloat(i9) < ((int) (awaitPointerEventScope.f() >> 32))) {
                                int i10 = (int) (j & 4294967295L);
                                if (Float.intBitsToFloat(i10) >= 0.0f && Float.intBitsToFloat(i10) < ((int) (4294967295L & awaitPointerEventScope.f()))) {
                                    z = true;
                                    if (stylusHandwritingNode.A && !z) {
                                        pointerEventPass = PointerEventPass.k;
                                    } else {
                                        pointerEventPass = PointerEventPass.j;
                                    }
                                    pointerInputChange2 = pointerInputChange;
                                    awaitPointerEventScope2 = awaitPointerEventScope;
                                    pointerEventPass2 = pointerEventPass;
                                    this.o = awaitPointerEventScope2;
                                    this.l = pointerInputChange2;
                                    this.m = pointerEventPass2;
                                    this.n = i2;
                                    q = awaitPointerEventScope2.q(pointerEventPass2, this);
                                }
                            }
                        } else {
                            pointerInputChange = pointerInputChange8;
                        }
                        z = false;
                        if (stylusHandwritingNode.A) {
                        }
                        pointerEventPass = PointerEventPass.j;
                        pointerInputChange2 = pointerInputChange;
                        awaitPointerEventScope2 = awaitPointerEventScope;
                        pointerEventPass2 = pointerEventPass;
                        this.o = awaitPointerEventScope2;
                        this.l = pointerInputChange2;
                        this.m = pointerEventPass2;
                        this.n = i2;
                        q = awaitPointerEventScope2.q(pointerEventPass2, this);
                    }
                    return Unit.a;
                }
            }

            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                Object b = ForEachGestureKt.b(pointerInputScope, new AnonymousClass1(StylusHandwritingNode.this, null), continuation);
                if (b == CoroutineSingletons.j) {
                    return b;
                }
                return Unit.a;
            }
        };
        PointerEvent pointerEvent = SuspendingPointerInputFilterKt.a;
        SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl = new SuspendingPointerInputModifierNodeImpl(null, null, null, pointerInputEventHandler);
        Y0(suspendingPointerInputModifierNodeImpl);
        this.B = suspendingPointerInputModifierNodeImpl;
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void K(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        ((SuspendingPointerInputModifierNodeImpl) this.B).K(pointerEvent, pointerEventPass, j);
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void L() {
        ((SuspendingPointerInputModifierNodeImpl) this.B).L();
    }

    @Override // androidx.compose.ui.focus.FocusEventModifierNode
    public final void j0(FocusStateImpl focusStateImpl) {
        this.A = focusStateImpl.b();
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final long t() {
        Density density = DelegatableNodeKt.g(this).H;
        StylusHandwritingKt.a.getClass();
        int i = TouchBoundsExpansion.b;
        return TouchBoundsExpansion.Companion.b(density.y0(10.0f), density.y0(40.0f), density.y0(10.0f), density.y0(40.0f));
    }
}
