package defpackage;

import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.foundation.gestures.UpdatableAnimationState;
import androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope;
import androidx.compose.foundation.text.AndroidCursorHandle_androidKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScopeKt$asDrawTransform$1;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class z0 implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ float k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;

    public /* synthetic */ z0(UpdatableAnimationState updatableAnimationState, float f, Function1 function1) {
        this.j = 2;
        this.l = updatableAnimationState;
        this.k = f;
        this.m = function1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x008b, code lost:
    
        if (r0 > r4) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x008d, code lost:
    
        r2 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x008f, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a5, code lost:
    
        if (r0 < r4) goto L18;
     */
    @Override // kotlin.jvm.functions.Function1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(Object obj) {
        float floatValue;
        long c;
        int i = this.j;
        Unit unit = Unit.a;
        float f = 0.0f;
        Object obj2 = this.m;
        float f2 = this.k;
        Object obj3 = this.l;
        switch (i) {
            case 0:
                ImageBitmap imageBitmap = (ImageBitmap) obj3;
                BlendModeColorFilter blendModeColorFilter = (BlendModeColorFilter) obj2;
                float f3 = AndroidCursorHandle_androidKt.a;
                LayoutNodeDrawScope layoutNodeDrawScope = (LayoutNodeDrawScope) ((ContentDrawScope) obj);
                layoutNodeDrawScope.a();
                CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.j;
                CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1 = canvasDrawScope.k;
                long d = canvasDrawScope$drawContext$1.d();
                canvasDrawScope$drawContext$1.a().g();
                try {
                    CanvasDrawScopeKt$asDrawTransform$1 canvasDrawScopeKt$asDrawTransform$1 = canvasDrawScope$drawContext$1.a;
                    canvasDrawScopeKt$asDrawTransform$1.c(f2, 0.0f);
                    Canvas a = canvasDrawScopeKt$asDrawTransform$1.a.a();
                    a.o(Float.intBitsToFloat(0), Float.intBitsToFloat(0));
                    a.p();
                    a.o(-Float.intBitsToFloat(0), -Float.intBitsToFloat(0));
                    canvasDrawScope.d(imageBitmap, blendModeColorFilter);
                    return unit;
                } finally {
                    q.v(canvasDrawScope$drawContext$1, d);
                }
            case 1:
                Ref$FloatRef ref$FloatRef = (Ref$FloatRef) obj3;
                LazyLayoutScrollScope lazyLayoutScrollScope = (LazyLayoutScrollScope) obj2;
                AnimationScope animationScope = (AnimationScope) obj;
                if (f2 > 0.0f) {
                    floatValue = ((Number) ((SnapshotMutableStateImpl) animationScope.e).getValue()).floatValue();
                    break;
                } else if (f2 < 0.0f) {
                    floatValue = ((Number) ((SnapshotMutableStateImpl) animationScope.e).getValue()).floatValue();
                    break;
                }
                float f4 = f - ref$FloatRef.j;
                if (f4 != lazyLayoutScrollScope.f(f4) || f != ((Number) ((SnapshotMutableStateImpl) animationScope.e).getValue()).floatValue()) {
                    animationScope.a();
                }
                ref$FloatRef.j += f4;
                return unit;
            default:
                UpdatableAnimationState updatableAnimationState = (UpdatableAnimationState) obj3;
                Function1 function1 = (Function1) obj2;
                long longValue = ((Long) obj).longValue();
                if (updatableAnimationState.b == Long.MIN_VALUE) {
                    updatableAnimationState.b = longValue;
                }
                float f5 = updatableAnimationState.e;
                AnimationVector1D animationVector1D = new AnimationVector1D(f5);
                AnimationVector1D animationVector1D2 = UpdatableAnimationState.f;
                if (f2 == 0.0f) {
                    c = updatableAnimationState.a.b(new AnimationVector1D(f5), animationVector1D2, updatableAnimationState.c);
                } else {
                    c = MathKt.c(((float) (longValue - updatableAnimationState.b)) / f2);
                }
                long j = c;
                float f6 = ((AnimationVector1D) updatableAnimationState.a.f(j, animationVector1D, animationVector1D2, updatableAnimationState.c)).a;
                updatableAnimationState.c = (AnimationVector1D) updatableAnimationState.a.c(j, animationVector1D, animationVector1D2, updatableAnimationState.c);
                updatableAnimationState.b = longValue;
                float f7 = updatableAnimationState.e - f6;
                updatableAnimationState.e = f6;
                function1.b(Float.valueOf(f7));
                return unit;
        }
    }

    public /* synthetic */ z0(float f, Object obj, Object obj2, int i) {
        this.j = i;
        this.k = f;
        this.l = obj;
        this.m = obj2;
    }
}
