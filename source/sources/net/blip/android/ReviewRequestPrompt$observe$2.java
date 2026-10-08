package net.blip.android;

import android.app.Activity;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.StateFlow;
import net.blip.libblip.frontend.State;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ReviewRequestPrompt$observe$2", f = "ReviewRequestPrompt.kt", l = {35, 41}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class ReviewRequestPrompt$observe$2 extends SuspendLambda implements Function2<State, Continuation<? super Unit>, Object> {
    public long n;
    public int o;
    public /* synthetic */ Object p;
    public final /* synthetic */ ReviewRequestPrompt q;
    public final /* synthetic */ StateFlow r;
    public final /* synthetic */ Activity s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReviewRequestPrompt$observe$2(ReviewRequestPrompt reviewRequestPrompt, StateFlow stateFlow, Activity activity, Continuation continuation) {
        super(2, continuation);
        this.q = reviewRequestPrompt;
        this.r = stateFlow;
        this.s = activity;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((ReviewRequestPrompt$observe$2) s((State) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        ReviewRequestPrompt$observe$2 reviewRequestPrompt$observe$2 = new ReviewRequestPrompt$observe$2(this.q, this.r, this.s, continuation);
        reviewRequestPrompt$observe$2.p = obj;
        return reviewRequestPrompt$observe$2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x003c, code lost:
    
        if (kotlinx.coroutines.DelayKt.b(r8, r14) == r1) goto L24;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        long longValue;
        State state = (State) this.p;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.o;
        Unit unit = Unit.a;
        ReviewRequestPrompt reviewRequestPrompt = this.q;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    ResultKt.b(obj);
                    return unit;
                }
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            longValue = this.n;
            ResultKt.b(obj);
        } else {
            ResultKt.b(obj);
            Long a = ReviewRequestPrompt.a(reviewRequestPrompt, state);
            if (a != null) {
                longValue = a.longValue();
                this.p = null;
                this.n = longValue;
                this.o = 1;
            }
            return unit;
        }
        Long a2 = ReviewRequestPrompt.a(reviewRequestPrompt, (State) this.r.getValue());
        if (a2 != null && a2.longValue() == 0) {
            this.p = null;
            this.n = longValue;
            this.o = 2;
            if (ReviewRequestPrompt.b(reviewRequestPrompt, this.s, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return unit;
    }
}
