package defpackage;

import androidx.compose.material.SwitchKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.unit.IntOffset;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class hc implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Function0 k;

    public /* synthetic */ hc(int i, Function0 function0) {
        this.j = i;
        this.k = function0;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        final Function0 function0 = this.k;
        switch (i) {
            case 0:
                ((DisposableEffectScope) obj).getClass();
                return new DisposableEffectResult() { // from class: net.blip.shared.OnDisposeKt$OnDispose$lambda$0$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void a() {
                        Function0.this.a();
                    }
                };
            case 1:
                float f = SwitchKt.a;
                return new IntOffset(MathKt.b(((Number) function0.a()).floatValue()) << 32);
            default:
                return (Offset) function0.a();
        }
    }
}
