package defpackage;

import androidx.compose.material.ProgressIndicatorKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.layout.Placeable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;
import net.blip.libblip.Platform;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class lb implements Function1 {
    public final /* synthetic */ int j = 1;
    public final /* synthetic */ float k;
    public final /* synthetic */ long l;
    public final /* synthetic */ long m;
    public final /* synthetic */ Object n;

    public /* synthetic */ lb(float f, long j, Stroke stroke, long j2) {
        this.k = f;
        this.l = j;
        this.n = stroke;
        this.m = j2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        Unit unit = Unit.a;
        Object obj2 = this.n;
        final float f = this.k;
        switch (i) {
            case 0:
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                placementScope.getClass();
                long j = this.l;
                float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
                long j2 = this.m;
                float intBitsToFloat2 = (intBitsToFloat - Float.intBitsToFloat((int) (j2 >> 32))) / 2.0f;
                float intBitsToFloat3 = (Float.intBitsToFloat((int) (j & 4294967295L)) - Float.intBitsToFloat((int) (j2 & 4294967295L))) / 2.0f;
                Function1 function1 = new Function1() { // from class: mb
                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj3) {
                        GraphicsLayerScope graphicsLayerScope = (GraphicsLayerScope) obj3;
                        graphicsLayerScope.getClass();
                        ReusableGraphicsLayerScope reusableGraphicsLayerScope = (ReusableGraphicsLayerScope) graphicsLayerScope;
                        float f2 = f;
                        reusableGraphicsLayerScope.g(f2);
                        reusableGraphicsLayerScope.h(f2);
                        return Unit.a;
                    }
                };
                Platform.j.getClass();
                placementScope.m((Placeable) obj2, MathKt.b(intBitsToFloat2), MathKt.b(intBitsToFloat3), function1);
                return unit;
            default:
                Stroke stroke = (Stroke) obj2;
                DrawScope drawScope = (DrawScope) obj;
                ProgressIndicatorKt.c(drawScope, 0.0f, 360.0f, this.l, stroke);
                ProgressIndicatorKt.c(drawScope, 270.0f, f * 360.0f, this.m, stroke);
                return unit;
        }
    }

    public /* synthetic */ lb(Placeable placeable, long j, long j2, float f) {
        this.n = placeable;
        this.l = j;
        this.m = j2;
        this.k = f;
    }
}
