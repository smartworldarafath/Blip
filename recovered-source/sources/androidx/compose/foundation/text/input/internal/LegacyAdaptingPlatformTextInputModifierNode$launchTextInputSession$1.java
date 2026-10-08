package androidx.compose.foundation.text.input.internal;

import androidx.compose.ui.platform.PlatformTextInputModifierNodeKt;
import defpackage.f7;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.text.input.internal.LegacyAdaptingPlatformTextInputModifierNode$launchTextInputSession$1", f = "LegacyAdaptingPlatformTextInputModifierNode.kt", l = {137}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class LegacyAdaptingPlatformTextInputModifierNode$launchTextInputSession$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ LegacyAdaptingPlatformTextInputModifierNode o;
    public final /* synthetic */ Function2 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LegacyAdaptingPlatformTextInputModifierNode$launchTextInputSession$1(LegacyAdaptingPlatformTextInputModifierNode legacyAdaptingPlatformTextInputModifierNode, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.o = legacyAdaptingPlatformTextInputModifierNode;
        this.p = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        ((LegacyAdaptingPlatformTextInputModifierNode$launchTextInputSession$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
        return CoroutineSingletons.j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new LegacyAdaptingPlatformTextInputModifierNode$launchTextInputSession$1(this.o, this.p, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i != 1) {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            f7.h();
            return null;
        }
        ResultKt.b(obj);
        this.n = 1;
        PlatformTextInputModifierNodeKt.a(this.o, this.p, this);
        return coroutineSingletons;
    }
}
