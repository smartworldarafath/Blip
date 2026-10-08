package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.AbstractClickableNode$handlePressInteractionRelease$1$1", f = "Clickable.kt", l = {2085, 2090, 2091}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class AbstractClickableNode$handlePressInteractionRelease$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public PressInteraction.Release n;
    public int o;
    public final /* synthetic */ Job p;
    public final /* synthetic */ long q;
    public final /* synthetic */ MutableInteractionSource r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractClickableNode$handlePressInteractionRelease$1$1(Job job, long j, MutableInteractionSource mutableInteractionSource, Continuation continuation) {
        super(2, continuation);
        this.p = job;
        this.q = j;
        this.r = mutableInteractionSource;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((AbstractClickableNode$handlePressInteractionRelease$1$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new AbstractClickableNode$handlePressInteractionRelease$1$1(this.p, this.q, this.r, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0053, code lost:
    
        if (r2.a(r1, r8) == r0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0055, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0048, code lost:
    
        if (r2.a(r9, r8) == r0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0031, code lost:
    
        if (r8.p.O(r8) == r0) goto L20;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        PressInteraction.Release release;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.o;
        MutableInteractionSource mutableInteractionSource = this.r;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        ResultKt.b(obj);
                        return Unit.a;
                    }
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                release = this.n;
                ResultKt.b(obj);
                this.n = null;
                this.o = 3;
            } else {
                ResultKt.b(obj);
            }
        } else {
            ResultKt.b(obj);
            this.o = 1;
        }
        PressInteraction.Press press = new PressInteraction.Press(this.q);
        release = new PressInteraction.Release(press);
        this.n = release;
        this.o = 2;
    }
}
