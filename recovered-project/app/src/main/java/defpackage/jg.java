package defpackage;

import androidx.compose.animation.core.AnimationState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class jg implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ AnimationState k;

    public /* synthetic */ jg(int i, AnimationState animationState) {
        this.j = i;
        this.k = animationState;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i = this.j;
        Unit unit = Unit.a;
        AnimationState animationState = this.k;
        switch (i) {
            case 0:
                animationState.o = false;
                return unit;
            default:
                animationState.o = false;
                return unit;
        }
    }
}
