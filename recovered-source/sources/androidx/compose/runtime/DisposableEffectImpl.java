package androidx.compose.runtime;

import kotlin.jvm.functions.Function1;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DisposableEffectImpl implements RememberObserver {
    public final Function1 j;
    public DisposableEffectResult k;

    public DisposableEffectImpl(Function1 function1) {
        this.j = function1;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void b() {
        DisposableEffectResult disposableEffectResult = this.k;
        if (disposableEffectResult != null) {
            disposableEffectResult.a();
        }
        this.k = null;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void c() {
        this.k = (DisposableEffectResult) this.j.b(EffectsKt.a);
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void a() {
    }
}
