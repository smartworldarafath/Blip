package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import defpackage.n1;
import defpackage.p2;
import defpackage.u2;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.gestures.ContentInViewNode$launchAnimation$2", f = "ContentInViewNode.kt", l = {212}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class ContentInViewNode$launchAnimation$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ ContentInViewNode p;
    public final /* synthetic */ UpdatableAnimationState q;
    public final /* synthetic */ BringIntoViewSpec r;
    public final /* synthetic */ long s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "androidx.compose.foundation.gestures.ContentInViewNode$launchAnimation$2$1", f = "ContentInViewNode.kt", l = {219}, m = "invokeSuspend", v = 1)
    /* renamed from: androidx.compose.foundation.gestures.ContentInViewNode$launchAnimation$2$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2<NestedScrollScope, Continuation<? super Unit>, Object> {
        public int n;
        public /* synthetic */ Object o;
        public final /* synthetic */ UpdatableAnimationState p;
        public final /* synthetic */ ContentInViewNode q;
        public final /* synthetic */ BringIntoViewSpec r;
        public final /* synthetic */ long s;
        public final /* synthetic */ Job t;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(UpdatableAnimationState updatableAnimationState, ContentInViewNode contentInViewNode, BringIntoViewSpec bringIntoViewSpec, long j, Job job, Continuation continuation) {
            super(2, continuation);
            this.p = updatableAnimationState;
            this.q = contentInViewNode;
            this.r = bringIntoViewSpec;
            this.s = j;
            this.t = job;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            return ((AnonymousClass1) s((NestedScrollScope) obj, (Continuation) obj2)).v(Unit.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.p, this.q, this.r, this.s, this.t, continuation);
            anonymousClass1.o = obj;
            return anonymousClass1;
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
                NestedScrollScope nestedScrollScope = (NestedScrollScope) this.o;
                long j = this.s;
                ContentInViewNode contentInViewNode = this.q;
                BringIntoViewSpec bringIntoViewSpec = this.r;
                float Y0 = ContentInViewNode.Y0(contentInViewNode, bringIntoViewSpec, j);
                UpdatableAnimationState updatableAnimationState = this.p;
                updatableAnimationState.e = Y0;
                p2 p2Var = new p2(contentInViewNode, updatableAnimationState, this.t, nestedScrollScope);
                n1 n1Var = new n1(contentInViewNode, updatableAnimationState, bringIntoViewSpec, 3);
                this.n = 1;
                if (updatableAnimationState.a(p2Var, n1Var, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return Unit.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContentInViewNode$launchAnimation$2(ContentInViewNode contentInViewNode, UpdatableAnimationState updatableAnimationState, BringIntoViewSpec bringIntoViewSpec, long j, Continuation continuation) {
        super(2, continuation);
        this.p = contentInViewNode;
        this.q = updatableAnimationState;
        this.r = bringIntoViewSpec;
        this.s = j;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((ContentInViewNode$launchAnimation$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        ContentInViewNode$launchAnimation$2 contentInViewNode$launchAnimation$2 = new ContentInViewNode$launchAnimation$2(this.p, this.q, this.r, this.s, continuation);
        contentInViewNode$launchAnimation$2.o = obj;
        return contentInViewNode$launchAnimation$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        ContentInViewNode contentInViewNode = this.p;
        BringIntoViewRequestPriorityQueue bringIntoViewRequestPriorityQueue = contentInViewNode.C;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        try {
            try {
                if (i != 0) {
                    if (i == 1) {
                        ResultKt.b(obj);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    Job d = JobKt.d(((CoroutineScope) this.o).getCoroutineContext());
                    contentInViewNode.F = true;
                    ScrollingLogic scrollingLogic = contentInViewNode.y;
                    MutatePriority mutatePriority = MutatePriority.j;
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.q, contentInViewNode, this.r, this.s, d, null);
                    this.n = 1;
                    if (scrollingLogic.g(mutatePriority, anonymousClass1, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                bringIntoViewRequestPriorityQueue.b();
                contentInViewNode.F = false;
                bringIntoViewRequestPriorityQueue.a(null);
                contentInViewNode.D = false;
                return Unit.a;
            } catch (CancellationException e) {
                throw e;
            }
        } catch (Throwable th) {
            contentInViewNode.F = false;
            bringIntoViewRequestPriorityQueue.a(null);
            contentInViewNode.D = false;
            throw th;
        }
    }
}
