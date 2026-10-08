package defpackage;

import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.vector.GroupComponent;
import androidx.compose.ui.graphics.vector.VectorComponent;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class hi implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ VectorComponent k;

    public /* synthetic */ hi(VectorComponent vectorComponent, int i) {
        this.j = i;
        this.k = vectorComponent;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        Unit unit = Unit.a;
        VectorComponent vectorComponent = this.k;
        switch (i) {
            case 0:
                vectorComponent.d = true;
                vectorComponent.f.a();
                return unit;
            default:
                DrawScope drawScope = (DrawScope) obj;
                GroupComponent groupComponent = vectorComponent.b;
                float f = vectorComponent.k;
                float f2 = vectorComponent.l;
                CanvasDrawScope$drawContext$1 l0 = drawScope.l0();
                long d = l0.d();
                l0.a().g();
                try {
                    l0.a.b(f, f2, 0L);
                    groupComponent.a(drawScope);
                    return unit;
                } finally {
                    q.v(l0, d);
                }
        }
    }
}
