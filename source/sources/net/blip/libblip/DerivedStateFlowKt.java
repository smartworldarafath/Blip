package net.blip.libblip;

import defpackage.p0;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.flow.StateFlow;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DerivedStateFlowKt {
    public static final DerivedStateFlow a(StateFlow stateFlow, Function1 function1) {
        stateFlow.getClass();
        return new DerivedStateFlow(new p0(12, function1, stateFlow), new DerivedStateFlowKt$derive$$inlined$map$1(stateFlow, function1));
    }
}
