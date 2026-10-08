package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.unit.Velocity;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.gestures.ScrollingLogic$onScrollStopped$performFling$1", f = "Scrollable.kt", l = {742, 745, 748}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class ScrollingLogic$onScrollStopped$performFling$1 extends SuspendLambda implements Function2<Velocity, Continuation<? super Velocity>, Object> {
    public long n;
    public int o;
    public /* synthetic */ long p;
    public final /* synthetic */ ScrollingLogic q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollingLogic$onScrollStopped$performFling$1(ScrollingLogic scrollingLogic, Continuation continuation) {
        super(2, continuation);
        this.q = scrollingLogic;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((ScrollingLogic$onScrollStopped$performFling$1) s(new Velocity(((Velocity) obj).a), (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        ScrollingLogic$onScrollStopped$performFling$1 scrollingLogic$onScrollStopped$performFling$1 = new ScrollingLogic$onScrollStopped$performFling$1(this.q, continuation);
        scrollingLogic$onScrollStopped$performFling$1.p = ((Velocity) obj).a;
        return scrollingLogic$onScrollStopped$performFling$1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x003d, code lost:
    
        if (r15 == r0) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006e  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        long j;
        long j2;
        long j3;
        long j4;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.o;
        ScrollingLogic scrollingLogic = this.q;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        j4 = this.n;
                        j3 = this.p;
                        ResultKt.b(obj);
                        return new Velocity(Velocity.d(j3, Velocity.d(j4, ((Velocity) obj).a)));
                    }
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                j2 = this.n;
                j = this.p;
                ResultKt.b(obj);
                long j5 = ((Velocity) obj).a;
                NestedScrollDispatcher nestedScrollDispatcher = scrollingLogic.f;
                long d = Velocity.d(j2, j5);
                this.p = j;
                this.n = j5;
                this.o = 3;
                obj = nestedScrollDispatcher.a(d, j5, this);
                if (obj != coroutineSingletons) {
                    j3 = j;
                    j4 = j5;
                    return new Velocity(Velocity.d(j3, Velocity.d(j4, ((Velocity) obj).a)));
                }
                return coroutineSingletons;
            }
            j = this.p;
            ResultKt.b(obj);
        } else {
            ResultKt.b(obj);
            j = this.p;
            NestedScrollDispatcher nestedScrollDispatcher2 = scrollingLogic.f;
            this.p = j;
            this.o = 1;
            obj = nestedScrollDispatcher2.b(j, this);
        }
        long d2 = Velocity.d(j, ((Velocity) obj).a);
        this.p = j;
        this.n = d2;
        this.o = 2;
        obj = scrollingLogic.a(d2, this);
        if (obj != coroutineSingletons) {
            j2 = d2;
            long j52 = ((Velocity) obj).a;
            NestedScrollDispatcher nestedScrollDispatcher3 = scrollingLogic.f;
            long d3 = Velocity.d(j2, j52);
            this.p = j;
            this.n = j52;
            this.o = 3;
            obj = nestedScrollDispatcher3.a(d3, j52, this);
            if (obj != coroutineSingletons) {
            }
        }
        return coroutineSingletons;
    }
}
