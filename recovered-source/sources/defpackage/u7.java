package defpackage;

import androidx.compose.material.SwitchKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.blip.shared.DisabledContentKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class u7 implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ State k;

    public /* synthetic */ u7(State state, int i) {
        this.j = i;
        this.k = state;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        Unit unit = Unit.a;
        State state = this.k;
        switch (i) {
            case 0:
                GraphicsLayerScope graphicsLayerScope = (GraphicsLayerScope) obj;
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = DisabledContentKt.a;
                graphicsLayerScope.getClass();
                ((ReusableGraphicsLayerScope) graphicsLayerScope).b(((Number) state.getValue()).floatValue());
                return unit;
            case 1:
                DrawScope drawScope = (DrawScope) obj;
                float f = SwitchKt.a;
                long j = ((Color) state.getValue()).a;
                float i0 = drawScope.i0(34.0f);
                float i02 = drawScope.i0(14.0f);
                float intBitsToFloat = Float.intBitsToFloat((int) (drawScope.B0() & 4294967295L));
                long floatToRawIntBits = (Float.floatToRawIntBits(r13) << 32) | (Float.floatToRawIntBits(intBitsToFloat) & 4294967295L);
                float f2 = i0 - (i02 / 2.0f);
                float intBitsToFloat2 = Float.intBitsToFloat((int) (drawScope.B0() & 4294967295L));
                drawScope.v(i02, j, floatToRawIntBits, (Float.floatToRawIntBits(f2) << 32) | (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L));
                return unit;
            default:
                GraphicsLayerScope graphicsLayerScope2 = (GraphicsLayerScope) obj;
                graphicsLayerScope2.getClass();
                ((ReusableGraphicsLayerScope) graphicsLayerScope2).b(((Number) state.getValue()).floatValue());
                return unit;
        }
    }
}
