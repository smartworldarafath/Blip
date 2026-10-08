package net.blip.libblip;

import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.libblip.DerivedStateFlow", f = "DerivedStateFlow.kt", l = {25}, m = "collect", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class DerivedStateFlow$collect$1 extends ContinuationImpl {
    public /* synthetic */ Object m;
    public final /* synthetic */ DerivedStateFlow n;
    public int o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DerivedStateFlow$collect$1(DerivedStateFlow derivedStateFlow, Continuation continuation) {
        super(continuation);
        this.n = derivedStateFlow;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.m = obj;
        this.o |= Integer.MIN_VALUE;
        this.n.a(null, this);
        return CoroutineSingletons.j;
    }
}
