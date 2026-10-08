package androidx.compose.ui.input.nestedscroll;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNodeKt;
import androidx.compose.ui.unit.Velocity;
import defpackage.kb;
import defpackage.o0;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NestedScrollNode extends Modifier.Node implements TraversableNode, NestedScrollConnection {
    public final String A;
    public NestedScrollConnection x;
    public NestedScrollDispatcher y;
    public NestedScrollNode z;

    public NestedScrollNode(NestedScrollConnection nestedScrollConnection, NestedScrollDispatcher nestedScrollDispatcher) {
        this.x = nestedScrollConnection;
        this.y = nestedScrollDispatcher == null ? new NestedScrollDispatcher() : nestedScrollDispatcher;
        this.A = "androidx.compose.ui.input.nestedscroll.NestedScrollNode";
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public final long Q(int i, long j) {
        NestedScrollNode nestedScrollNode;
        long j2;
        if (this.w) {
            nestedScrollNode = Z0();
        } else {
            nestedScrollNode = null;
        }
        if (nestedScrollNode != null) {
            j2 = nestedScrollNode.Q(i, j);
        } else {
            j2 = 0;
        }
        return Offset.f(j2, this.x.Q(i, Offset.e(j, j2)));
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Q0() {
        NestedScrollDispatcher nestedScrollDispatcher = this.y;
        nestedScrollDispatcher.a = this;
        nestedScrollDispatcher.b = null;
        this.z = null;
        nestedScrollDispatcher.c = new kb(3, this);
        nestedScrollDispatcher.d = M0();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    @Override // androidx.compose.ui.Modifier.Node
    public final void R0() {
        ?? obj = new Object();
        TraversableNodeKt.b(this, new o0(obj, 4));
        NestedScrollNode nestedScrollNode = (NestedScrollNode) ((TraversableNode) obj.j);
        this.z = nestedScrollNode;
        NestedScrollDispatcher nestedScrollDispatcher = this.y;
        nestedScrollDispatcher.b = nestedScrollNode;
        if (nestedScrollDispatcher.a == this) {
            nestedScrollDispatcher.a = null;
            nestedScrollDispatcher.d = null;
            nestedScrollDispatcher.c = NestedScrollNodeKt.a;
        }
    }

    public final CoroutineScope Y0() {
        CoroutineScope coroutineScope;
        NestedScrollNode Z0 = Z0();
        if (Z0 != null) {
            coroutineScope = Z0.Y0();
        } else {
            coroutineScope = null;
        }
        if (coroutineScope != null && CoroutineScopeKt.d(coroutineScope)) {
            return coroutineScope;
        }
        CoroutineScope coroutineScope2 = this.y.d;
        if (coroutineScope2 != null) {
            return coroutineScope2;
        }
        u2.l("in order to access nested coroutine scope you need to attach dispatcher to the `Modifier.nestedScroll` first.");
        return null;
    }

    public final NestedScrollNode Z0() {
        NodeChain nodeChain;
        TraversableNode traversableNode = null;
        if (!this.w) {
            return null;
        }
        if (!this.j.w) {
            InlineClassHelperKt.b("visitAncestors called on an unattached node");
        }
        Modifier.Node node = this.j.n;
        LayoutNode g = DelegatableNodeKt.g(this);
        loop0: while (true) {
            if (g == null) {
                break;
            }
            if ((g.O.f.m & 262144) != 0) {
                while (node != null) {
                    if ((node.l & 262144) != 0) {
                        Modifier.Node node2 = node;
                        MutableVector mutableVector = null;
                        while (node2 != null) {
                            if (node2 instanceof TraversableNode) {
                                TraversableNode traversableNode2 = (TraversableNode) node2;
                                if (Intrinsics.a(this.A, traversableNode2.p()) && NestedScrollNode.class == traversableNode2.getClass()) {
                                    traversableNode = traversableNode2;
                                    break loop0;
                                }
                            }
                            if ((node2.l & 262144) != 0 && (node2 instanceof DelegatingNode)) {
                                int i = 0;
                                for (Modifier.Node node3 = ((DelegatingNode) node2).y; node3 != null; node3 = node3.o) {
                                    if ((node3.l & 262144) != 0) {
                                        i++;
                                        if (i == 1) {
                                            node2 = node3;
                                        } else {
                                            if (mutableVector == null) {
                                                mutableVector = new MutableVector(new Modifier.Node[16]);
                                            }
                                            if (node2 != null) {
                                                mutableVector.b(node2);
                                                node2 = null;
                                            }
                                            mutableVector.b(node3);
                                        }
                                    }
                                }
                                if (i == 1) {
                                }
                            }
                            node2 = DelegatableNodeKt.b(mutableVector);
                        }
                    }
                    node = node.n;
                }
            }
            g = g.w();
            if (g != null && (nodeChain = g.O) != null) {
                node = nodeChain.e;
            } else {
                node = null;
            }
        }
        return (NestedScrollNode) traversableNode;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0050, code lost:
    
        if (r9 == r1) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object n0(long j, Continuation continuation) {
        NestedScrollNode$onPreFling$1 nestedScrollNode$onPreFling$1;
        Object obj;
        CoroutineSingletons coroutineSingletons;
        int i;
        long j2;
        long j3;
        if (continuation instanceof NestedScrollNode$onPreFling$1) {
            nestedScrollNode$onPreFling$1 = (NestedScrollNode$onPreFling$1) continuation;
            int i2 = nestedScrollNode$onPreFling$1.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                nestedScrollNode$onPreFling$1.p = i2 - Integer.MIN_VALUE;
                obj = nestedScrollNode$onPreFling$1.n;
                coroutineSingletons = CoroutineSingletons.j;
                i = nestedScrollNode$onPreFling$1.p;
                NestedScrollNode nestedScrollNode = null;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            j3 = nestedScrollNode$onPreFling$1.m;
                            ResultKt.b(obj);
                            return new Velocity(Velocity.e(j3, ((Velocity) obj).a));
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    j = nestedScrollNode$onPreFling$1.m;
                    ResultKt.b(obj);
                } else {
                    ResultKt.b(obj);
                    if (this.w) {
                        nestedScrollNode = Z0();
                    }
                    if (nestedScrollNode != null) {
                        nestedScrollNode$onPreFling$1.m = j;
                        nestedScrollNode$onPreFling$1.p = 1;
                        obj = nestedScrollNode.n0(j, nestedScrollNode$onPreFling$1);
                    } else {
                        j2 = 0;
                        NestedScrollConnection nestedScrollConnection = this.x;
                        long d = Velocity.d(j, j2);
                        nestedScrollNode$onPreFling$1.m = j2;
                        nestedScrollNode$onPreFling$1.p = 2;
                        obj = nestedScrollConnection.n0(d, nestedScrollNode$onPreFling$1);
                        if (obj != coroutineSingletons) {
                            j3 = j2;
                            return new Velocity(Velocity.e(j3, ((Velocity) obj).a));
                        }
                        return coroutineSingletons;
                    }
                }
                j2 = ((Velocity) obj).a;
                NestedScrollConnection nestedScrollConnection2 = this.x;
                long d2 = Velocity.d(j, j2);
                nestedScrollNode$onPreFling$1.m = j2;
                nestedScrollNode$onPreFling$1.p = 2;
                obj = nestedScrollConnection2.n0(d2, nestedScrollNode$onPreFling$1);
                if (obj != coroutineSingletons) {
                }
                return coroutineSingletons;
            }
        }
        nestedScrollNode$onPreFling$1 = new NestedScrollNode$onPreFling$1(this, (ContinuationImpl) continuation);
        obj = nestedScrollNode$onPreFling$1.n;
        coroutineSingletons = CoroutineSingletons.j;
        i = nestedScrollNode$onPreFling$1.p;
        NestedScrollNode nestedScrollNode2 = null;
        if (i == 0) {
        }
        j2 = ((Velocity) obj).a;
        NestedScrollConnection nestedScrollConnection22 = this.x;
        long d22 = Velocity.d(j, j2);
        nestedScrollNode$onPreFling$1.m = j2;
        nestedScrollNode$onPreFling$1.p = 2;
        obj = nestedScrollConnection22.n0(d22, nestedScrollNode$onPreFling$1);
        if (obj != coroutineSingletons) {
        }
        return coroutineSingletons;
    }

    @Override // androidx.compose.ui.node.TraversableNode
    public final Object p() {
        return this.A;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0029  */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object u(long j, long j2, Continuation continuation) {
        NestedScrollNode$onPostFling$1 nestedScrollNode$onPostFling$1;
        int i;
        long j3;
        long j4;
        boolean z;
        NestedScrollConnection nestedScrollConnection;
        long j5;
        long j6;
        if (continuation instanceof NestedScrollNode$onPostFling$1) {
            nestedScrollNode$onPostFling$1 = (NestedScrollNode$onPostFling$1) continuation;
            int i2 = nestedScrollNode$onPostFling$1.q;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                nestedScrollNode$onPostFling$1.q = i2 - Integer.MIN_VALUE;
                NestedScrollNode$onPostFling$1 nestedScrollNode$onPostFling$12 = nestedScrollNode$onPostFling$1;
                Object obj = nestedScrollNode$onPostFling$12.o;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = nestedScrollNode$onPostFling$12.q;
                NestedScrollNode nestedScrollNode = null;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            j6 = nestedScrollNode$onPostFling$12.m;
                            ResultKt.b(obj);
                            j5 = ((Velocity) obj).a;
                            j4 = j6;
                            return new Velocity(Velocity.e(j4, j5));
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    long j7 = nestedScrollNode$onPostFling$12.n;
                    long j8 = nestedScrollNode$onPostFling$12.m;
                    ResultKt.b(obj);
                    j3 = j7;
                    j = j8;
                } else {
                    ResultKt.b(obj);
                    NestedScrollConnection nestedScrollConnection2 = this.x;
                    nestedScrollNode$onPostFling$12.m = j;
                    nestedScrollNode$onPostFling$12.n = j2;
                    nestedScrollNode$onPostFling$12.q = 1;
                    obj = nestedScrollConnection2.u(j, j2, nestedScrollNode$onPostFling$12);
                    if (obj != coroutineSingletons) {
                        j3 = j2;
                    }
                    return coroutineSingletons;
                }
                j4 = ((Velocity) obj).a;
                z = this.w;
                if (!z) {
                    if (z) {
                        nestedScrollNode = Z0();
                    }
                } else {
                    nestedScrollNode = this.z;
                }
                nestedScrollConnection = nestedScrollNode;
                if (nestedScrollConnection == null) {
                    long e = Velocity.e(j, j4);
                    long d = Velocity.d(j3, j4);
                    nestedScrollNode$onPostFling$12.m = j4;
                    nestedScrollNode$onPostFling$12.q = 2;
                    obj = nestedScrollConnection.u(e, d, nestedScrollNode$onPostFling$12);
                    if (obj != coroutineSingletons) {
                        j6 = j4;
                        j5 = ((Velocity) obj).a;
                        j4 = j6;
                        return new Velocity(Velocity.e(j4, j5));
                    }
                    return coroutineSingletons;
                }
                j5 = 0;
                return new Velocity(Velocity.e(j4, j5));
            }
        }
        nestedScrollNode$onPostFling$1 = new NestedScrollNode$onPostFling$1(this, (ContinuationImpl) continuation);
        NestedScrollNode$onPostFling$1 nestedScrollNode$onPostFling$122 = nestedScrollNode$onPostFling$1;
        Object obj2 = nestedScrollNode$onPostFling$122.o;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = nestedScrollNode$onPostFling$122.q;
        NestedScrollNode nestedScrollNode2 = null;
        if (i == 0) {
        }
        j4 = ((Velocity) obj2).a;
        z = this.w;
        if (!z) {
        }
        nestedScrollConnection = nestedScrollNode2;
        if (nestedScrollConnection == null) {
        }
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public final long w0(int i, long j, long j2) {
        NestedScrollNode nestedScrollNode;
        long j3;
        long w0 = this.x.w0(i, j, j2);
        if (this.w) {
            nestedScrollNode = Z0();
        } else {
            nestedScrollNode = null;
        }
        NestedScrollNode nestedScrollNode2 = nestedScrollNode;
        if (nestedScrollNode2 != null) {
            j3 = nestedScrollNode2.w0(i, Offset.f(j, w0), Offset.e(j2, w0));
        } else {
            j3 = 0;
        }
        return Offset.f(w0, j3);
    }
}
