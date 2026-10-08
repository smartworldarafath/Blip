package net.blip.android.ui.home;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ui.home.PeerTrayCellsKt$PeerTrayBaseCell$5$1$1", f = "PeerTrayCells.kt", l = {64, 66}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class PeerTrayCellsKt$PeerTrayBaseCell$5$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ Function1 o;
    public final /* synthetic */ Function0 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PeerTrayCellsKt$PeerTrayBaseCell$5$1$1(Function1 function1, Function0 function0, Continuation continuation) {
        super(2, continuation);
        this.o = function1;
        this.p = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((PeerTrayCellsKt$PeerTrayBaseCell$5$1$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new PeerTrayCellsKt$PeerTrayBaseCell$5$1$1(this.o, this.p, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003d, code lost:
    
        if (kotlinx.coroutines.DelayKt.b(100, r6) == r0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003f, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002d, code lost:
    
        if (kotlinx.coroutines.DelayKt.b(160, r6) == r0) goto L15;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        Function1 function1 = this.o;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    ResultKt.b(obj);
                    function1.b(Boolean.FALSE);
                    return Unit.a;
                }
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        } else {
            ResultKt.b(obj);
            function1.b(Boolean.TRUE);
            this.n = 1;
        }
        this.p.a();
        this.n = 2;
    }
}
