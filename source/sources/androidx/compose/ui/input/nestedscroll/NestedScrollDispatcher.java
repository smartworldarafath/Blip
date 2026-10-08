package androidx.compose.ui.input.nestedscroll;

import androidx.compose.ui.unit.Velocity;
import defpackage.kb;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NestedScrollDispatcher {
    public NestedScrollNode a;
    public NestedScrollNode b;
    public Function0 c = new kb(2, this);
    public CoroutineScope d;

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0052, code lost:
    
        if (r0 == r1) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x006d, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x006b, code lost:
    
        if (r0 == r1) goto L36;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(long j, long j2, ContinuationImpl continuationImpl) {
        NestedScrollDispatcher$dispatchPostFling$1 nestedScrollDispatcher$dispatchPostFling$1;
        int i;
        NestedScrollNode nestedScrollNode;
        long j3;
        if (continuationImpl instanceof NestedScrollDispatcher$dispatchPostFling$1) {
            nestedScrollDispatcher$dispatchPostFling$1 = (NestedScrollDispatcher$dispatchPostFling$1) continuationImpl;
            int i2 = nestedScrollDispatcher$dispatchPostFling$1.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                nestedScrollDispatcher$dispatchPostFling$1.o = i2 - Integer.MIN_VALUE;
                NestedScrollDispatcher$dispatchPostFling$1 nestedScrollDispatcher$dispatchPostFling$12 = nestedScrollDispatcher$dispatchPostFling$1;
                Object obj = nestedScrollDispatcher$dispatchPostFling$12.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = nestedScrollDispatcher$dispatchPostFling$12.o;
                NestedScrollNode nestedScrollNode2 = null;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            ResultKt.b(obj);
                            j3 = ((Velocity) obj).a;
                        } else {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                    } else {
                        ResultKt.b(obj);
                        j3 = ((Velocity) obj).a;
                    }
                } else {
                    ResultKt.b(obj);
                    NestedScrollNode nestedScrollNode3 = this.a;
                    if (nestedScrollNode3 != null) {
                        nestedScrollNode = nestedScrollNode3.Z0();
                    } else {
                        nestedScrollNode = null;
                    }
                    j3 = 0;
                    if (nestedScrollNode == null) {
                        NestedScrollNode nestedScrollNode4 = this.b;
                        if (nestedScrollNode4 != null) {
                            nestedScrollDispatcher$dispatchPostFling$12.o = 1;
                            obj = nestedScrollNode4.u(j, j2, nestedScrollDispatcher$dispatchPostFling$12);
                        }
                    } else {
                        NestedScrollNode nestedScrollNode5 = this.a;
                        if (nestedScrollNode5 != null) {
                            nestedScrollNode2 = nestedScrollNode5.Z0();
                        }
                        NestedScrollNode nestedScrollNode6 = nestedScrollNode2;
                        if (nestedScrollNode6 != null) {
                            nestedScrollDispatcher$dispatchPostFling$12.o = 2;
                            obj = nestedScrollNode6.u(j, j2, nestedScrollDispatcher$dispatchPostFling$12);
                        }
                    }
                }
                return new Velocity(j3);
            }
        }
        nestedScrollDispatcher$dispatchPostFling$1 = new NestedScrollDispatcher$dispatchPostFling$1(this, continuationImpl);
        NestedScrollDispatcher$dispatchPostFling$1 nestedScrollDispatcher$dispatchPostFling$122 = nestedScrollDispatcher$dispatchPostFling$1;
        Object obj2 = nestedScrollDispatcher$dispatchPostFling$122.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = nestedScrollDispatcher$dispatchPostFling$122.o;
        NestedScrollNode nestedScrollNode22 = null;
        if (i == 0) {
        }
        return new Velocity(j3);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(long j, ContinuationImpl continuationImpl) {
        NestedScrollDispatcher$dispatchPreFling$1 nestedScrollDispatcher$dispatchPreFling$1;
        int i;
        long j2;
        if (continuationImpl instanceof NestedScrollDispatcher$dispatchPreFling$1) {
            nestedScrollDispatcher$dispatchPreFling$1 = (NestedScrollDispatcher$dispatchPreFling$1) continuationImpl;
            int i2 = nestedScrollDispatcher$dispatchPreFling$1.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                nestedScrollDispatcher$dispatchPreFling$1.o = i2 - Integer.MIN_VALUE;
                Object obj = nestedScrollDispatcher$dispatchPreFling$1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = nestedScrollDispatcher$dispatchPreFling$1.o;
                NestedScrollNode nestedScrollNode = null;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.b(obj);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    NestedScrollNode nestedScrollNode2 = this.a;
                    if (nestedScrollNode2 != null) {
                        nestedScrollNode = nestedScrollNode2.Z0();
                    }
                    if (nestedScrollNode != null) {
                        nestedScrollDispatcher$dispatchPreFling$1.o = 1;
                        obj = nestedScrollNode.n0(j, nestedScrollDispatcher$dispatchPreFling$1);
                        if (obj == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    } else {
                        j2 = 0;
                        return new Velocity(j2);
                    }
                }
                j2 = ((Velocity) obj).a;
                return new Velocity(j2);
            }
        }
        nestedScrollDispatcher$dispatchPreFling$1 = new NestedScrollDispatcher$dispatchPreFling$1(this, continuationImpl);
        Object obj2 = nestedScrollDispatcher$dispatchPreFling$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = nestedScrollDispatcher$dispatchPreFling$1.o;
        NestedScrollNode nestedScrollNode3 = null;
        if (i == 0) {
        }
        j2 = ((Velocity) obj2).a;
        return new Velocity(j2);
    }

    public final CoroutineScope c() {
        CoroutineScope coroutineScope = (CoroutineScope) this.c.a();
        if (coroutineScope != null) {
            return coroutineScope;
        }
        u2.l("in order to access nested coroutine scope you need to attach dispatcher to the `Modifier.nestedScroll` first.");
        return null;
    }
}
